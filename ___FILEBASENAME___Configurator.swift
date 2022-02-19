//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class ___VARIABLE_ModuleName___Configurator: ___VARIABLE_ModuleName___ConfiguratorProtocol {
    
    // MARK: - Static methods
    static func configure(_ vc: ___VARIABLE_ModuleName___ViewProtocol) {
        
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let router = ___VARIABLE_ModuleName___Router()
        
        interactor.presenter = presenter
        
        vc.presenter = presenter
        
        router.view = vc
        
        presenter.interactor = interactor
        presenter.view = vc
        presenter.router = router

    }
    
}
