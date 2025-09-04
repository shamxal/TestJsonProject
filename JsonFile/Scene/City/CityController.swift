//
//  CityController.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 21.08.25.
//

import UIKit

class CityController: UIViewController {
    
//    var viewModel = CityViewModel(country: <#Country#>)
    var viewModel: CityViewModel?
    
    //var viewModel2: ProductDetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = viewModel?.country.countryName ?? ""
    }
}

extension CityController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.country.cities?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = viewModel?.country.cities?[indexPath.row].name
        cell?.detailTextLabel?.text = viewModel?.country.cities?[indexPath.row].museum?.name
        return cell!
    }
}
