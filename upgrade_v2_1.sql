-- 出海工作资源助手 V2.1 升级 SQL
-- 在 Supabase SQL Editor 里执行一次即可
-- 用于增加客户跟进状态、后台备注等字段

alter table public.applications
add column if not exists status text default '未联系';

alter table public.applications
add column if not exists admin_note text default '';

-- 允许前端更新客户状态和跟进备注
drop policy if exists "allow update applications" on public.applications;
create policy "allow update applications"
on public.applications
for update
to anon
using (true)
with check (true);
