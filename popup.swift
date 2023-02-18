//
//  popup.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/17.
//

import SwiftUI

enum PopupStyle {
    case none
    case blur
    case dimmend
}

struct Popup <Message: View>: ViewModifier {
    let size: CGSize?
    let style: PopupStyle
    let message: Message
    
    init(size: CGSize? = nil, style: PopupStyle = .none, message: Message) {
        self.size = size
        self.style = style
        self.message = message
    }
    func body(content: Content) -> some View {
        content
            .blur(radius: style == .blur ? 2 : 0)
            .overlay(Rectangle().fill(Color.black.opacity(style == .dimmend ? 0.4 : 0)))
            .overlay(popupContent)
    }
    private var popupContent: some View {
        GeometryReader {
            VStack {self.message}
                .frame(width: self.size?.width ?? $0.size.width * 1,
                       height: self.size?.height ?? $0.size.height * 1)
                .background(Color.primary.colorInvert())
                .cornerRadius(12)
                .shadow(color: .primary, radius: 14, x:5, y:5)
                .overlay(self.checkCircleMark, alignment: .top)
            
        }
    }
    
    private var checkCircleMark: some View {
        Image(systemName: "checkmark.circle.fill")
            .font(.title)
            .background(Color.white.scaleEffect(0.7))
            .offset(x:0, y: -100)
    }
}



struct popup: View {
    @State private var showingAlert = false

    var body: some View {
        VStack {
            Button("ㅇㄴ마러ㅜㅇ너dsadfasdfasdf") {
                
            }
            .modifier(Popup(message: Text("팝업")))
            .edgesIgnoringSafeArea(.leading)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("asdfasdf"))
            }
        }

    }
}

struct popup_Previews: PreviewProvider {
    static var previews: some View {
        popup()
    }
}
