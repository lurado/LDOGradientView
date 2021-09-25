//
//  ViewController.swift
//  LDOGradientView Example
//
//  Created by Sebastian Ludwig on 02.02.19.
//  Copyright (c) 2019 Julian Raschke und Sebastian Ludwig GbR. All rights reserved.
//

import UIKit
import LDOGradientView

class ViewController: UIViewController {
    @IBOutlet weak var gradientView: LDOGradientView!
    
    @IBAction func changeRotation(_ slider: UISlider) {
        gradientView.rotation = CGFloat(slider.value)
    }
    
    @IBAction func changeStartOffset(_ slider: UISlider) {
        gradientView.startOffset = CGFloat(slider.value)
    }
    
    @IBAction func changeEndOffset(_ slider: UISlider) {
        gradientView.endOffset = CGFloat(slider.value)
    }
    
    @IBAction func changeStartAlpha(_ slider: UISlider) {
        gradientView.startAlpha = CGFloat(slider.value)
    }
    
    @IBAction func changeEndAlpha(_ slider: UISlider) {
        gradientView.endAlpha = CGFloat(slider.value)
    }
}
