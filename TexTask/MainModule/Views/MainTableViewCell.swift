//
//  MainTableViewCell.swift
//  TestTask
//
//  Created by Сергей Смирнов on 04.11.2022.
//

import UIKit

final class MainTableViewCell: UITableViewCell {
    
    
    
    private let nameLabel = UILabel()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.numberOfLines = 0
        label.text = "test"
        return label
    }()
    
    static var idMainTableViewCell = "idMainTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addView(nameLabel)
        addView(valueLabel)
    }
    
    public func configure(name: String) {
        nameLabel.text = name
    }
}

//MARK: - setConstraints

extension MainTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(greaterThanOrEqualToConstant: 44),
            
            nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),
            
            valueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            valueLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            valueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            valueLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 10)
        ])
    }
}
