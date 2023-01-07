//
//  ViewController.swift
//  CatGame
//
//  Created by Milana Antonova on 6.01.23.
//

import UIKit

class GameViewController: UIViewController {

    //MARK: - let/var
    let button = UIButton(type: .system)
    let buttonSize: CGFloat = 150
    
    //MARK: - lifecycle funcs
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.createButton()
    }
    
    //MARK: - IBActions
    @objc func cirleButtonPressed(_ sender : UIButton) {
        self.setRandomPosition()
        button.backgroundColor = UIColor.randomColor
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
        let topEdge = Int(self.view.safeAreaInsets.top)
        let bottomEdge = Int(self.view.frame.height - button.frame.size.height - self.view.safeAreaInsets.bottom)
        let rightEdge = Int(self.view.frame.width - button.frame.size.width)
        let leftEdge = Int(self.view.safeAreaInsets.left)
        button.frame.origin.x = CGFloat(Int.random(in: leftEdge..<rightEdge))
        button.frame.origin.y = CGFloat(Int.random(in: topEdge..<bottomEdge))
    }
    
}

