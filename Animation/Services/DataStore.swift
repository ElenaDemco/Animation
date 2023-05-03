//
//  DataStore.swift
//  Animation
//
//  Created by Yelena Demchenko on 03.05.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let presets: [AnimationPreset] = AnimationPreset.allCases
    let curves: [AnimationCurve] = AnimationCurve.allCases
}
