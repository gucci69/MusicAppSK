//
//  ViewController.swift
//  MusicAppSK
//
//  Created by JoyDev on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum ScreenType {
        case login
        case signUp
    }
    
    private var tableView = UITableView()
    private var screenType: ScreenType = .login
    open var selectedIndex = 0
    let defaults = UserDefaults.standard
    
    lazy var data: [TextFieldDataType.CellType] = {
        switch screenType {
        case .login:
            return [.login, .password]
        case .signUp:
            return [.login, .email, .password, .repeatPassword, .switchControl]
        }
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpView()
        setUpTableView()
        setupHeaderView()
        segmentedTapped(0)
        
    }
    func setUpView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func setUpTableView() {
        tableView.backgroundColor = .white
        tableView.clipsToBounds = true
        tableView.register(CodeTableViewCell.self, forCellReuseIdentifier: "CodeTableViewCell")
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: String(describing: TextFieldCell.self))
        tableView.register(SegmentedControlCell.self, forCellReuseIdentifier: String(describing: SegmentedControlCell.self))
        tableView.register(SwitchCell.self, forCellReuseIdentifier: String(describing: SwitchCell.self))
        tableView.register(ButtonCell.self, forCellReuseIdentifier: String(describing: ButtonCell.self))
        tableView.separatorStyle = .none
    }
    
    func setupHeaderView() {
        let header = SegmentedControlCell()
        header.delegate = self
        header.segmentedControl.selectedSegmentIndex = selectedIndex
        header.configure(selectedIndex)
        tableView.tableHeaderView = header
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self)) as! TextFieldCell
            cell.configure(data[indexPath.row])
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self)) as! TextFieldCell
            cell.configure(data[indexPath.row])
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self)) as! TextFieldCell
            cell.configure(data[indexPath.row])
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self)) as! TextFieldCell
            cell.configure(data[indexPath.row])
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SwitchCell.self)) as! SwitchCell
            cell.configurre(with: "Согласен с правилами")
            return cell
                default:
            return UITableViewCell()
        }
    }
    
}
 
extension ViewController: SegmentedCellDelegate {
    func segmentedTapped(_ index: Int) {
        selectedIndex = index
        
            switch index {
            case 0:
                screenType = .login
                data = [.login, .password]
                let footer = ButtonCell()
                footer.myButton.setTitle("Войти", for: .normal)
                tableView.tableFooterView = footer
            case 1:
                screenType = .signUp
                data = [.login, .email, .password, .repeatPassword, .switchControl]
                let footer = ButtonCell()
                footer.myButton.setTitle("Зарегистрироваться", for: .normal)
                tableView.tableFooterView = footer
            default:
                return
            }
        tableView.reloadData()
    }
}


