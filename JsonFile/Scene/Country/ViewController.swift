//
//  ViewController.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 21.08.25.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    @IBOutlet weak var table: UITableView!
    
    let viewModel = CountryViewModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        table.delegate = self
        table.dataSource = self        
        viewModel.getCountryData {
            self.table.reloadData()
        }
    }
}

//MARK: - TableConfigure
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.countryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = viewModel.countryItems[indexPath.row].countryName
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cities = viewModel.countryItems[indexPath.row].cities,
           !cities.isEmpty {
            let controller = storyboard?.instantiateViewController(withIdentifier: "\(CityController.self)") as! CityController
            
            
            let data = viewModel.countryItems[indexPath.row]
            
            controller.viewModel = CityViewModel(country: data)
            
            controller.viewModel = .init(country: data)
            
            controller.viewModel?.country = data
            
            navigationController?.show(controller, sender: nil)
        } else {
            showErrorAlert()
        }
    }
}
