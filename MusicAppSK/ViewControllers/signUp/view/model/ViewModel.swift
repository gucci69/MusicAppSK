//
//  ViewModel.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import Foundation
import UIKit

class ViewModel: NSObject, UITableViewDataSource {
    
    enum ScreenType {
        case login
        case signUp
    }
    
    private var screenType: ScreenType = .signUp
    
    private lazy var cellData: [TextFieldDataType.CellType] = {
        switch screenType {
        case .login:
            return [.login, .password]
        case .signUp:
            return [.login, .email, .password, .repeatPassword]
        }
    }()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self), for: indexPath) as! TextFieldCell
        cell.configure(cellData[indexPath.row])
        return cell
    }
}

