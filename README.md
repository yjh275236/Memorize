# Memorize 记忆游戏

一个使用 SwiftUI 开发的记忆卡片游戏学习项目。

## 项目简介

这是一个用于学习 Swift 和 SwiftUI 的记忆游戏项目。玩家需要通过翻牌找到匹配的卡片对来锻炼记忆力。

## 项目结构

```
Memorize/
├── Memorize/
│   ├── MemorizeApp.swift      # 应用入口
│   ├── ContentView.swift      # 主视图和卡片视图
│   └── Assets.xcassets/       # 资源文件
├── MemorizeTests/             # 单元测试
└── MemorizeUITests/           # UI 测试
```

## 主要功能

### 当前实现

- **卡片展示**：使用 SwiftUI 展示多个记忆卡片
- **卡片翻转**：支持点击卡片进行翻转（正面/背面）
- **表情符号卡片**：使用表情符号作为卡片内容
  - 👌、❤️、😳、😉

### 核心组件

#### ContentView
- 主视图，包含多个卡片的横向布局
- 使用 `HStack` 和 `ForEach` 动态生成卡片
- 使用橙色作为主题色

#### CardView
- 可复用的卡片视图组件
- 使用 `@State` 管理卡片翻转状态
- 支持正面（显示内容）和背面（纯色）两种状态
- 使用 `RoundedRectangle` 实现圆角矩形样式

## 技术要点

本项目用于学习以下 Swift/SwiftUI 概念：

1. **Swift 语法**
   - 数组声明：`let emojis = [...]`
   - 区间操作符：`0..<4` vs `0...4`
   - 类型推断

2. **SwiftUI 基础**
   - `View` 协议
   - `@State` 属性包装器
   - `HStack` 布局容器
   - `ForEach` 循环渲染
   - `ZStack` 层级叠加
   - `RoundedRectangle` 形状绘制

3. **状态管理**
   - 使用 `@State` 管理视图内部状态
   - 响应式 UI 更新

## 运行要求

- **开发环境**：Xcode 15.0 或更高版本
- **部署目标**：iOS 17.0 或更高版本
- **语言**：Swift 5.9+

## 如何运行

1. 使用 Xcode 打开 `Memorize.xcodeproj`
2. 选择目标设备或模拟器
3. 点击运行按钮（⌘R）或按快捷键运行项目

## 未来改进方向

- [ ] 实现卡片匹配逻辑
- [ ] 添加游戏分数系统
- [ ] 增加难度级别（卡片数量）
- [ ] 添加动画效果（翻转动画）
- [ ] 实现计时功能
- [ ] 添加游戏结束判定
- [ ] 优化 UI 设计和交互体验

## 学习笔记

### Swift 数组类型声明方式对比

```swift
// 方式 1：显式类型声明
let emojis: [String] = ["👌","❤️","😳","😉"]

// 方式 2：使用 Array 泛型
let emojis: Array<String> = ["👌","❤️","😳","😉"]

// 方式 3：类型推断（推荐）
let emojis = ["👌","❤️","😳","😉"]
```

### 区间操作符

- `0..<4`：半开区间，包含 0, 1, 2, 3（不包含 4）
- `0...4`：闭区间，包含 0, 1, 2, 3, 4

### ForEach 使用

```swift
ForEach(emojis.indices, id: \.self) { index in
    CardView(content: emojis[index])
}
```

## 作者

YJH - 创建于 2025年4月16日

## 许可证

本项目为学习项目，仅供学习交流使用。

