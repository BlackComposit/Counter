//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Ивашинин on 25.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    
    private var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func plusButtonDidTap() {
        counterValue += 1
        counterLabel.text = "\(counterValue)"
    }
    @IBAction func minusButtonDidTap(_ sender: Any) {
        guard counterValue > 0 else { return }
        counterValue -= 1
        counterLabel.text = "\(counterValue)"
    }
    @IBAction func refrashButtonDidTap() {
        counterValue = 0
        counterLabel.text = "\(counterValue)"
    }
    
}

