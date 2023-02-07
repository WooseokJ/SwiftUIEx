//
//  ExampleView.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI



struct ExampleView: View { // view 는 프로토콜 
    var body: some View { // view는 하나만 리턴해야하는데 3개(Text(hi1,hi2,hi3)를 쓰고있어서 프리뷰에 반영이어려워서 VStack이필요
        VStack { // stack 뷰 개념  
            Text("hi1")
                .font(.title) //크기
                .foregroundColor(.yellow) // 텍스트 컬러
                .fontWeight(.bold) // 폰트 두께
            Spacer() // 비어있는공간 최대한 활용 , 레이아웃 잡는게 UIkit과 조금다름

            Text("hi2")
                .italic() // 이텔릭체
                .underline() //밑줄

            
            Text("hi3 \nhi3 \nhi3")
                .strikethrough() // 취소선
                .lineLimit(2) // 최대 줄바꿈 개수
                .kerning(10) // 글자 사이 간격
        }
        VStack {
            Circle() // 원그리기
                .fill(.gray) //색채우기
            Ellipse() // 타원그리기
                .fill(.blue)
            Rectangle() // 사각형
                .fill(.yellow)
            Image(systemName: "star.fill") //이미지
                .imageScale(.large) //이미지크기
                .foregroundColor(.primary) // 다크와화이트모드 반전색상
        }
        
        
 
        
        

    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewDevice("iphone 11") //iphone 11에 맞게 보여줘!
    }
}
