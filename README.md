| Supported Targets | ESP32-S3 |
| ----------------- | -------- |

# 使用 SPI 屏和 I2C 触屏运行 SquareLine Studio 提供的手表 UI 示例

本示例基于 ESP-IDF 驱动带有触摸功能的 SPI 屏（P169H002），并初始化了 LVGL 图形库。最后运行了 SquareLine Studio 自带的手表 UI 示例作为展示。

# 示例使用说明

## **准备硬件**

  - **ESP32-S3** 开发板，如 [ESP32-S3-DevKitC-1](https://item.taobao.com/item.htm?spm=a1z10.5-c.w4002-8715811636.11.196b67d8NQrAXX&id=653155344338)
  - **USB 数据线** （A 转 Micro-B）
  - 电脑（Windows、Linux 或 macOS）
  - 杜邦线
  - SPI 屏（P169H002）
  - FPC 转接板（18 PIN 以上）
  - 面包板（用于为屏幕连接 VDD 和 GND）

## **搭建开发环境**

### **安装 VSCode**

- 如果你还没有安装 VSCode，请先下载并安装它。

1. 从 [VSCode 官网](https://code.visualstudio.com/Download) 获取安装包 
2. 使用下载的 `.exe`文件，一键安装 VSCode

### **安装 ESP-IDF 插件**

- 更详细的安装流程可以参考 [乐鑫 B 站教学视频](https://www.bilibili.com/video/BV1V24y1T75n/)

1. 在 VSCode 界面左边进入插件管理界面，搜索 esp-idf，点击下载带有乐鑫图标的插件
2. 通过左上角的 `view` 打开命令面板，搜索 configure 然后打开安装配置界面
3. 选择 EXPRESS 使用快速安装模式进行安装，更详细的过程和配置请参考 [乐鑫 B 站教学视频](https://www.bilibili.com/video/BV1V24y1T75n/)

# **配置项目**

## 硬件接线

接线可以根据自己的设计给 ``SPI`` 和 ``I2C`` 分配管脚。注意尽量不要去占用 Strapping 管脚，确保系统的正常启动和配置。

可以参考本示例的管脚分配：

| 屏幕管脚 | ESP32-S3 管脚 |
|---------|--------------|
| 1 | GND          |
| 2（Backlight） | GND          |
| 3 | VDD          |
| 4 | VDD          |
| 5 | GND          |
| 6 | GND          |
| 7（SPI D/C） | GPIO 9   |
| 8（SPI CS）  | GPIO 10  |
| 9（SPI SCL） | GPIO 11  |
| 10（SPI SDA） | GPIO 12 |
| 11（SPI RESET） | GPIO 13 |
| 12 | GND          |
| 13（I2C TP_SCL） | GPIO 4 |
| 14（I2C TP_SDA） | GPIO 5 |
| 15（I2C TP_RST） | GPIO 6 |
| 16（I2C TP_TINT） | GPIO 7 |
| 17 | VDD          |
| 18 | GND          |

## 检查导通性（推荐）

建议给开发板上电后用万用表检查 FPC 转接板连接的 GND 之间是否导通，确保连接准确可靠。确认连接没问题后再将屏幕连接到转接板。

## **编译和烧录**

- 参考 [ESP-IDF VSCode 开发 【沉浸式教程】](https://www.bilibili.com/video/BV1X34y1M7L8/) 将代码烧录到开发板

# 示例输出

```shell
I (402) app_start: Starting scheduler on CPU0
I (407) app_start: Starting scheduler on CPU1
I (407) main_task: Started on CPU0
I (417) main_task: Calling app_main()
I (417) main: Initialize SPI bus
I (427) main: Install panel IO
I (427) gpio: GPIO[9]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0 
I (437) main: Install ili9341 panel driver
I (447) gpio: GPIO[13]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0 
I (447) ili9341: LCD panel create success, version: 1.2.0
I (697) main: Initialize I2C bus
I (697) main: Initialize touch component
I (697) gpio: GPIO[7]| InputEn: 1| OutputEn: 0| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:2 
I (697) gpio: GPIO[6]| InputEn: 0| OutputEn: 1| OpenDrain: 0| Pullup: 0| Pulldown: 0| Intr:0 
I (1107) CST816S: IC id: 181
I (1107) main: Initialize LVGL
I (1107) main: Register display driver to LVGL
I (1107) main: Register touch driver to LVGL
I (1107) main: Install LVGL tick timer
I (1117) main: Run LVGL Task
I (1117) main: Starting LVGL task
I (1117) main: Display LVGL UI
I (1217) main_task: Returned from app_main()
```

# 故障排除

程序上传失败
- 硬件连接不正确，检查 **COM 端口** 和 **USB 驱动**

# 技术支持和反馈

- 对于技术问题，请访问 [esp32.com](https://esp32.com/) 论坛
- 对于功能请求或错误报告，请创建 [GitHub issue](https://github.com/espressif/esp-idf/issues) 问题

