//
//  PhotoListGridModulePresenter.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class PhotoListGridModulePresenterImpl: PhotoListGridModulePresenter {

    weak var view: PhotoListGridModuleView?
    var interactor: PhotoListGridModuleInteractor
    //let router: PhotoListGridModuleRouter

    // MARK: - State

    var state: PhotoListGridModuleState?
    
    var output: PhotoListGridModuleOutput?

    // MARK: - Init

    init(view: PhotoListGridModuleView,
         interactor: PhotoListGridModuleInteractor) {
         //router: PhotoListGridModuleRouter,
         //state: PhotoListGridModuleState) {

        self.view = view
        self.interactor = interactor
        //self.router = router
        //self.state = state
    }

    // MARK: - PhotoListGridModulePresenter

}
