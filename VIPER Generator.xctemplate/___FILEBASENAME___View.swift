//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_ModuleName___View: UIViewController, ___VARIABLE_ModuleName___ViewProtocol {
    
    // MARK: - Properties
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        ___VARIABLE_ModuleName___Configurator.configure(self)
    }

    
}
