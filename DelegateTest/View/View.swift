//
//  View.swift
//  DelegateTest
//
//  Created by ditthales on 29/09/22.
//

import UIKit

class View: UIView{
    
    weak var delegate: ButtonDelegate?
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Mostrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = .blue
        button.layer.cornerRadius = 25
        button.backgroundColor = .blue
        //button.configuration = .filled()
        button.layer.shadowOffset = CGSize(width: 0, height: 3)
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.25
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupConstraints()
        setupAdittionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy(){
        self.addSubview(button)
    }
    
    
    func setupConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            button.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    func setupAdittionalConfiguration(){
        self.backgroundColor = .white
        
        button.addTarget(self, action: #selector(tappedButton(sender:)), for: .touchUpInside)
        
    }
    
    @objc func tappedButton(sender: UIButton){
        //como acessar informações do Model, ou realizar alguma outra atividade que seria responsabilidade do ViewController?
        delegate?.mostrar()
       
    }
    
}
