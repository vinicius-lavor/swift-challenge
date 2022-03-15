//
//  tea.swift
//  SwiftChallenge
//
//  Created by Vinícius Cavalcante on 14/03/22.
//
import Foundation

func iniciaTerminal(){
    
    class Tea{
        var name: String
        var type: String
        var cure: String
     
        init(name: String, type: String, cure: String){
            self.name = name
            self.type = type
            self.cure = cure
        }
        
        public func toString() -> String{
            return "Nome: \(self.name)\nTipo: \(self.type)\nCura: \(self.cure)\n"
        }
    }
    
    let teaGoodFeelings = Tea.init(name: "Good Feelings", type: "Infusão de Frutas", cure: "Cólica")
    let teaCamomila = Tea.init(name: "Camomila", type: "Infusão de Ervas", cure: "Enjoo")
    let teaBoldo = Tea.init(name: "Boldo", type: "Infusão de Ervas", cure: "Enjoo")
    let teaHortela = Tea.init(name: "Hortela", type: "Infusão de Ervas", cure: "Enjoo")
    
    
    //print(teaGoodFeelings.toString())
    //print(teaCamomila.toString())
    
    var teaList = [teaGoodFeelings, teaCamomila, teaBoldo, teaHortela]
    
    var teaListNausea = teaList.filter{$0.cure == "Enjoo"}
        
    /*for i in 0...2{
        print(teaListNausea[i].toString())
    }*/

   // print(tea.boasVindas())
    
 /*   print("Bem-vinda(o)!! Essa aplicação tem como funcionalidade ajudar o usuário na hora de escolher um que ele quer ou precisa tomar.")
    
    print("Escolha uma das opções abaixo:")
    print("1 - Recomendação do dia")
    print("2 - De acordo com seu humor")
    
    let teaName = "Good Feelings"
    let teaOption = readLine()
    switch teaOption {
    case "1":
        print("Recomendação do dia")
        print("Nome: \nTipo: Testes \n")
        break
    case "2":
        print("Você está sentindo algo?")
        let feelingsOption = readLine()
        switch feelingsOption {
        case "1":
            print("recomendamos para você o \(teaName)")
        case .none:
            print("Vazio")
        case .some(_):
            print("Valor invalido")
        }
        break
    case .none:
        print("None")
    case .some(_):
        print("Some")
    }
  
  */
}

