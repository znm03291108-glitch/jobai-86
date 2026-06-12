出海工作资源助手 V2.1 正式推广优化版

升级内容：
1. 隐藏顶部“后台记录”入口，普通用户首页看不到后台按钮
2. 底部保留一个很小的“管理入口”，也可用网址 ?admin=1 进入
3. 增加客服联系方式：微信、WhatsApp、Telegram
4. 首页增加热门国家、适合人群、服务流程、免责声明
5. 咨询申请增加：期望工资、是否接受工地/矿山/工厂、语言能力
6. 后台增加客户跟进状态：未联系、已联系、有意向、已推荐、无效
7. 后台增加跟进备注，可保存到 Supabase 云端
8. CSV 导出包含客户状态和跟进备注

部署步骤：
1. 先在 Supabase SQL Editor 执行 upgrade_v2_1.sql
2. 再把 index.html 上传替换 GitHub 仓库里的旧 index.html
3. 等 GitHub Pages 更新后，用 ?v=21 刷新测试

管理入口：
- 页面底部小字“管理入口”
- 或访问：https://你的网址/?admin=1

后台默认密码：123456
在 index.html 中搜索 ADMIN_PASSWORD 可修改。

客服联系方式：
在 index.html 中搜索：
WECHAT_ID
WHATSAPP_URL
TELEGRAM_URL
改成你的真实联系方式。
