//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit


// MARK: - View
protocol ___VARIABLE_ModuleName___ViewProtocol: UIViewController {
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol! { get set }
}


// MARK: - Interactor
protocol ___VARIABLE_ModuleName___InteractorProtocol {
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol! { get set }
}


// MARK: - Presenter
protocol ___VARIABLE_ModuleName___PresenterProtocol {
    var view: ___VARIABLE_ModuleName___ViewProtocol! { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorProtocol! { get set }
    var router: ___VARIABLE_ModuleName___RouterProtocol! { get set }
}


// MARK: - Router
protocol ___VARIABLE_ModuleName___RouterProtocol {
    var view: ___VARIABLE_ModuleName___ViewProtocol! { get set }
}


//MARK: - Configurator
protocol ___VARIABLE_ModuleName___ConfiguratorProtocol {
    static func configure(_ vc: ___VARIABLE_ModuleName___ViewProtocol)
}
