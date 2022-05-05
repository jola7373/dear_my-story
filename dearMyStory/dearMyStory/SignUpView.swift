//
//  ContentView.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/02.
//

import SwiftUI


struct SignUpView: View {
    @State private var username: String = ""
    @State private var age: String = ""
    @State private var tabSelection: Int = 1
    
    var body: some View {

        ZStack {
            ColorManager.BackgroundColor
                .ignoresSafeArea()

            ZStack{
                TabView(selection: $tabSelection) {
                    TextField(
                        "당신의 이름을 입력하세요!",
                        text: $username
                    ).multilineTextAlignment(.center)
                    .keyboardType(.default)
                    .submitLabel(.next)
                    .tag(1)
                    .onSubmit {
                        tabSelection = 2
                    }
                    
                    
                    TextField(
                        "당신의 나이를 입력하세요!",
                        value: $age, formatter: NumberFormatter()
                    ).multilineTextAlignment(.center)
                    .keyboardType(.default)
                    .submitLabel(.next)
                    .tag(2)
                    .onSubmit {
//                        navigation view 사용해서 호출
                        MainView()
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
    
    }
}

struct Sign_up_view_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
