//
//  ViewController.swift
//  EncuestaCovid
//
//  Created by Alumno on 3/7/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vwCover: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradiente = CAGradientLayer()
        gradiente.frame = vwCover.bounds
        gradiente.colors = [UIColor(red:0, green: 30/255, blue: 98/255, alpha: 1).cgColor, UIColor(red:200/255, green: 16/255, blue: 46/255, alpha: 1).cgColor]
        gradiente.startPoint = CGPoint(x: 0, y: 0.5)
        gradiente.endPoint = CGPoint(x: 1, y: 0.5)
        gradiente.shouldRasterize = true
        
        vwCover.layer.addSublayer(gradiente)
        vwCover.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
    }


}

