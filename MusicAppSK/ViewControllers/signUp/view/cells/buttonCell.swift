//
//  buttonCell.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import UIKit

class ButtonCell: UITableViewCell {

    
    open var myButton: UIButton = {
        let buttonIN = UIButton()
        buttonIN.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        buttonIN.setTitleColor(.systemBlue, for: .normal)
        buttonIN.contentHorizontalAlignment = .center
        return buttonIN
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupButtonCellUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    @objc func buttonAction() {
        
    }
    
    func setupButtonCellUI() {
        
        selectionStyle = .none
        myButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(myButton)
       
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            myButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            myButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            myButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
            
    }
        
}

