//
//  Queso.swift
//  Pizza
//
//  Created by Juan Andres Garcia C on 10/11/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class Queso: UIViewController {
    var tamanO = "0"
    var masA = "0"
    var queso = 0
    
    @IBAction func Parmesano(_ sender: Any) {
        queso = 1
    }
    
    @IBAction func americano(_ sender: Any) {
        queso = 2
    }
    
    
    @IBAction func Sinqueso(_ sender: Any) {
        queso = 3
    }
    
    
    func ques() -> String {
        
        var solucion = "nada"
        
        if queso == 1{
            solucion = "Queso de la Pizza: Parmesano"
        }else if queso == 2{
            solucion = "Queso de la Pizza: Americano"
        }else if queso == 3 {
            solucion = "Queso de la Pizza: Sin Queso"
        }else{
            print("Elige queso")
        }
        return(solucion)
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = ques()
        let sigVista=segue.destination as! Ingrediente
        sigVista.quesO = resultado
        let sigVista3=segue.destination as! Ingrediente
        sigVista3.masA = masA
        let sigVista2 = segue.destination as! Ingrediente
        sigVista2.tamanO = tamanO
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
