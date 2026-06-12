-- 出海工作资源助手 V2 Supabase 建表 SQL
-- 在 Supabase → SQL Editor → New query 中粘贴执行

create table if not exists public.applications (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name text not null,
  contact text not null,
  age text,
  city text,
  passport text,
  country text,
  skill text,
  experience text,
  note text,
  source text default 'web-v2'
);

alter table public.applications enable row level security;

-- 允许网页匿名提交申请
drop policy if exists "allow anonymous insert applications" on public.applications;
create policy "allow anonymous insert applications"
on public.applications
for insert
to anon
with check (true);

-- 允许网页匿名读取后台记录
-- 注意：V2 为了手机端简单部署，后台密码在前端，只是基础保护。
-- 正式运营建议升级 V3：Supabase Auth 登录 + 服务端后台。
drop policy if exists "allow anonymous read applications" on public.applications;
create policy "allow anonymous read applications"
on public.applications
for select
to anon
using (true);

-- 允许网页匿名删除记录
-- 不想让前端删除可不执行这条，或者后续升级服务端权限。
drop policy if exists "allow anonymous delete applications" on public.applications;
create policy "allow anonymous delete applications"
on public.applications
for delete
to anon
using (true);
