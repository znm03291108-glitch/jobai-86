出海工作资源助手 V2 云端客户记录版

文件说明：
1. index.html：上传到 GitHub Pages 的网页文件
2. supabase_applications.sql：复制到 Supabase SQL Editor 执行的建表语句

部署步骤：
1. 先创建 Supabase 项目
2. 打开 SQL Editor，执行 supabase_applications.sql
3. 在 Supabase Project Settings → API 找到：
   - Project URL
   - anon public key
4. 打开 index.html，搜索：
   PASTE_YOUR_SUPABASE_URL_HERE
   PASTE_YOUR_SUPABASE_ANON_KEY_HERE
   替换成你的 Supabase 信息
5. 上传替换 GitHub 仓库里的 index.html
6. 等 GitHub Pages 自动更新后测试

后台默认密码：123456
代码里搜索 ADMIN_PASSWORD 可以修改。
