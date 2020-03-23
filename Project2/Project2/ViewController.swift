//
//  ViewController.swift
//  Project2
//
//  Created by Jerry Ye on 3/22/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    var score = 0
    var correctAnswer = 0
    var countries = [String]()
    var questionsAsked = 0
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var msg: String
        if sender.tag == correctAnswer{
            title = "Correct"
            score += 1
            msg = ""
        }
        else{
            title = "Wrong"
            score -= 1
            msg = "You chose the flag of \(countries[sender.tag]). "
        }
        let ac = UIAlertController(title: title, message: msg + "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
        // Do any additional setup after loading the view.
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        askQuestion()
        
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        if questionsAsked == 10{
            let ac = UIAlertController(title: "Final Score", message: "This is your final score of \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
            
        }
        questionsAsked += 1
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
        title = "\(countries[correctAnswer].uppercased())   Score: \(score)"
    }


}

