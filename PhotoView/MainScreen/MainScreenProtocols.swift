//
//  MainScreenProtocols.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

// MARK: - Router

protocol MainScreenRouter: AnyObject {
    func dismissView()
}

// MARK: - Presenter

protocol MainScreenPresenter: AnyObject {

}

// MARK: - Interactor

protocol MainScreenInteractor: AnyObject {

}

// MARK: - InteractorOutput

protocol MainScreenInteractorOutput: AnyObject {

}

// MARK: - View

protocol MainScreenView: AnyObject {
	var presenter: MainScreenPresenter? { get set }
}
