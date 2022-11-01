//
//  ViewController.swift
//  contador
//
//  Created by ICMMAC08-5617 on 24/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var Resultado: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Resultado.isHidden = true
    }

    
    @IBAction func check(_ sender: Any) {
        count = Int(input.text!) ?? 0
        multiplo10()
        view.endEditing(true)
        Resultado.isHidden = false
    }
    
    func multiplo10(){
        if count%10 == 0 {
            Resultado.text = "multiplo de 10"
    
        } else{
            Resultado.text = "Não é multiplo de 10"
        }
    }
    
}

