//
//  ViewController.swift
//  CatGame
//
//  Created by Milana Antonova on 6.01.23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - let/var
    let button = UIButton(type: .system)
    let buttonSize: CGFloat = 150
    
    //MARK: - lifecycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createButton()
    }
    
    //MARK: - IBActions
    @objc func cirleButtonPressed(_ sender : UIButton) {
        self.setRandomPosition()
        button.backgroundColor = UIColor.randomColor
    }
    
    //MARK: - flow funcs
    private func createButton() {
        button.backgroundColor = UIColor.randomColor
        button.frame.size = CGSize(width: buttonSize, height: buttonSize)
        button.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        button.layer.cornerRadius = buttonSize/2
        button.addTarget(self, action: #selector(cirleButtonPressed(_:)), for:.touchUpInside)
        self.view.addSubview(button)
    }
    
    func setRandomPosition() {
        let topEdge = 50
        let bottomEdge = Int(self.view.frame.height - button.frame.size.height) - 15
        let rightEdge = Int(self.view.frame.width - button.frame.size.width)
        let leftEdge = 0
        button.frame.origin.x = CGFloat(Int.random(in: leftEdge..<rightEdge))
        button.frame.origin.y = CGFloat(Int.random(in: topEdge..<bottomEdge))
    }
    
}

