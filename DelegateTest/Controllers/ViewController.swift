//
//  ViewController.swift
//  DelegateTest
//
//  Created by ditthales on 29/09/22.
//

import UIKit

class ViewController: UIViewController {

    let minhaView = View()
    let informacoes = Model.dados()
    
    override func viewDidLoad() {
        self.view = minhaView
        super.viewDidLoad()
        minhaView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: ButtonDelegate{
    func mostrar() {
        print(informacoes[0].nome)
        
    }
}

