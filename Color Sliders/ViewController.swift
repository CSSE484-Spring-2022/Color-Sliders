//
//  ViewController.swift
//  Color Sliders
//
//  Created by David Fisher on 3/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0.8
        updateView()
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateView()
    }
    
    func updateView() {
        print("Red slider value is \(redSlider.value)")
        redLabel.text = String(format: "%.2f", redSlider.value)
        
    }
}

