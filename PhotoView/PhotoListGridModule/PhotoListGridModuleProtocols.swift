//
//  PhotoListGridModuleProtocols.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

// MARK: - Router

protocol PhotoListGridModuleRouter: AnyObject {
    func dismissView()
}

// MARK: - Presenter

protocol PhotoListGridModulePresenter: AnyObject {

}

// MARK: - Interactor

protocol PhotoListGridModuleInteractor: AnyObject {

}

// MARK: - InteractorOutput

protocol PhotoListGridModuleInteractorOutput: AnyObject {

}

// MARK: - View

protocol PhotoListGridModuleView: AnyObject {
	var presenter: PhotoListGridModulePresenter? { get set }
}



protocol PhotoListGridModuleOutput: AnyObject {
}
protocol PhotoListGridModuleInput: AnyObject {
}



