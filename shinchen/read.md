# 蠟筆小新圖案繪製作品

## 作品簡介

本專案是一個以 **SwiftUI** 製作的靜態繪圖練習。畫面中的蠟筆小新不是由圖片或外部素材呈現，而是使用 SwiftUI 內建的幾何形狀，透過多層堆疊、調整尺寸、旋轉與位移，手動拼組出人物的身體、服裝、臉部與五官。

這種做法的重點在於理解 SwiftUI 的排版系統與圖形 API：每一個部分都是獨立的 View，可以分別調整後再組合成完整畫面。

## 執行環境

- 語言：Swift
- UI 框架：SwiftUI
- 專案類型：iOS App
- 主要畫面：`ContentView.swift`
- App 進入點：`MyApp.swift`

## 程式結構

### `MyApp.swift`

`MyApp` 標記為 `@main`，是 App 的進入點。它建立 `WindowGroup`，並將 `ContentView` 放入視窗中，因此 App 啟動後會直接顯示繪製完成的人物畫面。

### `ContentView.swift`

`ContentView` 遵守 SwiftUI 的 `View` 協定，所有繪圖內容都寫在 `body` 中。最外層使用 `ZStack`，讓每個區塊依照程式撰寫順序由後往前重疊。

大致的圖層順序為：

1. 淡粉色背景。
2. 腳部與褲子。
3. 身體、衣服與手部。
4. 頭部、耳朵與臉部輪廓。
5. 眉毛、眼睛、嘴巴、腮紅等五官細節。

後宣告的 View 會顯示在較上層，因此可用額外的形狀遮住不需要的邊線或接縫，讓畫面看起來更完整。

## 使用的繪圖元件

| 元件 | 用途 |
|---|---|
| `ZStack` | 疊放各個人物部位與背景。 |
| `RoundedRectangle` | 繪製褲管與衣服等具有圓角的區塊。 |
| `UnevenRoundedRectangle` | 繪製左右腳與臉部等需要不同角落弧度的外型。 |
| `Rectangle` | 搭配裁切與旋轉，形成褲子上的幾何圖案。 |
| `Circle` | 繪製眼睛反光、衣服上的圓形圖案等。 |
| `Ellipse` | 繪製眼睛、嘴巴、臉部遮罩與曲線細節。 |
| `Capsule` | 繪製手臂、眉毛與腮紅線條。 |

## 重要的版面與造型技巧

### 圖層堆疊：`ZStack`

`ZStack` 是本作品最主要的組合方式。例如褲子區、頭部區都可以各自建立一個內層 `ZStack`，先在局部座標中完成細節，再用一次 `offset` 移到完整人物的正確位置。這樣比把所有形狀直接放在同一層更容易閱讀與調整。

### 尺寸：`frame(width:height:)`

每個形狀都以 `frame` 指定寬高，決定部位的基本比例。例如眼睛使用較高的橢圓、褲管使用不同大小的圓角矩形，使人物維持卡通化的特徵。

### 位置：`offset(x:y:)`

`offset` 負責將形狀從預設中心位置向水平或垂直方向移動。藉由反覆微調 `x`、`y` 數值，手、腳、眼睛與衣服圖案會落在適當的位置。

### 角度：`rotationEffect(.degrees(_:))`

部分部位並非水平或垂直，例如腳、手臂、眉毛與褲子圖案。程式以 `rotationEffect` 將形狀旋轉到適合的角度，增加姿勢與線條的變化。

### 外框：`overlay` 與 `stroke`

多數有顏色的部位會先使用 `foregroundStyle` 填色，再以 `overlay` 疊上相同外型的 `stroke` 或 `strokeBorder`。這會產生黑色外框，模擬卡通人物的線稿效果。

### 局部圖形：`trim(from:to:)`

衣服的部分圖案使用 `trim` 只保留 `Circle` 或 `Rectangle` 路徑的一段，再搭配旋轉與描邊，產生半圓或三角形感的裝飾效果。

## 顏色資源

顏色集中存放在 `Assets.xcassets`，並透過 `Color("名稱")` 讀取。這樣可避免將所有色碼重複寫在畫面程式中，也方便日後統一調整。

目前使用的主要色彩資源包括：

- `skin`：皮膚色，用於臉、手與腳。
- `shirtBlue`：藍色服裝與褲子主色。
- `patternGreen`、`patternYellow`、`patternRed`：服裝上的幾何圖案。
- `mouthRed`：嘴巴內部的紅色。
- `cheekPink`：雙頰的腮紅。

背景則直接使用 RGB 值建立淡粉色 `Color`，並加上 `ignoresSafeArea()` 讓背景延伸到安全區域之外。

## 可延伸的方向

- 將頭、身體、五官拆成獨立的 SwiftUI View，讓 `ContentView` 更精簡。
- 把重複的黑色外框寫成可重用的樣式或 View Modifier。
- 使用 `GeometryReader` 或自訂比例，使畫面在不同螢幕尺寸上自動縮放。
- 為人物加入動畫，例如眨眼、揮手或表情變化。
- 加入按鈕讓使用者切換背景或服裝顏色。

## 如何執行

1. 使用 Xcode 開啟 `shinchen.xcodeproj`。
2. 選擇 iPhone 模擬器或已連接的裝置。
3. 按下 Run 執行專案。
4. App 啟動後即可看到由 SwiftUI 形狀繪製的蠟筆小新圖案。
