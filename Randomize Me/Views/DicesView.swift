//
//  DicesView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct DicesView: View {
    
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
            Text("Dices")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(numberList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.blue)
                                .cornerRadius(20)

                            Image(systemName: "die.face.\(item.value).fill")
                                .foregroundColor(.white)
                                .font(.system(size: 80))

                        } //: ZSTACK
                    }
                        
                }//: LAZYVGRID
            } //: SCROLLVIEW
            
            VStack {
                
                Divider()
                
                Button {
                    numberList = []
                } label: {
                    Text("Clear")
                }
                
                Button {
                    
                    let randomNumber = Int.random(in: 1...6)

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

struct DicesView_Previews: PreviewProvider {
    static var previews: some View {
        DicesView()
    }
}
