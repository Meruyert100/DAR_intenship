//
//  breakingLinesView.swift
//  instagramLayout
//
//  Created by Meruyert Tastandiyeva on 1/27/21.
//

import UIKit

class BreakingLinesView: UIView {

    lazy var firstLineView: UIView = {
       let view = UIView()
       setStyles(view: view)
       return view
    }()
    
    lazy var orLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .center
        label.text = "ИЛИ"
        label.textColor = .gray
        return label
    }()
    
    lazy var secondLineView: UIView = {
       let view = UIView()
       setStyles(view: view)
       return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpViews() {
        [firstLineView, orLabel, secondLineView].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        firstLineView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true
        firstLineView.heightAnchor.constraint(equalToConstant: 0.2).isActive = true
        firstLineView.widthAnchor.constraint(equalToConstant: 145).isActive = true
        firstLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        orLabel.leadingAnchor.constraint(equalTo: firstLineView.trailingAnchor, constant: 10).isActive = true
        orLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        orLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //orLabel.widthAnchor.constraint(equalToConstant: 32).isActive = true
        
        secondLineView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true
        secondLineView.heightAnchor.constraint(equalToConstant: 0.2).isActive = true
        secondLineView.widthAnchor.constraint(equalToConstant: 145).isActive = true
        secondLineView.leadingAnchor.constraint(equalTo: orLabel.trailingAnchor, constant: 10).isActive = true
        secondLineView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }

    
    public func setStyles(view: UIView) {
        view.backgroundColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
    }

}
