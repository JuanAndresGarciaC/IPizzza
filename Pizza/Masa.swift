//
//  Masa.swift
//  Pizza
//
//  Created by Juan Andres Garcia C on 10/11/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class Masa: UIViewController {
    
    var tamanO = "0"
    var masa = 0
    
    @IBOutlet weak var Tamaño: UILabel!
    
    @IBAction func Delgada(_ sender: Any) {
        masa = 1
    }
    
    @IBAction func Crujiente(_ sender: Any) {
        masa = 2
    }
    
    @IBAction func gruesa(_ sender: Any) {
        masa = 3
    }
    

    
    func mas() -> String {
        
        var solucion = "nada"
        
        if masa == 1{
            solucion = "Masa de la Pizza: delgada"
        }else if masa == 2{
            solucion = "Masa de la Pizza: crujiente"
        }else if masa == 3 {
            solucion = "Masa de la Pizza: gruesa"
        }else{
            print("Elige masa")
        }
        print(solucion)
        return(solucion)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("vista masa antes de aparecer")
        Tamaño.text = tamanO
   
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
        let resultado = mas()
        let sigVista=segue.destination as! Queso
        sigVista.masA = resultado
        print(sigVista.masA)
        let sigVista2 = segue.destination as! Queso
        sigVista2.tamanO = tamanO
        print(sigVista2.tamanO)
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
