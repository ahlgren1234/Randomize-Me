//
//  HomeView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-23.
//

import SwiftUI

struct Home: View {
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
        private var data: [Int] = Array(1...20)
    
        private let colors: [Color] = [.red, .green, .blue, .yellow]
    
        private let adaptiveColumns = [
            GridItem(.adaptive(minimum: 170))
        ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                
                //
                // NUMBERS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[0])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: NumbersView()) {
                        VStack {
                            Image(systemName: "number.square.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Numbers")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // LETTERS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[1])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: LettersView()) {
                        VStack {
                            Image(systemName: "character")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Letters")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // DICES
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[2])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: DicesView()) {
                        VStack {
                            Image(systemName: "dice.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Dices")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // YES OR NO
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[3])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: YesOrNoView()) {
                        VStack {
                            Image(systemName: "questionmark.square.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Yes / No")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // CARDS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[0])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: CardsView()) {
                        VStack {
                            Image(systemName: "suit.spade.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Playing Cards")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // HEADS OR TAILS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[1])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: HeadOrTailsView()) {
                        VStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Head Or Tails")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // COLORS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[2])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: ColorsView()) {
                        VStack {
                            Image(systemName: "paintpalette.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Color")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
                
                //
                // ROCK PAPER SCISSORS
                //
                ZStack {
                    Rectangle()
                        .frame(width: 170, height: 170)
                        .foregroundColor(colors[3])
                        .cornerRadius(20)
                    
                    NavigationLink(destination: RockPaperScissorsView()) {
                        VStack {
                            Image(systemName: "scissors.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 48))
                                .padding(.bottom)
                                
                            Text("Rock, Paper, Scissors")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        } //: VSTACK
                    } //: NAVIGATIONLINK
                } //: ZSTACK
            } //: LAZYVGRID
        } //: SCROLLVIEW
        .padding()
        .navigationTitle("Randomize Me")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            Home()
        }

    }
}
