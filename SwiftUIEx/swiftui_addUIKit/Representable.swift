//
//  Representable.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/11.
//

import SwiftUI

// swiftui는 VC가 없고 View만존재.
// 스토리보드 or uikit 프로젝트에 swiftui 추가하기!!! -> UIHostingController
// swiftui 프로젝트에 스토리보드 or uikit 추가하기!! -> UIViewRepresentable, or UIViewControllerRepresentable
//UIViewRepresentable 는 swiftui뷰에 VC를 넣어주는것!

struct sampleVCRepresntable: UIViewControllerRepresentable {
    // sampleVC(클래스) -> 구조체로 바꿔주기!
    
    func makeUIViewController(context: Context) -> some UIViewController { //
        return SampleViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { //
        
    }
    
}

struct Representable: View {
    var body: some View {
        sampleVCRepresntable()
    }
}

struct Representable_Previews: PreviewProvider {
    static var previews: some View {
        Representable()
    }
}
