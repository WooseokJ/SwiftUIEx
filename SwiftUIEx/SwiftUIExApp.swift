//
//  SwiftUIExApp.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI

@main // entry point 시작화면 설정
struct SwiftUIExApp: App { //swiftui 는 프로토콜 기반으로 만들어진게 큰 특성이다. 
    let persistenceController = PersistenceController.shared

    var body: some Scene { //appdelegate, scenedelegate 같은것.
        WindowGroup { //windowGroup 구조체기반
//            ContentView()
            popup()
                
        }
    }
}
// app 프로토콜 안에 들어가면 associatedType으로 되어있는건 다양한 화면을 맞춰주려면 제네릭형태로 되어야함으로
