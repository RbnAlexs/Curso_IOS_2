//
//  ViewController.swift
//  Celdas_Personalizadas
//
//  Created by Luis Chávez on 14/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    /*
    var informacion1: [String:String] = ["titulo":"Buscando a Nemo",
                                         "descripcion":"Es una pelicula para niños.",
                                         "portada":"nemo"]
    
    
    var informacion2: [String:String] = ["titulo":"Buscando a Dory",
                                         "descripcion":"Es una pelicula para niños y los jovenes",
                                         "portada":"dory"]
    
    
    var informacion3: [String:String] = ["titulo":"Buscando al Soldado Ryan",
                                         "descripcion":"Es una pelicula para viejitos.",
                                         "portada":"soldado"]
    
    
    //var datos: [String:AnyObject] = ["edad":15, "nombre":"Luis"]
    
    var arregloDePeliculas: [[String:String]]!*/
    
    
    var tracks: [[String:AnyObject]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //arregloDePeliculas = [informacion1, informacion2, informacion3]
        
        Alamofire.request(Method.GET, "https://api.spotify.com/v1/artists/1r4hJ1h58CWwUQe3MxPuau/top-tracks?country=US", parameters: nil, encoding: ParameterEncoding.JSON, headers: nil).responseJSON { response in
            
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            
            if let JSON = response.result.value as? [String:AnyObject] {
                //print("JSON: \(JSON)")
                
                self.tracks = JSON["tracks"] as! [[String:AnyObject]]
                
                // Recargar la tabla
                self.tableView.reloadData()
            }

        }
    }

// TableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return arregloDePeliculas.count
        return tracks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MiCeldaTableViewCell
        
        /*let pelicula = arregloDePeliculas[indexPath.row]
        
        cell.titulo.text = pelicula["titulo"]
        cell.descripcion.text = pelicula["descripcion"]
        
        let imagen = UIImage(named: pelicula["portada"]!)
        cell.portada.image = imagen
        */
        
        
        let cancion = tracks[indexPath.row]
        
        //print("Index: \(indexPath.row)")
        
        cell.titulo.text = cancion["name"] as! String
        //                      Arreglo de Diccionarios
        let arregloDeArtistas = cancion["artists"] as! [[String:AnyObject]]
        let artistaPrincipal = arregloDeArtistas[0]
        
        
        // numero de la cancion, duracion de la cancion y el artista
        
        
        let numeroCancion = cancion["track_number"] as! Int
        let duracionMS = cancion["duration_ms"] as! Int
        let artista = artistaPrincipal["name"] as! String
        cell.descripcion.text = "\(numeroCancion), duracion de \(duracionMS) MS, del artista: \(artista) "

        let album = cancion["album"] as! [String:AnyObject]
        let arregloDeImagenes = album["images"] as! [[String:AnyObject]]
        let urlImage = arregloDeImagenes[0]["url"] as! String

        let URL = NSURL(string: urlImage)!
        
        cell.portada.af_setImageWithURL(URL)
        
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }

    
    // TableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cancion = tracks[indexPath.row]
        
        let alert = UIAlertController(title: "Aviso", message: "¿Qué accion desdeas hacer con el track \(cancion["name"]!)", preferredStyle: .ActionSheet)
        
        let spotify = UIAlertAction(title: "Ver en Spotify", style: .Default) { (action) in
            
            let urlSpotify = (cancion["external_urls"] as! [String:String])["spotify"]
            self.performSegueWithIdentifier("urlSegue", sender: urlSpotify)
            
        }
        
        let escuchar = UIAlertAction(title: "Escuchar", style: .Default) { (action) in
            
            let url = cancion["preview_url"] as! String
            self.performSegueWithIdentifier("urlSegue", sender: url)
            
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .Cancel, handler: nil)
        
        alert.addAction(spotify)
        alert.addAction(escuchar)
        alert.addAction(cancelar)

        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "urlSegue"{
        
            let vc = segue.destinationViewController as! WebViewController
            vc.url = sender as! String
            
        }
        
    }
    
}

