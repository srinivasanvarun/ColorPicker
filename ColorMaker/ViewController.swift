//
//  ViewController.swift
//  ColorMaker
//
//  Created by Varun Srinivasan on 8/3/17.
//  Copyright © 2017 Varun Srinivasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CodeLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorReturn()
    }
    @IBAction func colorReturn(){
        let r: CGFloat = CGFloat(redSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        let rcode = floatToHex(f: Int(r * 255.0))
        let gcode = floatToHex(f: Int(g * 255.0))
        let bcode = floatToHex(f: Int(b * 255.0))
        CodeLabel.text = "\(rcode)\(gcode)\(bcode)"
    }
    func floatToHex(f:Int)->String {
        return String(f, radix: 16, uppercase: true)
    }
}

