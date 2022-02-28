//
//  HomeView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-23.
//

import SwiftUI

struct Home: View {
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                NavigationLink(destination: CardsView()) {
                    Text("Cards")
                }
                NavigationLink(destination: RockPaperScissorsView()) {
                    Text("Rock, Paper, Scissors")
                }
                NavigationLink(destination: DicesView()) {
                    Text("Dices")
                }
                NavigationLink(destination: NumbersView()) {
                    Text("Numbers")
                }
                NavigationLink(destination: ColorsView()) {
                    Text("Colors")
                }
                NavigationLink(destination: HeadOrTailsView()) {
                    Text("Head or Tails")
                }
                NavigationLink(destination: LettersView()) {
                    Text("Letters")
                }
                NavigationLink(destination: YesOrNoView()) {
                    Text("Yes or No")
                }
            }
            
            .navigationTitle("Randomize Me!")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape.fill")
                    }
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
