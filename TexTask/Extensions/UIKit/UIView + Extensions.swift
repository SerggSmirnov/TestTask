//
//  UIView + Extensions.swift
//  TestTask
//
//  Created by Сергей Смирнов on 04.11.2022.
//

import UIKit

extension UIView {
    
    func addView(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
