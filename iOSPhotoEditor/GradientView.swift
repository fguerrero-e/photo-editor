//
//  GradientView.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 4/11/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

enum GradientOverlay {
    private static let layerName = "PhotoEditorGradientLayer"

    static func apply(to view: UIView, fromTop: Bool) {
        view.backgroundColor = .clear
        let gradientLayer = CAGradientLayer()
        if fromTop {
            gradientLayer.colors = [
                UIColor(white: 0.0, alpha: 0.5).cgColor,
                UIColor.clear.cgColor,
            ]
        } else {
            gradientLayer.colors = [
                UIColor.clear.cgColor,
                UIColor(white: 0.0, alpha: 0.5).cgColor,
            ]
        }
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        gradientLayer.name = layerName
        view.layer.sublayers?.removeAll { $0.name == layerName }
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    static func updateLayout(for view: UIView) {
        view.layer.sublayers?
            .first { $0.name == layerName }?
            .frame = view.bounds
    }
}
