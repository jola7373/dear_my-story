//
//  MainView.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/03.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var impressiveStory: String = ""
    @State private var characteristic: String = ""
    @State private var story: String = ""
    @State private var tabSelection: Int = 1

    var body: some View {

        ZStack {
            ColorManager.BackgroundColor
                .ignoresSafeArea()

            ZStack{
                TabView {
                    TextField(
                        "당신의 그 시절 가장 인상 깊었던 썰을 풀어주세요!",
                        text: $impressiveStory
                    ).multilineTextAlignment(.center)
                    .keyboardType(.default)
                    .submitLabel(.next)
                    .tag(1)
                    .onSubmit {
                        tabSelection = 1
                    }
                    
                    TextField(
                        "당신의 그 시절 성격을 알려주세요!",
                        value: $characteristic, formatter: NumberFormatter()
                    ).multilineTextAlignment(.center)
                        .keyboardType(.default)
                        .submitLabel(.next)
                        .tag(2)
                        .onSubmit {
                            tabSelection = 2
                        }
                    
                    TextField(
                        "당신의 그 시절을 말해주세요!",
                        value: $story, formatter: NumberFormatter()
                    ).multilineTextAlignment(.center)
                        .keyboardType(.default)
                        .submitLabel(.next)
                        .tag(3)
                        .onSubmit {

                        }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
    
    }
}
