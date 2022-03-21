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
            return """
            
            Nome: Chá de \(self.name)
            
            Tipo: \(self.type)
            
            Descrição: \(self.description)
            
            Contraindicação: Esse chá é contraindicado para \(self.contraindication)
            
            \(self.instruction)
            
            
            """
        }
    }
    
    let greenTea = Tea.init(name: "Verde",
                            type: "Camellia sinensis",
                            description: "Lorem Ipsum 1",
                            instruction: "Use 3 colheres de sopa de ",
                            sensation: "Focar",
                            cure: "Cólica",
                            contraindication: "gestantes")
    let camomilaTea = Tea.init(name: "Camomila", type: "Infusão de Ervas", description: "Lorem Ipsum 2", instruction: "Use 3 colheres de sopa de ", sensation: "Relaxar", cure: "Enjoo", contraindication: "Teste2")
    let boldoTea = Tea.init(name: "Boldo", type: "Infusão de Ervas", description: "Lorem Ipsum 3", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste3")
    let hortelaTea = Tea.init(name: "Hortela", type: "Infusão de Ervas", description: "Lorem Ipsum 4", instruction: "Use 3 colheres de sopa de ", sensation: "Teste1", cure: "Enjoo", contraindication: "Teste4")
    let hibiscoTea = Tea.init(name: "Hibisco", type: "Infusão de Ervas", description: "Lorem Ipsum 5", instruction: "Ingredientes:\nUse 3 colheres de sopa de \n\nModo de preparo:\n", sensation: "Teste1", cure: "Pressão Alta", contraindication: "Teste5")
    let ervacidreiraTea = Tea.init(name: "Erva-cidreira",type: "Infusão de Ervas", description: "Possui muitos nutrientes para o corpo, como a vitamina A, B, C e minerais como cobre, zinco, ferro, potássio, cálcio, magnésio e fósforo. A erva-cidreira possui efeito calmante e sedativo, auxiliando na redução de problemas de insônia, ansiedade e estresse, o que também melhor o humor de acordo com pesquisas.", instruction: "\nIngredientes:\n4 xícaras de água fervente\n4 colheres de sopa de folhas de erva-cidreira\n\nModo de preparo:\nAdicionar as folhas de erva-cidreira na água fervente, tampar e deixar repousar por alguns minutos. A seguir, coar e beber de 3 a 4 xícaras deste chá por dia.", sensation: "Relaxar", cure: "Indigestao", contraindication: "pessoas que estão tomando remédios para dormir.")

    let teaList = [greenTea, camomilaTea, boldoTea, hortelaTea, hibiscoTea, ervacidreiraTea]
    
    func filterCure(_ string: String){
        let teaListCure = teaList.filter{$0.cure == string}
        teaListCure.forEach { tea in
            print(tea.toString())
        }
    }
    
//    func filterCureIndigestion(){
//        let teaListCureIndigestion = teaList.filter{$0.cure == "Indigestao"}
//        teaListCureIndigestion.forEach { tea in
//            print(tea.toString())
//        }
//    }
    
    func filterSensation(_ string: String){
        let teaListSensation = teaList.filter{$0.sensation == string}
        teaListSensation.forEach { tea in
            print(tea.toString())
        }
    }
    
//    func filterSensationFocus(){
//        let teaListSensationFocus = teaList.filter{$0.sensation == "Focar"}
//        teaListSensationFocus.forEach { tea in
//            print(tea.toString())
//        }
//    }
    let randomTeaList = teaList.randomElement()!
    
    print(
            """
            Bem-vinda(o)!! Essa aplicação tem como funcionalidade ajudar o usuário na hora de escolher um chá que ele quer ou precisa tomar.
            
            Escolha uma das opções abaixo:
            
            1 - Recomendação do dia
            2 - Para você
            """
    )
    
    let teaOption = readLine()
    switch teaOption {
    case "1":
        print(
            """
            
            Recomendação do dia é:
            
            \(randomTeaList.toString())
            """
            )
        break
    case "2":
        print(
            """
            Você está se sentindo bem?
            1 - Sim
            2 - Não
            """
        )
        let feelingsOption = readLine()
        switch feelingsOption {
        case "1":
            print(
            """
            O que você quer fazer?
            
            1 - Relaxar
            2 - Focar
            3 - Relaxar
            4 - Relaxar
            5 - Relaxar
            6 - Relaxar
            """
            )
            var sensationOption = readLine()
            
            switch sensationOption {
            case "1":
                print("\nOs chás que recomendamos para você:\n ")
                sensationOption = "Relaxar"
                filterSensation(sensationOption!)
                break
            case "2":
                print("\nOs chás que recomendamos para você:\n ")
                sensationOption = "Focar"
                filterSensation(sensationOption!)
                break
            default:
                print("\nValor inválido")
            }
        case "2":
            print(
                """
                
                O que você está sentindo?
                1 - Enjôo
                2 - Indigestão
                3 - Cólica
                """
            )
            var cureOption = readLine()
            switch cureOption {
            case "1":
                print("\nOs chás que recomendamos para você:\n ")
                cureOption = "Enjoo"
                filterCure(cureOption!)
            case "2":
                print("\nOs chás que recomendamos para você:\n ")
                cureOption = "Indigestao"
                filterCure(cureOption!)
            case "3":
                print("\nOs chás que recomendamos para você:\n ")
                cureOption = "Indigestao"
                filterCure(cureOption!)
            default:
                print("\nValor inválido")
            }
        default:
            print("\nValor inválido")
        }
        break
    default:
        print("\nValor inválido")
    }
}

