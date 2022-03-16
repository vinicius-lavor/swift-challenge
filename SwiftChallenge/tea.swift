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
        var description: String
        var instruction: String
        var sensation: String
        var cure: String
        var contraindication: String
     
        init(name: String, type: String, description: String, instruction: String, sensation: String, cure: String, contraindication: String){
            self.name = name
            self.type = type
            self.description = description
            self.instruction = instruction
            self.sensation = sensation
            self.cure = cure
            self.contraindication = contraindication
        }
        
        public func toString() -> String{
            return "Nome: Chá \(self.name)\nTipo: \(self.type)\nContraindicação: Esse chá é contraindicado para \(self.contraindication)\n"
        }
    }
    
    let greenTea = Tea.init(name: "Verde", type: "Infusão de Ervas", description: "Lorem Ipsum 1", instruction: "Use 3 colheres de sopa de ", sensation: "aaa", cure: "Cólica", contraindication: "gestantes")
    let camomilaTea = Tea.init(name: "Camomila", type: "Infusão de Ervas", description: "Lorem Ipsum 2", instruction: "Use 3 colheres de sopa de ", sensation: "Relaxar", cure: "Enjoo", contraindication: "Teste2")
    let boldoTea = Tea.init(name: "Boldo", type: "Infusão de Ervas", description: "Lorem Ipsum 3", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste3")
    let hortelaTea = Tea.init(name: "Hortela", type: "Infusão de Ervas", description: "Lorem Ipsum 4", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste4")
    let hibiscoTea = Tea.init(name: "Hibisco", type: "Infusão de Ervas", description: "Lorem Ipsum 5", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Pressão Alta", contraindication: "Teste5")
    
    var teaList = [greenTea, camomilaTea, boldoTea, hortelaTea, hibiscoTea]
    
    func filterCureNausea (){
        var teaListCureNausea = teaList.filter{$0.cure == "Enjoo"}
        var teaListCureNauseaSize = teaListCureNausea.count
        for i in 0...teaListCureNauseaSize - 1{
            print(teaListCureNausea[i].toString())
        }
    }
    
    func filterSensationRelax(){
        var teaListSensationRelax = teaList.filter{$0.sensation == "Relaxar"}
        var teaListSensationRelaxSize = teaListSensationRelax.count
        for i in 0...teaListSensationRelaxSize - 1{
            print(teaListSensationRelax[i].toString())
        }
    }
    
    var randomTeaList = teaList.randomElement()!
    
    print("Bem-vinda(o)!! Essa aplicação tem como funcionalidade ajudar o usuário na hora de escolher um chá que ele quer ou precisa tomar.\nEscolha uma das opções abaixo:\n1 - Recomendação do dia\n2 - De acordo com seu humor")
    
    var teaOption = readLine()
    switch teaOption {
    case "1":
        print("\nRecomendação do dia é:\n\n\(randomTeaList.toString())")
        break
    case "2":
        print("Você está se sentindo bem?\n1 - Sim\n2 - Não")
        let feelingsOption = readLine()
        switch feelingsOption {
        case "1":
            print("Qual sensação você quer sentir?")
            let sensationOption = readLine()
            switch sensationOption {
            case "1":
                print("Os chás que recomendamos para você:\n ")
                filterSensationRelax()
                break
            case .none:
                print("Selecione alguma opção")
            case .some(_):
                print("Valor inválido")
            }
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
  
}

