//
//  confirmacion.swift
//  Pizza
//
//  Created by Juan Andres Garcia C on 10/11/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class confirmacion: UIViewController {
    
    var tamanO = "0"
    var masA = "0"
    var quesO = "0"
    var ingredientE = "0"
    
    
    
    
    @IBOutlet weak var tamanno: UILabel!
    
    @IBOutlet weak var Massa: UILabel!
    
    @IBOutlet weak var Quesso: UILabel!
    
    @IBOutlet weak var ingrrediente: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        tamanno.text = tamanO
        Massa.text = masA
        Quesso.text = quesO
        ingrrediente.text = ingredientE
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
