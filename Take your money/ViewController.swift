//
//  ViewController.swift
//  Take your money
//
//  Created by Sagyndyk on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Tabbar")
        self.navigationController?.pushViewController(vc, animated: false)
    }


}

