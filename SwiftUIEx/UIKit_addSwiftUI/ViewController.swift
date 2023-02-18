//
//  ViewController.swift
//  SwiftUIEx
//
//  Created by useok on 2023/02/11.
//

import UIKit
import SwiftUI

// UIKit 프로젝트에 swiftui 추가하는 방법 -> UIHostingController 이용!
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        let vc = UIHostingController(rootView: SwiftUIView(apple: "유유"))
        present(vc, animated: true)
        
    }
    
    
}

// 기존의 VC에서 버튼을 누르면 swiftUI의 View 로 넘어가게 하려면 VC의역할을하게 View에 덮어씌어야한다. 이를 호스팅이라한다.
// 스토리보드에는 hosting VC라고 있으니 여기에 연결하면된다.
