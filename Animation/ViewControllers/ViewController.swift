//
//  ViewController.swift
//  Animation
//
//  Created by Yelena Demchenko on 03.05.2023.
//

import SpringAnimation
import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Private Properties
    private var animation = Animation.getRandomValue()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }
    
    // MARK: - IBActions
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        animation = Animation.getRandomValue()
        
        descriptionLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
    
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
