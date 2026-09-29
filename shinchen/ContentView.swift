import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            //背景顏色
            Color(
                red: 255/255,
                green: 227/255,
                blue: 232/255
            )
            .ignoresSafeArea()
            
            // 左腳
            UnevenRoundedRectangle(
                                topLeadingRadius: 80,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 0
                            )
                .frame(width: 80, height: 35)
                .foregroundStyle(Color("skin"))
                .overlay(
                    UnevenRoundedRectangle(
                                        topLeadingRadius: 50,
                                        bottomLeadingRadius: 10,
                                        bottomTrailingRadius: 10,
                                        topTrailingRadius: 0
                                    )
                        .strokeBorder(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(-10))
                .offset(x: -80, y: 280)
            
            //右腳
            UnevenRoundedRectangle(
                                topLeadingRadius: 0,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 80
                            )
                .frame(width: 80, height: 35)
                .foregroundStyle(Color("skin"))
                .overlay(
                    UnevenRoundedRectangle(
                                        topLeadingRadius: 0,
                                        bottomLeadingRadius: 10,
                                        bottomTrailingRadius: 10,
                                        topTrailingRadius: 80
                                    )
                        .strokeBorder(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(5))
                .offset(x: 76, y: 285)
            
            // 褲子區
        
            
            ZStack {
                
                // 左褲管
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 120, height: 125)
                    .foregroundStyle(Color("shirtBlue"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(20))
                    .offset(x: -52)
                
                
                // 右褲管
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 110, height: 140)
                    .foregroundStyle(Color("shirtBlue"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-10))
                    .offset(x: 52)
                
                
                // 左腿綠色圓形
                Circle()
                    .trim(from: 0.25, to: 0.75)
                    .frame(width: 60, height: 60)
                    .foregroundStyle(Color("patternGreen"))
                    .overlay(
                        Circle()
                            .trim(from: 0.25, to: 0.75)
                            .stroke(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-160))
                    .offset(x: -105, y: -20)
                    
                
                // 右腿黃色方塊
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: 45, height: 55)
                    .foregroundStyle(Color("patternYellow"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-10))
                    .offset(x: 84, y: -5)
                
                
                // 左腿紅色三角圖案
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 40, height: 50)
                    .foregroundStyle(Color("patternRed"))
                    .overlay(
                        Rectangle()
                            .trim(from: 0, to: 0.5)
                            .stroke(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-122))
                    .offset(x: -8, y: 42)
                
                // 三角圖案
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 40, height: 50)
                    .foregroundStyle(Color("patternRed"))
                    .overlay(
                        Rectangle()
                            .trim(from: 0, to: 0.5)
                            .stroke(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-63))
                    .offset(x: 50, y: 68)
                
                // 遮褲縫
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 40)
                    .foregroundStyle(Color("shirtBlue"))
                    .rotationEffect(.degrees(-10))
                    .offset(x: 0, y: -35)
            }
            .offset(x: 5, y: 205)
            
            
            
            // 身體區
            
            //左手
            Capsule()
                .frame(width: 25, height: 46)
                .foregroundStyle(Color("skin"))
                .overlay(
                    Capsule()
                        .stroke(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(12))
                .offset(x: -116, y: 140)
            
            //右手
            Capsule()
                .frame(width: 28, height: 52)
                .foregroundStyle(Color("skin"))
                .overlay(
                    Capsule()
                        .stroke(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(-47))
                .offset(x: 160, y: 100)
            
            ZStack {
                
                // 左手衣服
                RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 150)
                .foregroundStyle(Color("shirtBlue"))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(10))
                .offset(x: -115, y: -31)
                
                // 衣服
                RoundedRectangle(cornerRadius: 10)
                .frame(width: 215, height: 185)
                .foregroundStyle(Color("shirtBlue"))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(-3))
                .offset(x: -10, y: -31)
                
                
                // 左上黃色方塊
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 52, height: 57)
                    .foregroundStyle(Color("patternYellow"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-4))
                    .offset(x: -91, y: -13)
                
                
                // 右黃色方塊
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 72, height: 57)
                    .foregroundStyle(Color("patternYellow"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-3))
                    .offset(x: 50, y: 30)
                
                
                // 綠色圓形
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(Color("patternGreen"))
                    .overlay(
                        Circle()
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .offset(x: 2, y: -43)
                
                // 右手衣服
                RoundedRectangle(cornerRadius: 10)
                .frame(width: 60, height: 140)
                .foregroundStyle(Color("shirtBlue"))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(.black, lineWidth: 4)
                )
                .rotationEffect(.degrees(-40))
                .offset(x: 100, y: -45)
                
                
                // 右肩紅色三角形
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 20, height: 30)
                    .foregroundStyle(Color("patternRed"))
                    .overlay(
                        Rectangle()
                            .trim(from: 0, to: 0.5)
                            .stroke(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(46))
                    .offset(x: -137, y: -30)
                
                
                // 左肩紅色小三角
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 40, height: 50)
                    .foregroundStyle(Color("patternRed"))
                    .overlay(
                        Rectangle()
                            .trim(from: 0, to: 0.5)
                            .stroke(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(178))
                    .offset(x: 122, y: -60)
                
                //遮袖子縫
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 22, height: 37)
                    .foregroundStyle(Color("shirtBlue"))
                    .rotationEffect(.degrees(-3))
                    .offset(x: -115, y: -70)
                
                //遮袖子縫
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 22, height: 97)
                    .foregroundStyle(Color("shirtBlue"))
                    .rotationEffect(.degrees(-30))
                    .offset(x: 50, y: -70)
                
            }
            .offset(x: 10, y: 92)
            
            
            
            // 頭區
            
            ZStack {
                
                // 臉
                Ellipse()
                    .frame(width: 290, height: 165)
                    .foregroundStyle(Color("skin"))
                    .overlay(
                        Ellipse()
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-10))
                    .offset(x: -7, y: 10)
                

                // 額頭
                Ellipse()
                    .frame(width: 250, height: 145)
                    .foregroundStyle(Color("skin"))
                    .overlay(
                        Ellipse()
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-0))
                    .offset(x: 12, y: -60)
                
                //頭髮
                
                Ellipse()
                    .frame(width: 250, height: 102)
                    .foregroundStyle(.black)
                    .offset(x: 10, y: -95)
                
                // 膚色遮住下半部黑色橢圓
                Ellipse()
                    .frame(width: 235, height: 63)
                    .foregroundStyle(Color("skin"))
                    .offset(x: 12, y: -59)
                
                //右邊頭髮
                
                UnevenRoundedRectangle(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 70
                                )
                    .frame(width: 40, height: 120)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(-10))
                    .offset(x: 125, y: -65)
                
                
                // 右耳
                UnevenRoundedRectangle(
                                    topLeadingRadius: 30,
                                    bottomLeadingRadius: 50,
                                    bottomTrailingRadius: 80,
                                    topTrailingRadius: 30
                                )
                    .frame(width: 80, height: 90)
                    .foregroundStyle(Color("skin"))
                    .overlay(
                        UnevenRoundedRectangle(
                                            topLeadingRadius: 30,
                                            bottomLeadingRadius: 50,
                                            bottomTrailingRadius: 80,
                                            topTrailingRadius: 30
                                        )
                            .strokeBorder(.black, lineWidth: 4)
                    )
                    .rotationEffect(.degrees(-150))
                    .offset(x: 120, y: 10)
                
                //遮臉頰中間的框線
                Ellipse()
                    .frame(width: 220, height: 95)
                    .foregroundStyle(Color("skin"))
                    .rotationEffect(.degrees(-0))
                    .offset(x: -5, y: -15)
                
                Ellipse()
                    .frame(width: 50, height: 75)
                    .foregroundStyle(Color("skin"))
                    .rotationEffect(.degrees(-30))
                    .offset(x: 70, y: 20)
                
                
                
                
                // 左側眉毛
                Capsule()
                    .frame(width: 30, height: 73)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(35))
                    .offset(x: -104, y: -81)
                
                
                Capsule()
                    .frame(width: 25, height: 55)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(-70))
                    .offset(x: -70, y: -81)
                
                
                // 右側眉毛
                Capsule()
                    .frame(width: 25, height: 66)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(50))
                    .offset(x: 48, y: -91)
                
                Capsule()
                    .frame(width: 25, height: 55)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(-40))
                    .offset(x: 79, y: -81)
                
                
                // 雙眼皮
                Ellipse()
                    .trim(from: 0.5, to: 1.0)
                    .stroke(.black, lineWidth: 6)
                    .frame(width: 60, height: 50)
                    .rotationEffect(.degrees(-8))
                    .offset(x: -57, y: -35)
                
                Ellipse()
                    .trim(from: 0.5, to: 1.0)
                    .stroke(.black, lineWidth: 6)
                    .frame(width: 70, height: 50)
                    .rotationEffect(.degrees(15))
                    .offset(x: 35, y: -33)
                
                
                // 眼睛
                
                Ellipse()
                    .frame(width: 52, height: 59)
                    .foregroundStyle(.black)
                    .offset(x: -50, y: -10)
                
                
                Ellipse()
                    .frame(width: 54, height: 59)
                    .foregroundStyle(.black)
                    .offset(x: 25, y: -12)
                
                
                Circle()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                    .offset(x: -53, y: -12)
                
                
                Circle()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                    .offset(x: 20, y: -12)
                
                
                // 嘴巴
                
                Ellipse()
                    .frame(width: 49, height: 67)
                    .foregroundStyle(.black)
                    .rotationEffect(.degrees(30))
                    .offset(x: -48, y: 69)
                
                
                Ellipse()
                    .frame(width: 37, height: 54)
                    .foregroundStyle(Color("mouthRed"))
                    .rotationEffect(.degrees(27))
                    .offset(x: -47, y: 72)
                
                
                // 腮紅
                
                Capsule()
                    .frame(width: 30, height: 6)
                    .foregroundStyle(Color("cheekPink"))
                    .rotationEffect(.degrees(-67))
                    .offset(x: -110, y: 19)
                
                
                Capsule()
                    .frame(width: 25, height: 6)
                    .foregroundStyle(Color("cheekPink"))
                    .rotationEffect(.degrees(-67))
                    .offset(x: -98, y: 22)
                
                Capsule()
                    .frame(width: 25, height: 6)
                    .foregroundStyle(Color("cheekPink"))
                    .rotationEffect(.degrees(-67))
                    .offset(x: -123, y: 18)
                
                
                Capsule()
                    .frame(width: 25, height: 6)
                    .foregroundStyle(Color("cheekPink"))
                    .rotationEffect(.degrees(-67))
                    .offset(x: 82, y: 17)
                
                
                Capsule()
                    .frame(width: 25, height: 6)
                    .foregroundStyle(Color("cheekPink"))
                    .rotationEffect(.degrees(-67))
                    .offset(x: 94, y: 20)
            }
            .offset(x: -20, y: -66)
            
            
        
            
        }
    }
    
}


#Preview {
    ContentView()
}
