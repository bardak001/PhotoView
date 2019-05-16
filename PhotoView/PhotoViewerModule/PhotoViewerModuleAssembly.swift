//
//  PhotoViewerModuleAssembly.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class PhotoViewerModuleAssembly {

    static func createModule() -> UIViewController {
        let view = PhotoViewerModuleViewController()
        let interactor = PhotoViewerModuleInteractorImpl()
        let router = PhotoViewerModuleRouterImpl()
        let state = PhotoViewerModuleState()
        let presenter = PhotoViewerModulePresenterImpl(view: view,
                                                    interactor: interactor,
                                                    router: router,
                                                    state: state)

        view.presenter = presenter
        interactor.output = presenter
        router.viewController = view

        return view
    }
}
