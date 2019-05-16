//
//  PhotoViewerModuleProtocols.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

// MARK: - Router

protocol PhotoViewerModuleRouter: AnyObject {
    func dismissView()
}

// MARK: - Presenter

protocol PhotoViewerModulePresenter: AnyObject {

}

// MARK: - Interactor

protocol PhotoViewerModuleInteractor: AnyObject {

}

// MARK: - InteractorOutput

protocol PhotoViewerModuleInteractorOutput: AnyObject {

}

// MARK: - View

protocol PhotoViewerModuleView: AnyObject {
	var presenter: PhotoViewerModulePresenter? { get set }
}
