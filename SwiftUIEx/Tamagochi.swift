//
//  Tamagochi.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/08.
//

import SwiftUI

struct GrowButtn: View {
    var text: String
    var icon: Image
    var action: () -> Void
    
    var body: some View {
//        Button(action: <#T##() -> Void#>, label: <#T##() -> View#>)
        Button(action: action, label: { // 버튼 클릭시 기능동작
            icon
            Text(text)
        })
        //.padding() // 순서대로 출력되서 padding이 아래있는거랑 위에있는거랑 ui가 차이가생김
        .background(.yellow)
        .foregroundColor(.black)
        .cornerRadius(10)
        .padding()
    }
}

struct ComputedProperty: View {
    @State var apple = "사과" // @state는 원래 변경안되지만 변경되게 허용해줌(SwiftUI에서 값을 읽고 쓸 수 있는 프로퍼티래퍼)
    

    var body: some View {
//        apple = "바나나" // 이렇게하면 안된다. 구조체내부에서는 프로퍼티 값 변경이 안됨.클래스에서는 값변경가능
//        mutating get{ // 오류 이유: View 는 무조건 immutable이다.
            Text(apple)
//        }
    }
}

// MARK: 구조체내부에서는 프로퍼티 값 변경이 안되는 이유
struct User2 {
    var name = "고래밥"
    mutating func changeName() { // copy on write
        name = "바나나"
    }
}

class User {
    var name = "고래밥"
    func changeName() {
        name = "사과"
    }
}
//    let tt = User()
//    tt.changeName()

//let tt2 = User2()
//tt2.changeName()



struct ExampleText: View {
    var body: some View{
        Text("방실방실 다마고치 Example \(Int.random(in: 1...100))")
    }
}


// Opaque Type(불투명타입, 역제네릭)
struct Tamagochi: View {
    @State private var riceCnt: Int = 0
    @State private var waterCnt: Int = 0
    @State private var showModal = false // struct지만 showMadal은 힙에 저장되기떄매 참조가가능.
    
    var characterName: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
    
    var body: some View { // 뷰 렌더링 된다. 데이터가바뀌면 뷰를 다시그린다., 여러개의 somw View가 있어도 rootView는 body 뿐이다.(view 프로토콜 내부보면 알수있음)
        //stack 종류 Vstack(세로), Hstack(가로), Zstack(위로 쌓는구조)
        // lazyVStack, lazyHStack 은 동작방식의차이가있다.   :화면에 렌더링될떄 데이터를 메모리담고 그린다. 
        // V,H,ZStack: 전체 데이터를 메모리에 담아두고 스크롤할떄 보여줌.
        VStack(spacing: 30) {
            Text("밥알 \(riceCnt)개 물방울 \(waterCnt)개 ")
            
            // 구조체와 연산프로퍼티의 차이는 다시그려지는 패턴이 다르다.
            characterName
            ExampleText() // characterName와의 차이점은 한번 빌드가 되고나서는 다시 뷰가 렌더링안된다.
            
            
            // ZStack 설명
            ZStack { // 겹쳐서 만듬.
                characterName
                    .padding(20)
                    .background(.blue)
                characterName
                    .padding(5)
                    .background(.red)
            }
            
            // MARK: 밥먹기 버튼
            GrowButtn(text: "밥먹기", icon: Image(systemName: "star")) {
                print("밥주기 버튼클릭") // 빌드해야 확인가능
                riceCnt += 1
            }
            // MARK: 물먹기 버튼
            GrowButtn(text: "물먹기", icon: Image(systemName: "star.fill")) {
                print("물먹기 버튼클릭")
                waterCnt += 1
            }
            
            // MARK: 물먹기 버튼
            GrowButtn(text: "화면 전환 버튼", icon: Image(systemName: "pencil")) {
                showModal = true // 참조하는 showModal이 true로 바뀜
            }
            .sheet(isPresented: $showModal) { // $showModal은 참조를해서 반영하기위해 $를 붙임.
                ExampleView()
            } // $showModal을 하면 참조한것을 가져온것. 원본은 false이다.

        }
        // swiftui는 VC가 없고 뷰의생명주기가 두가지밖에없다.
        .onAppear(perform: {
            print("viewDidAppear")
            print("viewdidload에 하고싶은 기능 여기쓰면 이상함.1 ")
        })
        .onDisappear(perform: {
            print("viewDidappear")
        })
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
//        GrowButtn() // 커스텀 버튼 확인가능
    }
}



/* 제네릭 개념은
func total<T: Numeric>(a:[T]) -> T {
    return a.reduce(.zero,+)
 } 함수 내부에서는 어떤 타입이 들어오는지 알수없음.
 
 하지만
 total(a:[100,200])  함수호출시 외부에서 실제타입을 알수있다.
 */
