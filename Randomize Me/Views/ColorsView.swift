//
//  ColorsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct ColorsView: View {
    
    let colors = ["red", "blue", "green", "yellow", "black", "white", "pink", "purple", "brown", "gray"]
    
    struct Unique: Identifiable, ExpressibleByIntegerLiteral {
        
        let color: Int
        let id = UUID()
        
        init(integerLiteral color: Int) {
            self.color = color
        }
    }
    
    @State var colorList: [Unique] = []
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        VStack {
            Text("Colors")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(colorList, id: \.id) { item in

                        ZStack {
                            switch (item.color) {
                            case 0:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.red)
                                    .cornerRadius(20)
                            case 1:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.blue)
                                    .cornerRadius(20)
                            case 2:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.green)
                                    .cornerRadius(20)
                            case 3:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.yellow)
                                    .cornerRadius(20)
                            case 4:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.black)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                                    .cornerRadius(20)
                            case 5:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                                    .cornerRadius(20)
                                    
                            case 6:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.pink)
                                    .cornerRadius(20)
                            case 7:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.purple)
                                    .cornerRadius(20)
                            case 8:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.brown)
                                    .cornerRadius(20)
                            case 9:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.gray)
                                    .cornerRadius(20)
                            default:
                                Rectangle()
                                    .frame(width: 170, height: 80)
                                    .foregroundColor(.gray)
                                    .cornerRadius(20)
                            }

                            switch item.color {
                            case 5:
                                Text("\(colors[item.color])")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                            default:
                                Text("\(colors[item.color])")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                            }
                            

                        } //: ZSTACK
                    }
                    
                } //: LAZYVGRID
                
            } //: SCROLLVIEW
            
            VStack {
                Divider()
                
                Button {
                    colorList = []
                } label: {
                    Text("Clear")
                }
                
                Button {

                    let randomColor = Int.random(in: 0...9)
                    let newColor = Unique(integerLiteral: randomColor)
                    colorList.append(newColor)
                    
                } label: {
                    Text("Randomize")
                }
                .foregroundColor(Color.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(8)
                .padding()
                
            } //:VSTACK
            
        } //: VSTACK
    }
    
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
