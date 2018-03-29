//
//  DRViewMaker.swift
//  DRViewMaker
//
//  Created by Dejan Ribnikar on 29/03/2018.
//  Copyright © 2018 Dejan Ribnikar. All rights reserved.
//

import UIKit

public class DRViewMaker {
    private init() {}
    
    public static func makeLabel() -> UILabel {
        let label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        return label
    }
    
    public static func makeButtonWithNameAndAction(type: UIButtonType, name: String, nameControlState: UIControlState, target: Any?, targetAction: Selector, targetEventType: UIControlEvents) -> UIButton {
        let button: UIButton = {
            let button = UIButton(type: type)
            button.setTitle(name, for: nameControlState)
            button.addTarget(target, action: targetAction, for: targetEventType)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        return button
    }
    
    public static func makeButtonWithImageAndAction(type: UIButtonType, image: UIImage, imageControlState: UIControlState, target: Any?, targetAction: Selector, targetEventType: UIControlEvents) -> UIButton {
        let button: UIButton = {
            let button = UIButton(type: type)
            button.setImage(image, for: imageControlState)
            button.imageView?.contentMode = .scaleAspectFill
            button.addTarget(target, action: targetAction, for: targetEventType)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        return button
    }
    
    public static func makeImageViewWithCornerRadius(image: UIImage?, cornerRadius: CGFloat) -> UIImageView {
        let imageView: UIImageView = {
            let imageView = UIImageView(image: image)
            imageView.layer.cornerRadius = cornerRadius
            imageView.layer.masksToBounds = true
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        return imageView
    }
    
    public static func makeImageViewWithGestureRecognizer(image: UIImage?, gestureRecognizer: UIGestureRecognizer) -> UIImageView {
        let imageView: UIImageView = {
            let imageView = UIImageView(image: image)
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(gestureRecognizer)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        return imageView
    }
    
    public static func makeImageViewWithImage(image: UIImage?) -> UIImageView {
        let imageView: UIImageView = {
            let imageView = UIImageView(image: image)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        return imageView
    }
    
    public static func makeTextField(placeholder: String?, autocapitalizationType: UITextAutocapitalizationType, autocorrectionType: UITextAutocorrectionType, isSecureTextEntry: Bool, delegate: UITextFieldDelegate) -> UITextField {
        let textField: UITextField = {
            let textField = UITextField()
            textField.placeholder = placeholder
            textField.autocapitalizationType = autocapitalizationType
            textField.autocorrectionType = autocorrectionType
            textField.isSecureTextEntry = isSecureTextEntry
            textField.delegate = delegate
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
        return textField
    }
    
    public static func makeTableView(dataSource: UITableViewDataSource, delegate: UITableViewDelegate, registerCellClass: AnyClass?, forCellReuseIdentifier: String) -> UITableView {
        let tableView: UITableView = {
            let tableView = UITableView()
            tableView.dataSource = dataSource
            tableView.delegate = delegate
            tableView.register(registerCellClass, forCellReuseIdentifier: forCellReuseIdentifier)
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()
        return tableView
    }
    
    public static func makeCollectionView(collectionViewLayout: UICollectionViewLayout, dataSource: UICollectionViewDataSource, delegate: UICollectionViewDelegate) -> UICollectionView {
        let collectionView: UICollectionView = {
            let cv = UICollectionView()
            cv.collectionViewLayout = collectionViewLayout
            cv.dataSource = dataSource
            cv.delegate = delegate
            cv.translatesAutoresizingMaskIntoConstraints = false
            return cv
        }()
        return collectionView
    }
}
