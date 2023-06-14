//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {
    
    // MARK: - Properties
    weak var view: ___VARIABLE_ModuleName___ViewProtocol!
    
    //MARK: - Methods

    func pop(animated: Bool) {
        view.navigationController?.popViewController(animated: animated)
    }
    
    func dismiss(animated: Bool) {
        view.dismiss(animated: animated)
    }
    
}
