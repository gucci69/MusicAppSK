//
//  switchCell.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import UIKit

class SwitchCell: UITableViewCell {

    
    private var viewPlatform: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private var infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private var switchControl: UISwitch = {
        let switchCN = UISwitch()
        switchCN.onTintColor = .green
        return switchCN
        
        
    }()
    
    //weak var delegate: SwitchCell?
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSwitchCellUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurre(with title: String) {
        infoLabel.text = title
        
    }
    
    func setupSwitchCellUI() {
        selectionStyle = .none
        viewPlatform.translatesAutoresizingMaskIntoConstraints = false
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(switchControl)
        contentView.addSubview(infoLabel)
       
        NSLayoutConstraint.activate([
            switchControl.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            switchControl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            switchControl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            infoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            infoLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            infoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            //infoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ])
            
    }
}

