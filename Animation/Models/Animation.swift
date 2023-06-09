//
//  Animation.swift
//  Animation
//
//  Created by Yelena Demchenko on 03.05.2023.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomValue() -> Animation {
        
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0.8...3),
            duration: Float.random(in: 1...2),
            delay: Float.random(in: 0.2...0.5)
        )
    }
}
