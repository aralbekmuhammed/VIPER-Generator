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
    
    //MARK: - Init

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        ___VARIABLE_ModuleName___Configurator.configure(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        presenter.viewDidLoad()
    }

    private func setupViews(){
        
    }
    
    private func setupConstraints(){
        
    }

    
}
