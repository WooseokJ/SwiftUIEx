//
//  InputView.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/09.
//

import SwiftUI
/*
 프로퍼티 래퍼 종류
 @state
 @binding
 @EnvironmentObject
 @observableObject
 @Published
 
 */

struct TextView: View {
    @Binding var text: String // binding은 다른 구조체의 state값 전달해서 text로 받아서 전달해줌.
    
    var body: some View{
        Text(text)
    }
}


struct InputView: View {
    
    @State private var nickName = ""
    
    var body: some View {
        VStack {
            TextField("nickname입력", text: $nickName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextView(text: $nickName)
        }

    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
