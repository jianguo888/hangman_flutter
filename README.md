# Hangman Flutter

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20macOS%20%7C%20Web%20%7C%20Linux%20%7C%20HarmonyOS-orange.svg)](#平台支持)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

一个使用Flutter开发的跨平台Hangman（刽子手）游戏，支持多个平台，采用响应式设计。

## 平台支持

本项目支持以下平台：

- 📱 Android
- 📱 iOS
- 🖥️ macOS
- 🌐 Web
- 🐧 Linux
- 🔮 HarmonyOS Next

## 效果

鸿蒙

![image-20250228163112624](/Users/jianguo/Library/Application Support/typora-user-images/image-20250228163112624.png)

## 功能特点

- 🎮 经典的Hangman游戏玩法
- 📱 响应式设计，完美适配各种屏幕尺寸
- 🌈 精美的用户界面
- 🔄 跨平台一致的用户体验
- 🎯 支持触摸和键盘输入
- 🌍 支持多语言

## 环境要求

- Flutter SDK 3.0.0 或更高版本
- Dart SDK 3.0.0 或更高版本
- 对应平台的开发环境：
  - Android Studio / Android SDK (Android开发)
  - Xcode (iOS/macOS开发)
  - Visual Studio Code
  - DevEco Studio (HarmonyOS开发)

## 安装

1. 克隆项目：

```bash
git clone https://gitcode.com/nutpi/hangman_flutter.git
cd hangman_flutter
```

2. 获取依赖：

```bash
flutter pub get
```

## 运行

### Android

```bash
flutter run -d android
```

### iOS

```bash
flutter run -d ios
```

### macOS

```bash
flutter run -d macos
```

### Web

```bash
flutter run -d chrome
```

### Linux

```bash
flutter run -d linux
```

### HarmonyOS

使用DevEco Studio打开项目的`ohos`目录进行构建和运行。

## 响应式设计

本项目采用Flutter的响应式设计框架，确保在不同尺寸的屏幕上都能提供最佳的用户体验：

- 自适应布局
- 灵活的网格系统
- 动态字体大小
- 智能边距调整
- 适配不同设备方向

## 项目结构

```
lib/
├── main.dart              # 应用入口
├── ui/                    # UI相关代码
│   ├── colors.dart        # 颜色定义
│   └── widget/           # 自定义组件
└── utils/                # 工具类
    └── game.dart         # 游戏逻辑
```

## 贡献

欢迎贡献代码！请遵循以下步骤：

1. Fork 本项目
2. 创建您的特性分支 (git checkout -b feature/AmazingFeature)
3. 提交您的更改 (git commit -m 'Add some AmazingFeature')
4. 推送到分支 (git push origin feature/AmazingFeature)
5. 打开一个 Pull Request

## 许可证

本项目基于 MIT 许可证开源 - 查看 [LICENSE](LICENSE) 文件了解更多细节

## 联系方式

如果您有任何问题或建议，请通过以下方式联系我们：

- 提交 Issue
- 发送邮件至：[jianguo@nutpi.net](mailto:jianguo@nutpi.net)

## 致谢

感谢所有为这个项目做出贡献的开发者！