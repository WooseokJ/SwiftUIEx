//
//  ExampleView.swift
//  SwiftUIEx
//
//  Created by useok on 2022/12/19.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        List { //10개까지됨.
            Text("Hello, 1!")
            HStack {
                Text("Hello, 2!")
                Text("Hello, 4!")

            }
            
            Text("Hello, 5!")
                .border(.red)
                
            Text("Hello, a!")
                .foregroundColor(.yellow)
                .background(.black)
            Text("Hello, v!")
                .font(.caption) // 뷰 설정 우선
            Text("Hello, c!")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
            Text("Hello, d!")
            ForEach(0..<50) {
                Text("Hello \($0)")
            }
        }
        .listStyle(.plain)
        .font(.largeTitle)

    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
