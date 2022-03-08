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
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0.5
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        alphaSlider.value = 1.0
        updateView()
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateView()
    }
    
    func updateView() {
        print("Red slider value is \(redSlider.value)")
        redLabel.text = String(format: "%.2f", redSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: CGFloat(alphaSlider.value))
        
    }
}

