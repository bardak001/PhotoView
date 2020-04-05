//
//  MainScreenViewController.swift
//  PhotoView
//
//  Created Радим Гасанов on 15/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit
import SnapKit

final class MainScreenViewController: UIViewController, MainScreenView {

    var presenter: MainScreenPresenter?
    var photoListGridModuleViewFactory: (() -> (PhotoListGridModuleViewImpl))?
    var photoListGridModuleView: PhotoListGridModuleViewImpl?

	override func viewDidLoad() {
        super.viewDidLoad()
        addSearchView()
    }

    func addSearchView() {
        guard self.photoListGridModuleView == nil,
        let photoListGridModuleView = photoListGridModuleViewFactory?() else { return }
        self.photoListGridModuleView = photoListGridModuleView
        self.view.addSubview(photoListGridModuleView)
        photoListGridModuleView.snp.makeConstraints { (photoView) -> Void in
            //print("addSearchView frame \(view.frame)")

            photoView.top.equalTo(view).offset(view.frame.height)
                       // print("view height \(view.frame.height)")
            photoView.left.right.bottom.equalToSuperview()
        }
        view.layoutIfNeeded()
        print("photoListGridModuleView frame \(photoListGridModuleView.frame)")
        }
}
