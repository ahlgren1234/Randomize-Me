//
//  RockPaperScissorsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct RockPaperScissorsView: View {
    
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
            Text("Rock, Paper, Scissors")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(answerList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.yellow)
                                .cornerRadius(20)

                            VStack {
                                if item.value == "rock" {
                                    Image(uiImage: UIImage(named: "rock")!)
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                } else if item.value == "paper" {
                                    Image(uiImage: UIImage(named: "paper")!)
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                } else {
                                    Image(uiImage: UIImage(named: "scissor")!)
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                }
                                
                                Text("\(item.value)")
                                    .foregroundColor(.black)
                                .font(.system(size: 30, weight: .medium, design: .rounded))
                            } //: VSTACK

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
                    let answers = ["rock", "paper", "scissor"]
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

struct RockPaperScissorsView_Previews: PreviewProvider {
    static var previews: some View {
        RockPaperScissorsView()
    }
}
