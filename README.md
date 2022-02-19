# VIPER Generator
Xcode File Template for generating VIPER modules: ```View```, ```Interactor```, ```Presenter```, ```Router```, ```Configurator``` and ```Contract```.

# How To Install
1. Clone the repository
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. If Templates folder doesn't exist, create it
3. Move ```VIPER Generator.xctemplate``` to ```Templates``` folder

# Use
1. Open Xcode
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```VIPER Generator``` template and choose it.
4. Set a name for your module. Examples: ```Gallery, Main, Settings```

# Generated Code

Let's suppose we wanted to create the ```Settings``` module. Here's how it would look:

### Contract
```SettingsContract.swift```
```swift
import Foundation
import UIKit


// MARK: - View
protocol SettingsViewProtocol: UIViewController {
    var presenter: SettingsPresenterProtocol! { get set }
}


// MARK: - Interactor
protocol SettingsInteractorProtocol {
    var presenter: SettingsPresenterProtocol! { get set }
}


// MARK: - Presenter
protocol SettingsPresenterProtocol {
    var view: SettingsViewProtocol! { get set }
    var interactor: SettingsInteractorProtocol! { get set }
    var router: SettingsRouterProtocol! { get set }
}


// MARK: - Router
protocol SettingsRouterProtocol {
    var view: SettingsViewProtocol! { get set }
}


//MARK: - Configurator
protocol SettingsConfiguratorProtocol {
    static func configure(_ vc: SettingsViewProtocol)
}
```

### Configurator
```SettingsConfigurator.swift```
```swift
import Foundation

class SettingsConfigurator: SettingsConfiguratorProtocol {
    
    // MARK: - Static methods
    static func configure(_ vc: SettingsViewProtocol) {
        
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter()
        let router = SettingsRouter()
        
        interactor.presenter = presenter
        
        vc.presenter = presenter
        
        router.view = vc
        
        presenter.interactor = interactor
        presenter.view = vc
        presenter.router = router

    }
    
}
```

### View
```SettingsView.swift```
```swift
import UIKit

class SettingsView: UIViewController, SettingsViewProtocol {
    
    // MARK: - Properties
    var presenter: SettingsPresenterProtocol!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        SettingsConfigurator.configure(self)
    }

    
}
```

### Interactor
```SettingsInteractor.swift```
```swift
import Foundation

class SettingsInteractor: SettingsInteractorProtocol {

    // MARK: - Properties
    var presenter: SettingsPresenterProtocol!
}
```

### Presenter
```SettingsPresenter.swift```

```swift
import Foundation

class SettingsPresenter: SettingsPresenterProtocol {

    // MARK: - Properties
    var view: SettingsViewProtocol!
    
    var interactor: SettingsInteractorProtocol!
    
    var router: SettingsRouterProtocol!
    
}
```

### Router
```SettingsRouter.swift```
```swift
import Foundation
import UIKit

class SettingsRouter: SettingsRouterProtocol {
    
    // MARK: - Properties
    var view: SettingsViewProtocol!
    
    
}
```
