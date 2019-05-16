//
//  PhotoListGridModuleAssembly.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class PhotoListGridModuleAssembly {

    static func createModule(output: PhotoListGridModuleOutput?) -> (PhotoListGridModuleInput,  PhotoListGridModuleViewImpl) { //????
        let view = PhotoListGridModuleViewImpl()
        let interactor = PhotoListGridModuleInteractorImpl()
        //let router = PhotoListGridModuleRouterImpl()
        //let state = PhotoListGridModuleState()
        let presenter = PhotoListGridModulePresenterImpl(view: view,
                                                        interactor: interactor)
                                                        //router: router,
                                                        //state: state)

        view.presenter = presenter
        interactor.output = presenter
        presenter.output = output
        //router.viewController = view

        return (presenter, view) //????
    }
}
