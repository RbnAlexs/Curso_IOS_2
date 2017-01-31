//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Implicita
var miNombre = "Luis Chávez"
miNombre = "Juan"

// Error: miNombre = 5

/* 
    sdsdsd
    vdfdfd
    vddsdc
 */

var miEdad = 22

// Explicita
var apellido: String = "Chávez"
var mes: Int = 5


// Constantes
let constante = 3.1416
// error: constante = 20

// Tipos de datos

// Cadena
var cadaenaHolaMundo: String = "Hola Mundo"

// Caracter
var a: Character = "A"

// Enteros
var nueve: Int = 9

// Float
var decimal: Float = 1.19

// Double
var decimalLargo: Double = -3.121221432423423423423432423423

// Booleanos

var iOS: Bool = true
var android: Bool = false

// No puede cambiar
let alexis: String = "Alexis"

// Tipos de Datos de Almacenamiento

var arreloDeCadenas: [String]

arreloDeCadenas = ["Hola","Mundo","UNAM Mobile","ETC"]
//                          0    1    2       3
var arregloDeMuchasCosas = [0, 1.23, true, "Cadena"]
arregloDeMuchasCosas[0]
arregloDeMuchasCosas[3]

// Error: arregloDeMuchasCosas[1000]

// Atributo de mi arreglo
arregloDeMuchasCosas.count

// Método de mi arreglo
arregloDeMuchasCosas.append("Avion")

var arreglodeenteros: [Int] = [1,343434,343,23232]


// Valor nulo

//var nada = nil

// TUPLAS
var httpError = (404,"Not Found")

httpError.0
httpError.1

var httpSuccess = (code: 200, significado: "OK")
httpSuccess.code
httpSuccess.significado



// ID

var luzPrendida = true

if luzPrendida == true{
    print("Hay alguien en casa")
}


var hayDinero = false

if hayDinero == true{
    print("Compra una casa")
}else{
    print("Trabaja")
}

 // Operador de Igualdad ==, >=, <=, <, >

var gatos: [String] = ["Mika", "kitty"]
gatos.append("Cat")

if gatos.count >= 3{
    print("Regala gatos, solo puedes tener 2")
}else{
    print("Se feliz")
}

// Operador Or ||

var edad = 16

if edad == 15 || edad == 16{
    print("Puedes entrar")
}

// Operador and &&

var nacionalidad = "Mexicana"
var edadPersona = 25

if nacionalidad == "Mexicana" && edadPersona >= 21{
    print("Puedes viajar a china")
}




// 

if nacionalidad == "Americana"{
    print("Eres gringo")
}else if nacionalidad == "Alemana"{
    print("Eres aleman")
}else{
    print("Eres de otro pais")
}



// FOR
//                       0          1             2
var arregloDeFlores = ["Rosas", "Tulipanes", "Girasol"]

for indice in 0..<arregloDeFlores.count{
 
    print("\(indice) - \(arregloDeFlores[indice])")
    
}

// "0 - Rosas"
// "1 - Tulipanes"
// "2 - Girasol"

for index in 0...2{
    print(index)
}

for var cuenta = 0; cuenta < arregloDeFlores.count; cuenta += 1{
    print("Flor: \(arregloDeFlores[cuenta])")
}

for flor in arregloDeFlores{
    print(flor)
}



// While

var hacer = false


while hacer == true{
    print("Hola")
}



// Repeat - While

var id = 0

repeat{
    print("Valor \(id)")
    id += 1
}while id < 10


// Switch

var emoji: Character = "😀"

switch emoji{
    case "😀","😍":
        print("Hola Emoji")
        break
    case "A":
        print("UNA A")
        break
    default:
        print("NADA")
        break
}



// Funciones

// Sin atributos y sin valor de retorno
func decirHola(){
    print("HOLA")
}

decirHola()

// Sin valor de retorno
func decirHolaCon(nombre: String) {
    print("Hola \(nombre)")
}

decirHolaCon("Luis")

func decirHolaCon(nombre: String, edad: Int) {
    print("Hola \(nombre) y tienes \(edad)")
}

decirHolaCon("Luis", edad: 22)


// Funcion con valor de retorno

func suma(valorA: Int, valorB: Int) -> Int {
    //return valorA + valorB
    let resultado = valorA + valorB
    return resultado
}

let resultado = suma(10, valorB: 3)


// Crear una función que pida edad, y que regrese un TRUE si es mayor o igual a 18, en caso contrario un FALSE


func esMayorDeEdad(edad:Int) -> Bool{
    if edad >= 18{
        return true
    }else{
        return false
    }
}













