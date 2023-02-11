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



struct UserTextView: View {
    @Binding var text: String // binding은 다른 구조체의 state값 전달해서 text로 받아서 전달해줌.
    
    var body: some View{
        Text(text)
    }
}


// swiftui에다가 uikit uitextView 더하기
struct chatTextView: UIViewRepresentable {
    
    @Binding var chatText: String
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.backgroundColor = .lightGray
        return textView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = chatText
    }
}

struct InputView: View {
    
    @State private var nickName = ""
    
    var body: some View {
        VStack {
            TextField("nickname입력", text: $nickName, axis: .vertical) //axis: vertical로 기준으로 텍스트필드가 길어지면 수직으로 내려간다.
                .padding()
                .lineLimit(2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            UserTextView(text: $nickName)
            chatTextView(chatText: $nickName)
        }

    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
