//
//  ViewController.swift
//  sliderImg
//
//  Created by Tiago Serra on 04/11/15.
//  Copyright © 2015 Tiago Serra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Identificar o valor do slider
    @IBOutlet weak var sliderValue: UISlider!
    
    // Identificar a imagem
    @IBOutlet weak var imgView: UIImageView!
    
    // Identificar label
    @IBOutlet weak var lbNumberOpc: UILabel!
    
    // Ação de movimento do slider
    @IBAction func sliderAction(sender: AnyObject) {
        /* primeiro faremos a chamada do imgView e definiremos
        o alpha dele (alpha defini a ipacidade do objeto), e
        colocaremos ele para receber o valor do slider. Para
        que isso ocorra temos que primeiro transformar o valor
        recebido em CGFloat pois o alpha só recebe nesse
        formato. Iremos aplicar o CGFloat() e dentro 
        especificaremos de onde vem no caso sliderValue e
        completaremos falando para o Swift que iremos
        pegar apenas o value dele.
        */
        imgView.alpha = CGFloat(sliderValue.value)
        
        // Aqui nós iremos exibir o value do slider no label
        lbNumberOpc.text = String(sliderValue.value)
        
        // Se 1 exibe a mensagem
        if imgView.alpha == 1 {
            lbNumberOpc.text = "Full"
        }
        
        // Se 0 exibe a mensagem
        if imgView.alpha == 0 {
            lbNumberOpc.text = "Blank"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Zerar Label
        lbNumberOpc.text = ""
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

