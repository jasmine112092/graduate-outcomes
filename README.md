# 毕业生去向工作台（Graduate Outcomes Dashboard）

Class of 2024-2026 海外大学升学录取数据可视化工作台。

- 深红 + 白主题，响应式，桌面/手机皆可
- PWA：可安装到主屏幕，首次打开后断网可用
- 数据自动保存到浏览器 localStorage，关闭再打开不丢
- 支持编辑录取人数、修改校名、新增/删除院校、筛选与排序

## 目录结构

```
graduate-outcomes-dashboard/
├── index.html            # 主页面（工作台）
├── manifest.webmanifest  # PWA 清单
├── sw.js                 # Service Worker（离线缓存）
├── icons/                # App 图标（深红底白字「毕业生」）
└── libs/
    ├── world_map.svg     # 本地世界地图（离线渲染）
    └── chart.umd.js      # 本地图表库（Chart.js）
```

## 本地预览

任选其一：

- 直接用浏览器打开 `index.html`（文件路径均为相对路径，离线可用）
- 或起一个本地服务器后访问：`python3 -m http.server 8080`

## 部署到 GitHub Pages（推荐，可分享固定链接）

1. 将本目录上传为一个 GitHub 仓库（例如 `graduate-outcomes-dashboard`）。
2. 在仓库 **Settings → Pages** 中，将 Source 设为 `main` 分支的根目录，保存。
3. 等待片刻，即可通过 `https://<你的用户名>.github.io/graduate-outcomes-dashboard/` 访问。
4. 首次访问后即可「安装到主屏幕」并离线使用。

## 数据说明

- 数据内嵌于 `index.html` 的 `DEFAULT_COUNTRIES`，按国家/地区收录录取大学与人数。
- 所有编辑保存在当前浏览器的 `localStorage`（键 `gradDestWorkbench.v1`），不会上传服务器。
- 点击「恢复默认」可回到初始数据。

## 修改数据

打开 `index.html`，找到 `const DEFAULT_COUNTRIES = [...]`，按以下格式编辑：

```js
{
  "country": "US",
  "continent": "North America",
  "lat": 37.09,
  "lon": -95.71,
  "schools": [ { "name": "某大学", "count": 10 } ]
}
```

> `lat` / `lon` 是国家在地图上的气泡坐标，`count` 为录取人数。
