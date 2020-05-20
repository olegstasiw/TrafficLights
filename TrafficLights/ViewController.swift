//
//  ViewController.swift
//  TrafficLights
//
//  Created by mac on 20.05.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var changeColorButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3

        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        changeColorButton.layer.cornerRadius = 10
    }


    @IBAction func changeColorTrafficLights() {
        if redLightView.alpha < 1 && yellowLightView.alpha < 1 && greenLightView.alpha < 1 {
            redLightView.alpha = 1
            changeColorButton.setTitle("NEXT", for: .normal)
        } else if   redLightView.alpha == 1 && yellowLightView.alpha < 1 && greenLightView.alpha < 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        }   else if   redLightView.alpha < 1 && yellowLightView.alpha == 1 && greenLightView.alpha < 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.3
            changeColorButton.setTitle("START", for: .normal)
        }
    }
}

