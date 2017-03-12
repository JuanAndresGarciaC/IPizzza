//
//  Ingrediente.swift
//  Pizza
//
//  Created by Juan Andres Garcia C on 10/11/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class Ingrediente: UIViewController {
    var tamanO = "0"
    var masA = "0"
    var quesO = "0"
    var ingrediente = 0
    

    @IBAction func Jamon(_ sender: Any) {
        ingrediente = 1
    }
    
    @IBAction func Pollo(_ sender: Any) {
        ingrediente = 2
    }
    
    @IBAction func Piña(_ sender: Any) {
        ingrediente = 3
    }
    
    @IBAction func Champ(_ sender: Any) {
        ingrediente = 5
    }
    
    @IBAction func Pepperoni(_ sender: Any) {
        ingrediente = 4
    }
    
    func ingr() -> String {
        
        var solucion = "nada"
        
        if ingrediente == 1{
            solucion = "Ingrediente de la Pizza: Jamon"
        }else if ingrediente == 2{
            solucion = "Ingrediente de la Pizza: Pollo"
        }else if ingrediente == 3 {
            solucion = "Ingrediente de la Pizza: Piña"
        }else if ingrediente == 4 {
            solucion = "Ingrediente de la Pizza: Pepperoni"
        }else if ingrediente == 5{
            solucion = "Ingrediente de la Pizza: Champiñones"
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
        let resultado = ingr()
        let sigVista=segue.destination as! confirmacion
        sigVista.ingredientE = resultado
        let sigVista4=segue.destination as! confirmacion
        sigVista4.quesO = quesO
        let sigVista3=segue.destination as! confirmacion
        sigVista3.masA = masA
        let sigVista2 = segue.destination as! confirmacion
        sigVista2.tamanO = tamanO    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
