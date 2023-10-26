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
    @IBOutlet weak var changeHistoryTextView: UITextView!
    
    private var counterValue: Int = 0 {
        didSet {
            counterLabel.text = "\(counterValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeHistoryTextView.text = "История изменений:\n"
    }
    
    @IBAction func plusButtonDidTap() {
        counterValue += 1
        changeHistoryTextView.text += "\(getCurrentDate()): значение изменено на +1\n"
    }
    
    @IBAction func minusButtonDidTap() {
        guard counterValue > 0 else {
            changeHistoryTextView.text += "\(getCurrentDate()): попытка уменьшить значение счётчика ниже 0\n"
            return
        }
        counterValue -= 1
        changeHistoryTextView.text += "\(getCurrentDate()): значение изменено на -1\n"
    }
    
    @IBAction func refreshButtonDidTap() {
        counterValue = 0
        changeHistoryTextView.text += "\(getCurrentDate()): значение сброшено\n"
    }
    
    private func getCurrentDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: date)
    }
}
