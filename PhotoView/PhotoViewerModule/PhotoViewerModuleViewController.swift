//
//  PhotoViewerModuleViewController.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

final class PhotoViewerModuleViewController: UIViewController, PhotoViewerModuleView {

    // MARK: - Outlets

    // MARK: - Lifecycle

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions

    // MARK: - PhotoViewerModuleView

    var presenter: PhotoViewerModulePresenter?
}
