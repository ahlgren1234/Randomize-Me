//
//  HeadOrTailsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct HeadOrTailsView: View {
    
    struct Unique: Identifiable, ExpressibleByStringLiteral {
        let value: String
        let id = UUID()
        
        init(stringLiteral value: String) {
            self.value = value
        }
    }
    
    @State var answerList: [Unique] = []
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        VStack {
            Text("Head or Tails")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(answerList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 80)
                                .foregroundColor(.green)
                                .cornerRadius(20)

                            Text("\(item.value)")
                                .foregroundColor(.white)
                                .font(.system(size: 30, weight: .medium, design: .rounded))

                        } //: ZSTACK
                    }
                    
                } //: LAZYVGRID
                
            } //: SCROLLVIEW
            
            VStack {
                Divider()
                
                Button {
                    answerList = []
                } label: {
                    Text("Clear")
                }
                
                Button {
                    let answers = ["Head", "Tails"]
                    let randomAnswer = answers.randomElement()
                    let newAnswer = Unique(stringLiteral: randomAnswer!)
                    answerList.append(newAnswer)
                    
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

struct HeadOrTailsView_Previews: PreviewProvider {
    static var previews: some View {
        HeadOrTailsView()
    }
}
