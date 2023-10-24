//
//  ViewController.swift
//  CardWorkout
//
//  Created by Tanish Kukreja on 18/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonView = UIView()
    let cardImageView = UIImageView()
    let startStopButton = UIButton()
    let resetButton = UIButton()
    let rulesButton = UIButton()
    
    var isTimerRunning = true
    
    var cards = CardDeck.allValues
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startStopButton.addTarget(self, action: #selector(StartTimer), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        
        view.addSubview(buttonView)
        view.addSubview(cardImageView)
        buttonView.addSubview(startStopButton)
        buttonView.addSubview(resetButton)
        buttonView.addSubview(rulesButton)
        
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.backgroundColor = .gray
        
        startStopButton.translatesAutoresizingMaskIntoConstraints = false
        startStopButton.setTitle("Start", for: .normal)
        startStopButton.backgroundColor = .red
        startStopButton.layer.cornerRadius = 10
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.setTitle("Reset", for: .normal)
        resetButton.backgroundColor = .orange
        resetButton.layer.cornerRadius = 10
        
        rulesButton.translatesAutoresizingMaskIntoConstraints = false
        rulesButton.setTitle("Rules", for: .normal)
        rulesButton.backgroundColor = .blue
        rulesButton.layer.cornerRadius = 10
        rulesButton.addTarget(self, action: #selector(RulesButtonTapped), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            
            buttonView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttonView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: view.frame.height/4),
            
            startStopButton.topAnchor.constraint(equalTo: buttonView.topAnchor,constant: 50),
            startStopButton.widthAnchor.constraint(equalToConstant: 180),
            startStopButton.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
            startStopButton.heightAnchor.constraint(equalToConstant: 40),
            
            resetButton.topAnchor.constraint(equalTo: startStopButton.bottomAnchor,constant: 20),
            resetButton.widthAnchor.constraint(equalToConstant: 90),
            resetButton.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor,constant: -50),
            resetButton.heightAnchor.constraint(equalToConstant: 40),
            
            rulesButton.topAnchor.constraint(equalTo: startStopButton.bottomAnchor,constant: 20),
            rulesButton.leadingAnchor.constraint(equalTo: resetButton.trailingAnchor,constant: 10),
            rulesButton.widthAnchor.constraint(equalToConstant: 90),
            rulesButton.heightAnchor.constraint(equalToConstant: 40),
            
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -50)
            
            
        ])
    }
    
    @objc func RulesButtonTapped(){
        present(RulesVC(),animated: true)
    }
    
    @objc func StartTimer(){
        if isTimerRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
            startStopButton.setTitle("Stop", for: .normal)
        }
        else{
            timer?.invalidate()
            timer = nil
            startStopButton.setTitle("Start", for: .normal)
        }
        isTimerRunning.toggle()
    }
    
    @objc func showRandomCard() {
        if let randomCard = cards.randomElement() {
            cardImageView.image = randomCard
        } else {
            
        }
    }
    @objc func resetButtonTapped(){

        
    }
}

