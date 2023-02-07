//
//  ListView.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/07.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        List {
            DatePicker(selection: .constant(Date()), label: { Text("데이트") })
            Text("아아")
                .font(.title) // 폰트 title로 적용
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .padding([.bottom, .trailing])
                .background(.gray)
            HStack { // 옆으로 붙여서 사용가능
                Text("나란")
                Text("히")
            }
            ForEach(0..<50) {
                Text("리스트 \($0)")
            }
        }
        .listStyle(.plain) // 리스트 스타일
        .font(.largeTitle) // 리스트 전체 폰트 적용
        
        

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
