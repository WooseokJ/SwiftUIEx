//
//  ContentView.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI

// ios 13+ WWDC19
// uikit, uiLabel, uiButton, UIswitch, Appkit ...
// ios13,14,15,16 모두다 코드가다르다

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("안녕하세요1")
                .foregroundColor(.blue)
            Text("안녕하세요2")
                .opacity(0.3)
            Spacer() // 비어있는공간최대한활용
            Circle().fill(.yellow)
            Ellipse().fill(.green)
//            Image(systemName: "star.fill")
//            .imageScale(.large)
//            .foregroundColor(Color.red) // UIcolor.blue는 import하지않으면 가져오지못함 , 대신 Color라고 있음
            Text("안녕하세요3")
                .font(.title)
                .foregroundColor(.yellow)
                .fontWeight(.heavy)
            
            Text("hello world ")
                .font(.caption)
            
            Text("hello world italic font")
                .font(.caption)
                .italic()
            
            Text("안녕하세요2\n두번쨰줄\n세번쨰줄")
                .underline() // 밑줄
                .strikethrough() //취소선
            
            Text("125678 \n34\n56")
                .underline()
                .lineLimit(2) // numberofLine
                .kerning(30) //  간겨
        }
        .padding()
        .border(.red)
        .padding()
        .border(.green)
        .frame(width: 300, height: 400)
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        
//        ExampleView()
//            .previewDisplayName("iPhone 11 ")
    }
}
