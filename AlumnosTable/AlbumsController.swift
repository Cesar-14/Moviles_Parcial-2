//
//  ViewController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlbumsController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvAlbums: UITableView!
    
    var Albums : [Album] = []
    var Canciones_1 : [Cancion] = []
    var Canciones_2 : [Cancion] = []
    var Canciones_3 : [Cancion] = []
    var Canciones_4 : [Cancion] = []
    var Canciones_5 : [Cancion] = []
    var Canciones_6 : [Cancion] = []
    var Canciones_7 : [Cancion] = []
    var Canciones_8 : [Cancion] = []
    var Canciones_9 : [Cancion] = []
    var Canciones_10 : [Cancion] = []
    var Canciones_11 : [Cancion] = []
    var Canciones_12 : [Cancion] = []
    var Canciones_13 : [Cancion] = []
    var Canciones_14 : [Cancion] = []
    var Canciones_15 : [Cancion] = []

    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    //Numero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Albums.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlbum") as? CeldaAlbumController
        celda?.lblAlbum.text = Albums[indexPath.row].album
        celda?.lblBanda.text = Albums[indexPath.row].banda
        celda?.lblGenero.text = Albums[indexPath.row].genero
        celda?.lblAño.text = Albums[indexPath.row].año
        celda?.image1.image = UIImage(named: Albums[indexPath.row].imagen)
        
        celda?.image1.layer.cornerRadius = 20
        celda?.image1.clipsToBounds = true
        celda?.image1.layer.borderWidth = 0
        
        return celda!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Canciones_1.append(Cancion(nombre: "Somewehere Only We Know", duracion: "2:25"))
        Canciones_1.append(Cancion(nombre: "This Is The Last Time", duracion: "2:45"))
        Canciones_1.append(Cancion(nombre: "Bend & break", duracion: "2:20"))
        Canciones_1.append(Cancion(nombre: "We Might As Well Be Strangers", duracion: "2:15"))
        Canciones_1.append(Cancion(nombre: "Everybody´s Changing", duracion: "2:58"))
        Canciones_1.append(Cancion(nombre: "Your Eyes Open", duracion: "2:05"))
        Canciones_1.append(Cancion(nombre: "She Has No Time", duracion: "3:13"))
        Canciones_1.append(Cancion(nombre: "Can´t Stop Now", duracion: "2:21"))
        Canciones_1.append(Cancion(nombre: "Sunshine", duracion: "2:51"))
        Canciones_1.append(Cancion(nombre: "Untitled 1", duracion: "3:10"))
        Canciones_1.append(Cancion(nombre: "Bedshaped", duracion: "2:41"))
        
        Canciones_2.append(Cancion(nombre: "Atlantic", duracion: "00:00"))
        Canciones_2.append(Cancion(nombre: "Is It Any Wonder?", duracion: "00:00"))
        Canciones_2.append(Cancion(nombre: "A Bad Dream", duracion: "00:00"))
        Canciones_2.append(Cancion(nombre: "The Frog Prince", duracion: "00:00"))
        Canciones_2.append(Cancion(nombre: "Broken Toy", duracion: "00:00"))
        
        Canciones_3.append(Cancion(nombre: "Spiralling", duracion: "00:00"))
        Canciones_3.append(Cancion(nombre: "The Lovers Are Losing", duracion: "00:00"))
        Canciones_3.append(Cancion(nombre: "Love Is The End", duracion: "00:00"))
        Canciones_3.append(Cancion(nombre: "Again and Again", duracion: "00:00"))
        Canciones_3.append(Cancion(nombre: "Better Than This", duracion: "00:00"))
        
        Canciones_4.append(Cancion(nombre: "Stop for a Minute", duracion: "00:00"))
        Canciones_4.append(Cancion(nombre: "Back In Time", duracion: "00:00"))
        Canciones_4.append(Cancion(nombre: "My Shadow", duracion: "00:00"))
        Canciones_4.append(Cancion(nombre: "Your Love", duracion: "00:00"))
        Canciones_4.append(Cancion(nombre: "Ishin Deshin", duracion: "00:00"))
        
        Canciones_5.append(Cancion(nombre: "You Are Young", duracion: "00:00"))
        Canciones_5.append(Cancion(nombre: "Silenced By The Night", duracion: "00:00"))
        Canciones_5.append(Cancion(nombre: "Disconnected", duracion: "00:00"))
        Canciones_5.append(Cancion(nombre: "Sovering Light Café", duracion: "00:00"))
        Canciones_5.append(Cancion(nombre: "Watch How You Go", duracion: "00:00"))
        
        Canciones_6.append(Cancion(nombre: "He Used To Be a Lovely Boy", duracion: "00:00"))
        Canciones_6.append(Cancion(nombre: "Thin Air", duracion: "00:00"))
        Canciones_6.append(Cancion(nombre: "To The End Of The Earth", duracion: "00:00"))
        Canciones_6.append(Cancion(nombre: "This Is The Last Time", duracion: "00:00"))
        Canciones_6.append(Cancion(nombre: "My Shadow", duracion: "00:00"))
        
        Canciones_7.append(Cancion(nombre: "Can´t Help falling In Love", duracion: "00:00"))
        Canciones_7.append(Cancion(nombre: "Suspicious Minds", duracion: "00:00"))
        Canciones_7.append(Cancion(nombre: "A little Less Conversation", duracion: "00:00"))
        Canciones_7.append(Cancion(nombre: "Unchained song", duracion: "00:00"))
        Canciones_7.append(Cancion(nombre: "All Shook Up", duracion: "00:00"))
        
        Canciones_8.append(Cancion(nombre: "Whiplash", duracion: "00:00"))
        Canciones_8.append(Cancion(nombre: "Fletcher´s Song In Club", duracion: "00:00"))
        Canciones_8.append(Cancion(nombre: "Caravan", duracion: "00:00"))
        Canciones_8.append(Cancion(nombre: "Overture", duracion: "00:00"))
        Canciones_8.append(Cancion(nombre: "All is Fine", duracion: "00:00"))
    
        Canciones_9.append(Cancion(nombre: "Bring Me To Life", duracion: "00:00"))
        Canciones_9.append(Cancion(nombre: "My Immortal", duracion: "00:00"))
        Canciones_9.append(Cancion(nombre: "Imaginary", duracion: "00:00"))
        Canciones_9.append(Cancion(nombre: "It´s So Hard", duracion: "00:00"))
        Canciones_9.append(Cancion(nombre: "Oh My Love", duracion: "00:00"))
        
        Canciones_10.append(Cancion(nombre: "Welcome To The Jungle", duracion: "00:00"))
        Canciones_10.append(Cancion(nombre: "Sweet Child O´Mine", duracion: "00:00"))
        Canciones_10.append(Cancion(nombre: "Patience", duracion: "00:00"))
        Canciones_10.append(Cancion(nombre: "Paradice City", duracion: "00:00"))
        Canciones_10.append(Cancion(nombre: "It´s So Easy", duracion: "00:00"))
        
        Canciones_11.append(Cancion(nombre: "Better", duracion: "00:00"))
        Canciones_11.append(Cancion(nombre: "If The World", duracion: "00:00"))
        Canciones_11.append(Cancion(nombre: "This I Love", duracion: "00:00"))
        Canciones_11.append(Cancion(nombre: "Shackler´s Revenge", duracion: "00:00"))
        Canciones_11.append(Cancion(nombre: "Sorry", duracion: "00:00"))
        
        Canciones_12.append(Cancion(nombre: "A Little Piece Of Heaven", duracion: "00:00"))
        Canciones_12.append(Cancion(nombre: "Afterlife", duracion: "00:00"))
        Canciones_12.append(Cancion(nombre: "Dear God", duracion: "00:00"))
        Canciones_12.append(Cancion(nombre: "Im Dead", duracion: "00:00"))
        Canciones_12.append(Cancion(nombre: "Your Glory", duracion: "00:00"))
        
        Canciones_13.append(Cancion(nombre: "Here comes The Sun", duracion: "00:00"))
        Canciones_13.append(Cancion(nombre: "Come Together", duracion: "00:00"))
        Canciones_13.append(Cancion(nombre: "Something", duracion: "00:00"))
        Canciones_13.append(Cancion(nombre: "Something", duracion: "00:00"))
        Canciones_13.append(Cancion(nombre: "Something", duracion: "00:00"))
        
        Canciones_14.append(Cancion(nombre: "Imagine", duracion: "00:00"))
        Canciones_14.append(Cancion(nombre: "How Do you Sleep?", duracion: "00:00"))
        Canciones_14.append(Cancion(nombre: "Oh Yoko!", duracion: "00:00"))
        Canciones_14.append(Cancion(nombre: "It´s So Hard", duracion: "00:00"))
        Canciones_14.append(Cancion(nombre: "Oh My Love", duracion: "00:00"))
        
        Canciones_15.append(Cancion(nombre: "Don´t Cry", duracion: "00:00"))
        Canciones_15.append(Cancion(nombre: "November Rain", duracion: "00:00"))
        Canciones_15.append(Cancion(nombre: "Live and Let Die", duracion: "00:00"))
        Canciones_15.append(Cancion(nombre: "Perfect Crime", duracion: "00:00"))
        Canciones_15.append(Cancion(nombre: "The Garden", duracion: "00:00"))
        
        // Do any additional setup after loading the view.
        Albums.append(Album(album: "Hopes and Fears", banda: "Keane", genero: "Alternativo", año: "2004", canciones: Canciones_1, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "Brit Mejor Álbum Británico", aceptacion: "98% (Usuarios de Google)", imagen: "K-hf-1", imagen2: "K-hf-2"))
        
        Albums.append(Album(album: "Under The Iron Sea", banda: "Keane", genero: "Alternativo", año: "2006", canciones: Canciones_2, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "85% (Usuarios de Google)", imagen: "K-utis-1", imagen2: "K-utis-2"))
        
        Albums.append(Album(album: "Perffect Symmetry", banda: "Keane", genero: "Pop", año: "2008", canciones: Canciones_3, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "K-ps-1", imagen2: "K-ps-2"))
        
        Albums.append(Album(album: "Night Train", banda: "Keane", genero: "Pop", año: "2010", canciones: Canciones_4, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "89% (Usuarios de Google)", imagen: "K-nt-1", imagen2: "K-nt-2"))
        
        Albums.append(Album(album: "Strangerland", banda: "Keane", genero: "Pop", año: "2012", canciones: Canciones_5, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "K-sl-1", imagen2: "K-sl-2"))
        
        Albums.append(Album(album: "The Best Of Keane", banda: "Keane", genero: "Pop", año: "2013", canciones: Canciones_6, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "K-tbok-1", imagen2: "K-tbok-2"))
        
        Albums.append(Album(album: "Elvis 30 #1 Hits", banda: "Elvis Presley", genero: "Rock y Pop", año: "2002", canciones: Canciones_7, discografia: "RCA Records", productores: "Elvis Presley", premios: "3 Premios Grammy", aceptacion: "91% (Usuarios de Google)", imagen: "elvis-1", imagen2: "elvis-2"))
        
        Albums.append(Album(album: "Whiplash Soundtrack", banda: "Justin Hurwitz", genero: "Pop", año: "2014", canciones: Canciones_8, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "whiplash-1", imagen2: "whiplash-2"))
        
        Albums.append(Album(album: "Fallen", banda: "Evanescence", genero: "Pop", año: "2013", canciones: Canciones_9, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "evanescence-1", imagen2: "evanescence-2"))
        
        Albums.append(Album(album: "Appetite for Destruction", banda: "Guns´n Roses", genero: "Pop", año: "1988", canciones: Canciones_10, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "gnr-afd-1", imagen2: "gnr-afd-2"))
        
        Albums.append(Album(album: "Chinese Democracy", banda: "Guns´n Roses", genero: "Rock", año: "2008", canciones: Canciones_11, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "gnr-cd-1", imagen2: "gnr-cd-2"))
        
        Albums.append(Album(album: "Avenged Sevenfold", banda: "Avenged Sevenfold", genero: "Hard Rock", año: "2007", canciones: Canciones_12, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "avenged-1", imagen2: "avenged-2"))
        
        Albums.append(Album(album: "Abbey Road", banda: "The Beatles", genero: "Rock", año: "1969", canciones: Canciones_13, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71%% (Usuarios de Google)", imagen: "beatles-1", imagen2: "beatles-2"))
        
        Albums.append(Album(album: "Imagine", banda: "John Lennon", genero: "Pop", año: "1971", canciones: Canciones_14, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "imagine-1", imagen2: "imagine-2"))
        
        Albums.append(Album(album: "Use your Illution l", banda: "Guns´n Roses", genero: "Rock", año: "1991", canciones: Canciones_15, discografia: "Interscope Records", productores: "Andy Green, Tim Rice Oxley, Tom Chaplin, Richard Hughes", premios: "N/A", aceptacion: "71% (Usuarios de Google)", imagen: "gnr-uyi-1", imagen2: "gnr-uyi-2"))
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesAlbumController
        destino.album = Albums [tvAlbums.indexPathForSelectedRow!.row]

    }
}

