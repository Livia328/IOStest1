//
//  testView.swift
//  test1
//
//  Created by 陈可轩 on 2023/11/2.
//

import UIKit

class testView: UIView {
    
    var buttonAdd:UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupButtonAdd()
        
        initConstraints()
    }
    
    
    func setupButtonAdd(){
        buttonAdd = UIButton(type: .system)
        buttonAdd.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonAdd.setTitle("Add Note", for: .normal)
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonAdd)
    }
    
    func initConstraints() {
        // Create constraints for the button
        NSLayoutConstraint.activate([
            buttonAdd.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonAdd.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            buttonAdd.widthAnchor.constraint(equalToConstant: 120), // Set a specific width
            buttonAdd.heightAnchor.constraint(equalToConstant: 40), // Set a specific height
        ])
    }
    
    //MARK: initializing constraints...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
