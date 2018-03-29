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
    
    public static func makeLabel(adjustsFontSizeToFitWidth: Bool, font: UIFont, textAlignment: NSTextAlignment, numberOfLines: Int) -> UILabel {
        let label: UILabel = {
            let label = UILabel()
            label.numberOfLines = numberOfLines
            label.textAlignment = textAlignment
            label.font = font
            label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
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
            imageView.contentMode = .scaleAspectFill
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
            imageView.contentMode = .scaleAspectFill
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
            imageView.contentMode = .scaleAspectFill
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
    
    public static func makeTextView(delegate: UITextViewDelegate, font: UIFont) -> UITextView {
        let textView: UITextView = {
            let tv = UITextView()
            tv.font = font
            tv.delegate = delegate
            tv.translatesAutoresizingMaskIntoConstraints = false
            return tv
        }()
        return textView
    }
    
    public static func make(delegate: UISearchBarDelegate, searchBarStyle: UISearchBarStyle, keyboardType: UIKeyboardType, placeholder: String?) -> UISearchBar {
        let searchBar: UISearchBar = {
            let search = UISearchBar()
            search.searchBarStyle = searchBarStyle
            search.delegate = delegate
            search.placeholder = placeholder
            search.keyboardType = keyboardType
            search.translatesAutoresizingMaskIntoConstraints = false
            return search
        }()
        return searchBar
    }
    
    public static func makeSegmentedControl(items: [Any], selectedSegmentIndex: Int, tintColor: UIColor?) -> UISegmentedControl {
        let segmentedControl: UISegmentedControl = {
            let sc = UISegmentedControl(items: items)
            sc.tintColor = tintColor
            sc.selectedSegmentIndex = selectedSegmentIndex
            sc.translatesAutoresizingMaskIntoConstraints = false
            return sc
        }()
        return segmentedControl
    }
    
    public static func makeSlider(minimumValue: Float, maximumValue: Float, minimumValueImage: UIImage?, maximumValueImage: UIImage?) -> UISlider {
        let slider: UISlider = {
            let slider = UISlider()
            slider.minimumValue = minimumValue
            slider.minimumValueImage = minimumValueImage
            slider.maximumValue = maximumValue
            slider.maximumValueImage = maximumValueImage
            slider.translatesAutoresizingMaskIntoConstraints = false
            return slider
        }()
        return slider
    }
    
    public static func makeSwitch(isOn: Bool) -> UISwitch {
        let mySwitch: UISwitch = {
            let myswitch = UISwitch()
            myswitch.isOn = isOn
            myswitch.translatesAutoresizingMaskIntoConstraints = false
            return myswitch
        }()
        return mySwitch
    }
}
