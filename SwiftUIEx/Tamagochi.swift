//
//  Tamagochi.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/08.
//

import SwiftUI

// Opaque Type(불투명타입, 역제네릭)
struct Tamagochi: View {
    
    var body: some View {
        VStack(spacing: 30) {
            Text("다마고치")
            Text("Level 1. 밥알3개 물방울 15개 ")
            
            Button { // 버튼 클릭시 기능동작
                print("밥주기 버튼클릭했습니다.")
            } label: {
                Image(systemName: "star.fill")
                Text("밥먹기 버튼")
            }
                .background(.yellow)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
                
            Button { // 버튼 클릭시 기능동작
                print("물주기 버튼클릭했습니다.")
            } label: {
                Image(systemName: "star.fill")
                Text("물먹기 버튼")
            }
        }
    }
    
    
    
    /* 개념 정리
    var a = 10 // 저장프로퍼티
    var b: String { // 연산프로퍼티
        return ""
    }
    
    var body: Button<Text> { // body 는 연산 프로퍼티, Button<Text>로 타입을 명시해줄수도있다.
        get{
            Button("test") {
                print("하이")
            }
        }
    } // 역제네릭
    // 프로퍼티 내부에서는 실제 타입이 어떤지 명확히 알수있음.
    // 프로퍼티 외부에서는 어떤타입인지 알수없음.
    
    
    
    var body3: Text {
        Text("ㅠㅠ")
    }
    // some, propertywrapper 키워드는 swift 5.1에서 나옴,
    // some 역할은 컴파일시 실제값을 반환해줌.(run버튼누를떄)
    var body2: some View { // 위에 button<Text> , Text같이 타입을 계속 변경해줘야하기떄문에 some View로 제네릭화해서 프로토콜형태로 반환해라! , 연산프로퍼티에서 어떤타입을 갖는지 신경쓰지 않아도 된다.
        Text("aa")
    }
     
     */
    
}

struct Tamagochi_Previews: PreviewProvider {
    static var previews: some View {
        Tamagochi()
    }
}



/* 제네릭 개념은
func total<T: Numeric>(a:[T]) -> T {
    return a.reduce(.zero,+)
 } 함수 내부에서는 어떤 타입이 들어오는지 알수없음.
 
 하지만
 total(a:[100,200])  함수호출시 외부에서 실제타입을 알수있다.
 */
