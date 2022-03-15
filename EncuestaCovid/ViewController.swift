//
//  ViewController.swift
//  EncuestaCovid
//
//  Created by Alumno on 3/7/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vwCover: UIView!
    @IBOutlet weak var vwInfoGeneral: UIView!
    @IBOutlet weak var vwPreguntas: UIView!
    @IBOutlet weak var vwWarning: UIView!
    
    
    @IBOutlet weak var scTipoUsuario: UISegmentedControl!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var txtMatricula: UITextField!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var scContactoCovid: UISegmentedControl!
    @IBOutlet weak var swPositivoCovid: UISwitch!
    @IBOutlet weak var swFiebre: UISwitch!
    @IBOutlet weak var swTos: UISwitch!
    @IBOutlet weak var swDolorCabeza: UISwitch!
    @IBOutlet weak var swCansancio: UISwitch!
    @IBOutlet weak var swPerdidaSentido: UISwitch!
    @IBOutlet weak var swNinguno: UISwitch!
    @IBOutlet weak var scHaSidoVacunado: UISegmentedControl!
    
    
    
    
    @IBOutlet weak var lblWarning: UILabel!
    
    override func viewDidLoad() {
        vwInfoGeneral.isHidden = false
        vwPreguntas.isHidden = true
        vwWarning.isHidden = true
        
        super.viewDidLoad()
        let gradiente = CAGradientLayer()
        gradiente.frame = vwCover.bounds
        gradiente.colors = [UIColor(red:0, green: 30/255, blue: 98/255, alpha: 1).cgColor, UIColor(red:200/255, green: 16/255, blue: 46/255, alpha: 1).cgColor]
        gradiente.startPoint = CGPoint(x: 0, y: 0.5)
        gradiente.endPoint = CGPoint(x: 1, y: 0.5)
        gradiente.shouldRasterize = true
        
        vwCover.layer.addSublayer(gradiente)
        vwCover.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
    }
    

    @IBAction func doChangeTipoUsuario(_ sender: Any) {
        if (scTipoUsuario.selectedSegmentIndex == 0){
            lblMatricula.text = "Matrícula"
            txtMatricula.placeholder = "Ingresa Matrícula"
        } else if (scTipoUsuario.selectedSegmentIndex == 1){
            lblMatricula.text = "Número de profesor"
            txtMatricula.placeholder = "Ingresa número de profesor"
        } else if (scTipoUsuario.selectedSegmentIndex == 2){
            lblMatricula.text = "Número de empleado"
            txtMatricula.placeholder = "Ingresa número de empleado"
        }
    }
    
    
    
    
    @IBAction func doTapSiguiente(_ sender: Any) {
        
        if (txtMatricula.text == nil || txtMatricula.text!.isEmpty){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, te falto poner la matricula"
        } else if (txtNombre.text == nil || txtNombre.text!.isEmpty){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, te falto poner tu nombre"
        } else if (txtEmail.text == nil || txtEmail.text!.isEmpty){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, te falto poner tu correo"
        } else {
            vwInfoGeneral.isHidden = true
            vwPreguntas.isHidden = false
        }
        
    }
    @IBAction func doTapAtras(_ sender: Any) {
        vwInfoGeneral.isHidden = false
        vwPreguntas.isHidden = true
    }
    
    @IBAction func doTapEnviar(_ sender: Any) {
        if (scContactoCovid.selectedSegmentIndex == -1){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, te falto contestar si haz estado en contacto con alguien con covid"
        } else if (swPositivoCovid.isOn == false && swFiebre.isOn == false && swTos.isOn == false && swDolorCabeza.isOn == false && swCansancio.isOn == false && swPerdidaSentido.isOn == false && swNinguno.isOn == false){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, ocupas seleccionar uno"
        } else if (scHaSidoVacunado.selectedSegmentIndex == -1){
            vwWarning.isHidden = false
            lblWarning.text = "Amigo detente ahí, te falto contestar si haz sido vacunado"
        } else {
            vwInfoGeneral.isHidden = true
            vwPreguntas.isHidden = false
        }
        print(scContactoCovid.selectedSegmentIndex)
        
    }
    
    @IBAction func doTapOkey(_ sender: Any) {
        vwWarning.isHidden = true
    }
    

}

