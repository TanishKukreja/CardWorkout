//
//  RulesVC.swift
//  CardWorkout
//
//  Created by Tanish Kukreja on 19/10/23.
//

import Foundation
import UIKit

class RulesVC : UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()
    
    override func viewDidLoad() {
        
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(rulesLabel)
        view.addSubview(exerciseLabel)
        
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "Number of exercise : \n  J = 11 , Q = 12 , K = 13 , A = 14"
        rulesLabel.numberOfLines = 2
        rulesLabel.textColor = .black
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 20, weight: .medium)
        
       exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
       exerciseLabel.text = "♠️ : PushUps \n❤️ : SitUps \n♣️ : Burpees \n♦️ : Jumping Jacks"
       exerciseLabel.textColor = .black
       exerciseLabel.textAlignment = .left
        exerciseLabel.numberOfLines = 4
       exerciseLabel.font = .systemFont(ofSize: 20, weight: .medium)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            
           exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
           exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
           exerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            
            
            
        ])
    
    }
}
