//
//  Alumno.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Album {
    var album : String
    var banda : String
    var genero : String
    var año : String
    var canciones : [Cancion]
    var discografia : String
    var productores : String
    var premios : String
    var aceptacion : String
    var imagen : String
    var imagen2 : String
    
    
    init(album: String, banda: String, genero: String, año: String, canciones: [Cancion], discografia: String, productores: String, premios: String, aceptacion: String, imagen: String, imagen2: String) {
        self.album = album
        self.banda = banda
        self.genero = genero
        self.año = año
        self.canciones = canciones
        self.discografia = discografia
        self.productores = productores
        self.premios = premios
        self.aceptacion = aceptacion
        self.imagen = imagen
        self.imagen2 = imagen2
    }
}
