-- 出海工作资源助手 V2.4 升级 SQL
-- 增加变现服务字段：咨询服务、付款状态

alter table public.applications
add column if not exists service_name text default '免费咨询';

alter table public.applications
add column if not exists pay_status text default '未付款';

-- V2.2/V2.3 字段兜底
alter table public.applications
add column if not exists customer_tag text default '需跟进';

alter table public.applications
add column if not exists certificate text default '';

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
