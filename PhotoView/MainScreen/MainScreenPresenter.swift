//
//  MainScreenPresenter.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class MainScreenPresenterImpl: MainScreenPresenter {

    weak var view: MainScreenView?
    var interactor: MainScreenInteractor
    let router: MainScreenRouter
    
    var photoListGridModuleInput: PhotoListGridModuleInput?

    // MARK: - State

    var state: MainScreenState

    // MARK: - Init

    init(view: MainScreenView,
         interactor: MainScreenInteractor,
         router: MainScreenRouter,
         state: MainScreenState) {

        self.view = view
        self.interactor = interactor
        self.router = router
        self.state = state
    }

    // MARK: - MainScreenPresenter

}
