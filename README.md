# 毕业生去向工作台（Graduate Outcomes Dashboard）

Class of 2024-2026 海外大学升学录取数据可视化工作台。

## 特性
- 深红 + 白主题，响应式，桌面/手机皆可
- PWA：可安装到主屏幕，首次打开后断网可用
- 数据自动保存到浏览器 localStorage，关闭再打开不丢
- 管理员模式：点击右上角 🔒 输入访问码后可编辑；默认访客只读

## 修改访问码
打开 `index.html`，找到 `const ADMIN_PASS = 'tbicc';` 改成你自己的密码。

## 本地预览
```bash
python3 -m http.server 8080
# 访问 http://localhost:8080/
```

## GitHub Pages 部署
1. 把本文件夹内容上传到 GitHub 仓库。
2. Settings → Pages → Source 选 `main` 分支根目录。
3. 访问 `https://<你的用户名>.github.io/<仓库名>/`。

## 编辑数据
管理员登录后，点击地图气泡或汇总表行，即可在详情面板里改人数、改校名、新增/删除院校。所有改动自动保存到本机浏览器。
