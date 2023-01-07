//
//  StartViewController.swift
//  CatGame
//
//  Created by Milana Antonova on 7.01.23.
//

import UIKit

class StartViewController: UIViewController {
    
    //MARK: - IBActions
    @IBAction func startButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}
