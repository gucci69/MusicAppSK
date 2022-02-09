//
//  TextFieldCell.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import UIKit

class TextFieldCell: UITableViewCell {
    
    override var reuseIdentifier: String? {
        return String(describing: TextFieldCell.self)
    }
    
    var cellType: TextFieldDataType.CellType = .login

    var textField: UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.borderStyle = .roundedRect
        field.clipsToBounds = true
        field.autocapitalizationType = .none
        field.layer.borderColor = UIColor.clear.cgColor
        return field
    }()
    
    func setupTextField() {
        contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            textField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4)
        ])
    }
    
    func configure(_ type: TextFieldDataType.CellType) {
        cellType = type
        textField.placeholder = type.placeholder
    }
    
    func customInit(_ text: String) {
        textField.placeholder = text
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
