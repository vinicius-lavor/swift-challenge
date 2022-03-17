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
            return "Nome: Chá de \(self.name)\n\nTipo: \(self.type)\n\nDescrição: \(self.description)\n\nContraindicação: Esse chá é contraindicado para \(self.contraindication)\n\nComo fazer: \n\(self.instruction)\n\n"
        }
    }
    
    let greenTea = Tea.init(name: "Verde", type: "Camellia sinensis", description: "Lorem Ipsum 1", instruction: "Use 3 colheres de sopa de ", sensation: "Focar", cure: "Cólica", contraindication: "gestantes")
    let camomilaTea = Tea.init(name: "Camomila", type: "Infusão de Ervas", description: "Lorem Ipsum 2", instruction: "Use 3 colheres de sopa de ", sensation: "Relaxar", cure: "Enjoo", contraindication: "Teste2")
    let boldoTea = Tea.init(name: "Boldo", type: "Infusão de Ervas", description: "Lorem Ipsum 3", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste3")
    let hortelaTea = Tea.init(name: "Hortela", type: "Infusão de Ervas", description: "Lorem Ipsum 4", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste4")
    let hibiscoTea = Tea.init(name: "Hibisco", type: "Infusão de Ervas", description: "Lorem Ipsum 5", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Pressão Alta", contraindication: "Teste5")
    let ervacidreiraTea = Tea.init(name: "Erva-cidreira", type: "Infusão de Ervas", description: "Possui muitos nutrientes para o corpo, como a vitamina A, B, C e minerais como cobre, zinco, ferro, potássio, cálcio, magnésio e fósforo. A erva-cidreira possui efeito calmante e sedativo, auxiliando na redução de problemas de insônia, ansiedade e estresse, o que também melhor o humor de acordo com pesquisas.", instruction: "\nIngredientes:\n4 xícaras de água fervente\n4 colheres de sopa de folhas de erva-cidreira\nModo de preparo:\nAdicionar as folhas de erva-cidreira na água fervente, tampar e deixar repousar por alguns minutos. A seguir, coar e beber de 3 a 4 xícaras deste chá por dia.", sensation: "Relaxar", cure: "Indigestao", contraindication: "pessoas que estão tomando remédios para dormir.")

    let teaList = [greenTea, camomilaTea, boldoTea, hortelaTea, hibiscoTea, ervacidreiraTea]
    
    func filterCureNausea(){
        let teaListCureNausea = teaList.filter{$0.cure == "Enjoo"}
        teaListCureNausea.forEach { tea in
            print(tea.toString())
        }
    }
    
    func filterCureIndigestion(){
        let teaListCureIndigestion = teaList.filter{$0.cure == "Indigestao"}
        teaListCureIndigestion.forEach { tea in
            print(tea.toString())
        }
    }
    
    func filterSensationRelax(){
        let teaListSensationRelax = teaList.filter{$0.sensation == "Relaxar"}
        teaListSensationRelax.forEach { tea in
            print(tea.toString())
        }
    }
    
    func filterSensationFocus(){
        let teaListSensationFocus = teaList.filter{$0.sensation == "Focar"}
        teaListSensationFocus.forEach { tea in
            print(tea.toString())
        }
    }
    let randomTeaList = teaList.randomElement()!
    
    print("Bem-vinda(o)!! Essa aplicação tem como funcionalidade ajudar o usuário na hora de escolher um chá que ele quer ou precisa tomar.\nEscolha uma das opções abaixo:\n1 - Recomendação do dia\n2 - Para você")
    
    let teaOption = readLine()
    switch teaOption {
    case "1":
        print("\nRecomendação do dia é:\n\n\(randomTeaList.toString())")
        break
    case "2":
        print("\nVocê está se sentindo bem?\n1 - Sim\n2 - Não")
        let feelingsOption = readLine()
        switch feelingsOption {
        case "1":
            print("\nO que você quer fazer?\n1 - Relaxar\n2 - Focar\n3 - Relaxar\n4 - Relaxar\n5 - Relaxar\n6 - Relaxar")
            let sensationOption = readLine()
            switch sensationOption {
            case "1":
                print("\nOs chás que recomendamos para você:\n ")
                filterSensationRelax()
                break
            case "2":
                print("\nOs chás que recomendamos para você:\n ")
                filterSensationFocus()
                break
            case .none:
                print("\nSelecione alguma opção")
            case .some(_):
                print("\nValor inválido")
            }
        case "2":
            print("\nO que você está sentindo?\n1 - Enjôo\n2 - Indigestão")
            let cureOption = readLine()
            switch cureOption {
            case "1":
                print("\nOs chás que recomendamos para você:\n ")
                filterCureNausea()
            case "2":
                print("\nOs chás que recomendamos para você:\n ")
                filterCureIndigestion()
            case .none:
                print("\nSelecione alguma opção")
            case .some(_):
                print("\nValor inválido")
            }
        case .none:
            print("\nVazio")
        case .some(_):
            print("\nValor invalido")
        }
        break
    case .none:
        print("\nNone")
    case .some(_):
        print("\nSome")
    }
}

