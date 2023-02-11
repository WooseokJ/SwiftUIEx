//
//  SwiftUIView.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/11.
//

import SwiftUI

struct SwiftUIView: View {
    @State var apple: String
    var body: some View {
        Text("Hello, \(apple)")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(apple: "TEST")
    }
}
