//
//  NumbersView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI


struct NumbersView: View {
    
    @State private var minValue: String = "1"
    @State private var maxValue: String = "100"
    
    struct Unique: Identifiable, ExpressibleByIntegerLiteral {
        let value: Int
        let id = UUID()
        
        init(integerLiteral value: Int) {
            self.value = value
        }
    }
    
    @State var numberList: [Unique] = []
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        VStack  {
            Text("Numbers")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(numberList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 80)
                                .foregroundColor(.red)
                                .cornerRadius(20)

                            Text("\(item.value)")
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .medium, design: .rounded))

                        } //: ZSTACK
                    }
                        
                }//: LAZYVGRID
            } //: SCROLLVIEW
            
            VStack {
                
                Divider()
                
                HStack {
                    VStack {
                        Text("Min")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(.gray)
                        
                        TextField("\(minValue)", text: $minValue)
                            .padding(5)
                            .multilineTextAlignment(.center)
                            .border(.gray, width: 1)
                    } //: VSTACK
                    
                    VStack {
                        Text("Max")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(.gray)
                        
                        TextField("\(maxValue)", text: $maxValue)
                            .padding(5)
                            .multilineTextAlignment(.center)
                            .border(.gray, width: 1)
                            
                        
                    } //: VSTACK
                } //: HSTACK
                .padding([.horizontal, .bottom])
                
                Button {
                    numberList = []
                } label: {
                    Text("Clear")
                }
                
                Button {

                    let minimumValue: Int = Int(minValue) ?? 0
                    let maximumValue: Int = Int(maxValue) ?? 100
                    
                    let randomNumber = Int.random(in: minimumValue...maximumValue)

                    let newNumber = Unique(integerLiteral: randomNumber)
                    numberList.append(newNumber)
                } label: {
                    Text("Randomize")
                }
                .foregroundColor(Color.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(8)
                .padding()
            } //: VSTACK
        } //: VSTACK

    }
    
    
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
