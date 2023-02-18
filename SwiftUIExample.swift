//
//  SwiftUIExample.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/17.
//

import SwiftUI

struct SwiftUIExample: View {
    @State private var testText: String?
    
    
    var body: some View {
        (Text("Hello ").italic()  + Text("SwiftUI 1111111111112323").bold())
            .font(.title)
            .foregroundColor(.red)
            .colorInvert() // 색반전효과
            .lineLimit(1)
        
        VStack {
            Text("@@@") //글자 크기만큼 배경이 찬다.
            .background(.yellow)
            .padding()

            Text("@@") // 배경이 꽉찬다.
            .padding()
            .background(.yellow)
        }
        
        Button(testText ?? "uikit") {
            self.testText = "swiftui"
        }
        
        

    }
    
}

struct SwiftUIExample_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample()
    }
}
