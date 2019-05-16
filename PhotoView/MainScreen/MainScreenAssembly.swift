//
//  MainScreenAssembly.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class MainScreenAssembly {

    static func createModule() -> MainScreenViewController { //UIViewController было
        let view = MainScreenViewController()
        let interactor = MainScreenInteractorImpl()
        let router = MainScreenRouterImpl()
        let state = MainScreenState()
        let presenter = MainScreenPresenterImpl(view: view,
                                                interactor: interactor,
                                                router: router,
                                                state: state)

        
        view.photoListGridModuleViewFactory = { [weak presenter] in
            let (input, view) = PhotoListGridModuleAssembly.createModule(output: (presenter as? PhotoListGridModuleOutput)) //????
            presenter?.photoListGridModuleInput = input
            view.backgroundColor = .red
            return view
        }
        
        view.presenter = presenter
        interactor.output = presenter
        router.viewController = view

        return view
    }
}
