//
//  Tamano.swift
//  Pizza
//
//  Created by Juan Andres Garcia C on 10/11/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class Tamano: UIViewController {
    
    var tamano : Int = 0
    
    
    @IBAction func pequena(_ sender: Any) {
        tamano = 1
        
    }
    
    @IBAction func mediana(_ sender: Any) {
        tamano = 2
        
    }
   
    @IBAction func grande(_ sender: Any) {
        tamano = 3
        
    }
    
    func tam() -> String {
        
        var solucion = "nada"
        
        if tamano == 1{
            solucion = "Tamaño de la Pizza: Pequeña"
        }else if tamano == 2{
            solucion = "Tamaño de la Pizza: Mediana"
        }else if tamano == 3 {
            solucion = "Tamaño de la Pizza: Grande"
        }else{
    
            solucion = "Elige tamaño"
        }
        print(solucion)
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
        let resultado = tam()
        print(resultado)
        let sigVista = segue.destination as! Masa
        print(resultado)
        sigVista.tamanO = resultado
        print(sigVista.tamanO)
        
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
