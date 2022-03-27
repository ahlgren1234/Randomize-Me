//
//  CardsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct CardsView: View {
    
    struct Unique: Identifiable, ExpressibleByStringLiteral {
        let value: String
        let id = UUID()
        
        init(stringLiteral value: String) {
            self.value = value
        }
    }
    
    @State var answers = [
        "H-A", "H-2", "H-3", "H-4", "H-5", "H-6", "H-7", "H-8", "H-9", "H-10", "H-J", "H-Q", "H-K",
        "D-A", "D-2", "D-3", "D-4", "D-5", "D-6", "D-7", "D-8", "D-9", "D-10", "D-J", "D-Q", "D-K",
        "C-A", "C-2", "C-3", "C-4", "C-5", "C-6", "C-7", "C-8", "C-9", "C-10", "C-J", "C-Q", "C-K",
        "S-A", "S-2", "S-3", "S-4", "S-5", "S-6", "S-7", "S-8", "S-9", "S-10", "S-J", "S-Q", "S-K"
    ]
    
    @State var answerList: [Unique] = []
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        VStack {
            Text("Playing Cards")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.accentColor)
            
            Divider()
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(answerList, id: \.id) { item in

                        ZStack {
                            Rectangle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.red)
                                .cornerRadius(20)

                            VStack {
                                if item.value == "H-A" {
                                    Image(uiImage: UIImage(named: "H-A")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-2" {
                                    Image(uiImage: UIImage(named: "H-2")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-3" {
                                    Image(uiImage: UIImage(named: "H-3")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-4" {
                                    Image(uiImage: UIImage(named: "H-4")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-5" {
                                    Image(uiImage: UIImage(named: "H-5")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-6" {
                                    Image(uiImage: UIImage(named: "H-6")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-7" {
                                    Image(uiImage: UIImage(named: "H-7")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-8" {
                                    Image(uiImage: UIImage(named: "H-8")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-9" {
                                    Image(uiImage: UIImage(named: "H-9")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-10" {
                                    Image(uiImage: UIImage(named: "H-10")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-J" {
                                    Image(uiImage: UIImage(named: "H-J")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-Q" {
                                    Image(uiImage: UIImage(named: "H-Q")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "H-K" {
                                    Image(uiImage: UIImage(named: "H-K")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-A" {
                                    Image(uiImage: UIImage(named: "D-A")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-2" {
                                    Image(uiImage: UIImage(named: "D-2")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-3" {
                                    Image(uiImage: UIImage(named: "D-3")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-4" {
                                    Image(uiImage: UIImage(named: "D-4")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-5" {
                                    Image(uiImage: UIImage(named: "D-5")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-6" {
                                    Image(uiImage: UIImage(named: "D-6")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-7" {
                                    Image(uiImage: UIImage(named: "D-7")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-8" {
                                    Image(uiImage: UIImage(named: "D-8")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-9" {
                                    Image(uiImage: UIImage(named: "D-9")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-10" {
                                    Image(uiImage: UIImage(named: "D-10")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-J" {
                                    Image(uiImage: UIImage(named: "D-J")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-Q" {
                                    Image(uiImage: UIImage(named: "D-Q")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "D-K" {
                                    Image(uiImage: UIImage(named: "D-K")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-A" {
                                    Image(uiImage: UIImage(named: "C-A")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-2" {
                                    Image(uiImage: UIImage(named: "C-2")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-3" {
                                    Image(uiImage: UIImage(named: "C-3")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-4" {
                                    Image(uiImage: UIImage(named: "C-4")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-5" {
                                    Image(uiImage: UIImage(named: "C-5")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-6" {
                                    Image(uiImage: UIImage(named: "C-6")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-7" {
                                    Image(uiImage: UIImage(named: "C-7")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-8" {
                                    Image(uiImage: UIImage(named: "C-8")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-9" {
                                    Image(uiImage: UIImage(named: "C-9")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-10" {
                                    Image(uiImage: UIImage(named: "C-10")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-J" {
                                    Image(uiImage: UIImage(named: "C-J")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-Q" {
                                    Image(uiImage: UIImage(named: "C-Q")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "C-K" {
                                    Image(uiImage: UIImage(named: "C-K")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-A" {
                                    Image(uiImage: UIImage(named: "S-A")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-2" {
                                    Image(uiImage: UIImage(named: "S-2")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-3" {
                                    Image(uiImage: UIImage(named: "S-3")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-4" {
                                    Image(uiImage: UIImage(named: "S-4")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-5" {
                                    Image(uiImage: UIImage(named: "S-5")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-6" {
                                    Image(uiImage: UIImage(named: "S-6")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-7" {
                                    Image(uiImage: UIImage(named: "S-7")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-8" {
                                    Image(uiImage: UIImage(named: "S-8")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-9" {
                                    Image(uiImage: UIImage(named: "S-9")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-10" {
                                    Image(uiImage: UIImage(named: "S-10")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-J" {
                                    Image(uiImage: UIImage(named: "S-J")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-Q" {
                                    Image(uiImage: UIImage(named: "S-Q")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                } else if item.value == "S-K" {
                                    Image(uiImage: UIImage(named: "S-K")!)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                }
                                
                                if item.value == "H-A" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("A")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-2" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("2")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-3" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("3")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-4" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("4")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-5" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("5")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-6" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("6")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-7" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("7")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-8" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("8")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-9" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("9")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-10" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("10")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-J" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("J")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-Q" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("Q")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "H-K" {
                                    HStack {
                                        Image(systemName: "suit.heart.fill")
                                            .font(.system(size: 25))
                                        Text("K")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-A" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("A")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-2" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("2")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-3" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("3")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-4" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("4")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-5" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("5")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-6" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("6")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-7" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("7")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-8" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("8")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-9" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("9")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-10" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("10")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-J" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("J")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-Q" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("Q")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "D-K" {
                                    HStack {
                                        Image(systemName: "suit.diamond.fill")
                                            .font(.system(size: 25))
                                        Text("K")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-A" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("A")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-2" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("2")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-3" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("3")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-4" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("4")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-5" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("5")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-6" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("6")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-7" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("7")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-8" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("8")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-9" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("9")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-10" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("10")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-J" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("J")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-Q" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("Q")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "C-K" {
                                    HStack {
                                        Image(systemName: "suit.club.fill")
                                            .font(.system(size: 25))
                                        Text("K")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-A" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("A")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-2" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("2")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-3" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("3")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-4" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("4")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-5" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("5")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-6" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("6")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-7" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("7")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-8" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("8")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-9" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("9")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-10" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("10")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-J" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("J")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-Q" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("Q")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                } else if item.value == "S-K" {
                                    HStack {
                                        Image(systemName: "suit.spade.fill")
                                            .font(.system(size: 25))
                                        Text("K")
                                            .foregroundColor(.black)
                                            .font(.system(size: 30, weight: .medium, design: .rounded))
                                    } //: HSTACK
                                }
                                
                            } //: VSTACK

                        } //: ZSTACK
                    }
                    
                } //: LAZYVGRID
                
            } //: SCROLLVIEW
            
            VStack {
                Divider()
                
                Button {
                    answers = [
                        "H-A", "H-2", "H-3", "H-4", "H-5", "H-6", "H-7", "H-8", "H-9", "H-10", "H-J", "H-Q", "H-K",
                        "D-A", "D-2", "D-3", "D-4", "D-5", "D-6", "D-7", "D-8", "D-9", "D-10", "D-J", "D-Q", "D-K",
                        "C-A", "C-2", "C-3", "C-4", "C-5", "C-6", "C-7", "C-8", "C-9", "C-10", "C-J", "C-Q", "C-K",
                        "S-A", "S-2", "S-3", "S-4", "S-5", "S-6", "S-7", "S-8", "S-9", "S-10", "S-J", "S-Q", "S-K"
                    ]
                    
                    answerList = []
                } label: {
                    Text("Clear")
                }
                
                Button {
                    
                    if answers.count > 0 {
                        let randomAnswer = answers.randomElement()
                        if let index = answers.firstIndex(of: randomAnswer!) {
                            answers.remove(at: index)
                        }
                            
                        let newAnswer = Unique(stringLiteral: randomAnswer!)
                        answerList.append(newAnswer)
                    }
                    
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

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
