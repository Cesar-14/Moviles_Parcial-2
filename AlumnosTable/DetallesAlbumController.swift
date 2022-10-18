//
//  DetallesAlbumController.swift
//  AlbumTable
//
//  Created by Album on 9/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesAlbumController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblBanda: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblDiscografia: UILabel!
    @IBOutlet weak var lblProductores: UILabel!
    @IBOutlet weak var lblPremios: UILabel!
    @IBOutlet weak var lblAceptacion: UILabel!
    
    
    @IBOutlet weak var Image2: UIImageView!
    
    var album : Album?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalles de album"
        
        if album != nil {
            self.title = album!.album
            lblBanda.text = album!.banda
            lblGenero.text = album!.genero
            lblAño.text = album!.año
            lblDiscografia.text = album!.discografia
            lblProductores.text = album!.productores
            lblPremios.text = album!.premios
            lblAceptacion.text = album!.aceptacion
            Image2.image = UIImage(named: album!.imagen2)
            
            Image2.layer.cornerRadius = 30
            Image2.clipsToBounds = true
            Image2.layer.borderWidth = 3
        }
        else {
            self.title = "Detalles de album"
        }
    }
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return album!.canciones.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCancion") as? CeldaCancionController
        celda?.lblCancion.text = album!.canciones[indexPath.row].nombre
        celda?.lblDuracion.text = album!.canciones[indexPath.row].duracion
        return celda!
    }
}
