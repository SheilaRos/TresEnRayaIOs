//
//  ViewController.swift
//  TresEnRaya
//
//  Created by DAM on 24/11/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var turno = true;
    @IBOutlet weak var textoTurno: UILabel!
    @IBOutlet weak var textoInfo: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    @IBAction func accionBotones(_ sender: UIButton) {
        if(sender.isEnabled) {
            textoInfo.text = ""
            if(turno){
                sender.setBackgroundImage(#imageLiteral(resourceName: "Torracat.png"), for: .normal)
                turno = false
                textoTurno.text = "Turno 2"
            }else{
                sender.setBackgroundImage(#imageLiteral(resourceName: "Rowlet.png"), for: .normal)
                turno =  true
                textoTurno.text = "Turno 1"
            }
            sender.isEnabled = false
        }else{
            textoInfo.text = "La casilla ya está ocupada"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

