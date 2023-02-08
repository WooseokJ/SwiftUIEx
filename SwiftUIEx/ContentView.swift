//
//  ContentView.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI

// ios 13+이상
// UIkit, UILabel, UIButton, UIswitch, Appkit등을 통합해서 만들수있는 유저인터페이스
// ios13,14,15,16 모두 다 코드가 다르다.그래서 분기처리할게 많다.
// UIKit은 클래스기반이라 UIView를 기반으로 상속받는 구조였는데
// swiftui 는 구조체기반이라 button,label같은게 구조체로 되어있고 빌드동작원리나 UI구성원리가 조금씩 다르다.


struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .imageScale(.large) // 이미지 크기
                .foregroundColor(Color.red) // 이미지 컬러
            Text("안녕1")
            Text("안녕2")
            Text("안녕3")
        }
        .padding()
        .border(.blue)
        .padding()
        .border(.green)
//        .frame(width: 300, height: 500).background(.yellow)
        .frame(maxWidth: .infinity, maxHeight: .infinity).background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider { // 프리뷰 기능 미리확인용도 구성.
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        
//        ExampleView()
//            .previewDisplayName("iPhone 11 ")
    }
}

// swift ui 구조
// 뷰구조 - opaque type
// 데이터 흐름 -> 프로퍼티 래퍼, 관련키워드로 @state, @binding,@environment,@pushlished
// 라이프사이클


// uikit -> iphone, ipad
// appkit -> mac os
// watchkit -> 애플워치
// 이러한 코드 기반이 swiftui이기떄문에 멀티플랫폼 대응하기가 쉽다. text가 uikit,appkit,watchkit에서 다 통용된다.


