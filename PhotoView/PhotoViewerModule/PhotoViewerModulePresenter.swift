//
//  PhotoViewerModulePresenter.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class PhotoViewerModulePresenterImpl: PhotoViewerModulePresenter {

    weak var view: PhotoViewerModuleView?
    var interactor: PhotoViewerModuleInteractor
    let router: PhotoViewerModuleRouter

    // MARK: - State

    var state: PhotoViewerModuleState

    // MARK: - Init

    init(view: PhotoViewerModuleView,
         interactor: PhotoViewerModuleInteractor,
         router: PhotoViewerModuleRouter,
         state: PhotoViewerModuleState) {

        self.view = view
        self.interactor = interactor
        self.router = router
        self.state = state
    }

    // MARK: - PhotoViewerModulePresenter

}
