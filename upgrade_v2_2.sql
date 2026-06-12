-- 出海工作资源助手 V2.2 升级 SQL
-- 在 Supabase SQL Editor 里执行一次即可
-- 作用：增加客户标签、证书字段，并允许更新

alter table public.applications
add column if not exists customer_tag text default '需跟进';

alter table public.applications
add column if not exists certificate text default '';

-- V2.1 没执行过的，也一起补上
alter table public.applications
add column if not exists status text default '未联系';

alter table public.applications
add column if not exists admin_note text default '';

drop policy if exists "allow update applications" on public.applications;
create policy "allow update applications"
on public.applications
for update
to anon
using (true)
with check (true);
