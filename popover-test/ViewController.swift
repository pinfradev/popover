//
//  ViewController.swift
//  popover-test
//
//  Created by Fray Pineda on 20/4/21.
//

import UIKit
import Popover

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    var partialview = TestView(frame: .zero)
    
    var text1 = """
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum
"""
    let text2 = """
Contrary to popular belief, Lorem Ipsum is not simply random text. It hHampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites
"""
    
    let text3 = """
probando a las 3
"""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    func createView() {
        let contentView = UIView()
        var maximumLabelSize: CGSize = CGSize(width: 280, height: 9999)
        let height = partialview.testLabel.sizeThatFits(maximumLabelSize)
        contentView.frame = CGRect(x: 0, y: 0, width: height.width, height: height.height)
        partialview.frame = contentView.frame
//        let popoverOptions: [PopoverOption] = [
//            .type(.down),
//            .color(.cyan),
//            .cornerRadius(6.0),
//            .blackOverlayColor(UIColor.clear),
//            .dismissOnBlackOverlayTap(false)
//        ]
        
        var popover = Popover()
        
//        var popover = Popover(options: popoverOptions,
//                          showHandler: nil,
//                          dismissHandler: nil)
        popover.show(partialview, fromView: button)
        
        
    }


    @IBAction func tapBtn(_ sender: Any) {
        setText()
        createView()
    }
    
    func setText() {
        let texts = [text1, text2, text3]
        let random = Int.random(in: 0 ... 2)
        self.partialview.testLabel.text = texts[random]
    }
}

