//
//  tea.swift
//  SwiftChallenge
//
//  Created by Vinícius Cavalcante on 14/03/22.
//
import Foundation

func main(){
    
    struct Tea{
        var name: String
        var type: String
        var description: String
        var instruction: String
        var sensation: String
        var cure: String
        var contraindication: String
     
        public func toString() -> String{
            return """
            ======== \(name) ========
            
            Tipo: \(type)
            Descrição: \(description)
            Contraindicação: \(contraindication)
            \(instruction)
            
            """
        }
    }
    
    let greenTea = Tea(name: "Chá Verde",
                            type: "Camellia sinensis",
                            description: "A bebida é repleta de propriedades nutricionais que ajudam a prevenir doenças e deixam o organismo mais fortalecido. A planta possui grande quantidade de antioxidantes, cafeína, aminoácidos, vitaminas B, E, C, cálcio, magnésio, zinco, potássio e ferro que proporcionam mais saúde.",
                            instruction: "Ingredientes:\n200 ml de água\nUma colher de sopa (2g) de folhinhas de chá verde \n\nModo de preparo:\nColoque 200 ml de água em uma chaleira no fogo baixo e desligue antes de começar a ferver, assim que subirem as primeiras bolhinhas\nJogue a água quente sobre a quantidade de 1 colher de sopa da erva (2g) em uma xícara\nCubra deixando em infusão por 3 minutos\nCoe e beba.",
                            sensation: "Focar",
                            cure: "Indisposiçao",
                            contraindication: "O consumo excessivo de chá verde pode trazer efeitos colaterais como insônia e dores de cabeça. Lembrando que gestantes, idosos, pessoas com problemas cardíacos e com tendência à insônia devem ter um cuidado ainda maior no momento de inserir o chá verde na sua rotina.")
    let canelaTea = Tea(name: "Chá de Canela",
                               type: "Infusão de Especiarias",
                               description: "A canela, além de anti-inflamatória, é um antiespasmódico natural. Auxilia na diminuição das contrações e também da náusea, outro sintoma comum no período menstrual.",
                               instruction: "Ingredientes:\n1 Canela em pau\n250ml de água\n\nModo de preparo:\nAdicione a canela em pau em uma chaleira ou panela com a água e ferver por 10 a 15 minutos.",
                               sensation: "Relaxar",
                               cure: "Colica",
                               contraindication: "A canela não deve ser consumida por mulheres que estejam grávidas ou amamentando, Essa especiaria também é contraindicada para pessoas com úlceras ou que possuem doenças graves do fígado.")
    let camomilaTea = Tea(name: "Chá de Camomila",
                               type: "Infusão de Ervas",
                               description: "Entre as propriedades do chá, estão os compostos fenólicos e ácidos orgânicos, ácidos fenólicos, flavonoides, polifenóis e óleos essenciais. São eles os responsáveis por conferir os efeitos terapêuticos, em especial, de atividade antioxidante e anti-inflamatória.",
                               instruction: "Ingredientes:\n2 colheres de chá de flores secas de camomila\n250ml de água\n\nModo de preparo:\nAdicionar as flores de camomila na água fervente, tampar e deixar repousar por 10 minutos. A seguir, coar e beber de 3 a 4 xícaras deste chá por dia.",
                               sensation: "Relaxar",
                               cure: "Enjoo",
                               contraindication: "Não é indicado o uso do chá de camomila durante o processo gestacional, especialmente no primeiro trimestre, podendo ocorrer desde abortos espontâneos e malformações congênitas.")
    let boldoTea = Tea(name: "Chá de Boldo",
                            type: "Infusão de Ervas",
                            description: "O boldo é uma planta medicinal muito usada como remédio caseiro, especialmente para o fígado devido às suas propriedades digestivas e hepáticas. Além disso, também possui propriedades diuréticas, anti-inflamatórias e antioxidantes, que podem ajudar no tratamento e prevenção de outros problemas, como gastrite, aterosclerose e câncer.",
                            instruction: "Ingredientes:\n2 colheres de chá de folhas de boldo\n250ml de água\n\nModo de preparo:\nAdicionar o boldo na água fervente, tampar e deixar repousar de 5 a 10 minutos. A seguir, coar e beber.",
                            sensation: "Leve",
                            cure: "Indigestao",
                            contraindication: "O boldo não é recomendado para crianças, pessoas com pedra na vesícula e inflamação das vias biliares, doenças no fígado, nos rins, câncer na vesícula ou no pâncreas. Este tipo de boldo também é contraindicado para mulheres que amamentam e para gestantes, especialmente nos primeiros três meses de gestação.")
    let hortelaTea = Tea(name: "Chá de Hortelã",
                              type: "Infusão de Ervas",
                              description: "O chá de hortelã pode ser usado para fins medicinais, porque possui propriedades antioxidantes, analgésicas, digestivas, descongestionantes, anti-inflamatórias e antiespasmódicas, sendo uma ótima opção para melhorar a digestão e o cansaço, e aliviar as cólicas e a dor de cabeça, por exemplo.",
                              instruction: "Ingredientes:\n1 colher de sopa de folhas de hortelã\n150ml de água\n\nModo de preparo:\nAdicionar as folhas de hortelã na água fervente, tampar e deixar repousar de 10 a 15 minutos. A seguir, coar e beber.",
                              sensation: "Refrescar",
                              cure: "Dor de cabeça",
                              contraindication: "A hortelã é contraindicada para gestantes, lactantes, pacientes com obstrução dos ductos biliares, pessoas com anemia, crianças menores de dois anos e pessoas com hipersensibilidade ao óleo essencial.")
    let hibiscoTea = Tea(name: "Chá de Hibisco",
                              type: "Infusão de Ervas",
                              description: "O hibisco é uma planta medicinal caracterizada por ser rica em antocianinas, um composto que garante a sua cor vermelha característica e que, por sua vez, proporciona grande potencial antioxidante.",
                              instruction: "Ingredientes:\n1 colher de sopa de hibisco\n500ml de água\n\nModo de preparo:\nAdicionar o hibisco na água fervente, tampar e deixar repousar de 10 a 15 minutos. A seguir, coar e beber.",
                              sensation: "Refrescar",
                              cure: "Pressaoalta",
                              contraindication: "O hibisco é contraindicado para pessoas que estão com TPM, querendo engravidar ou grávidas.")
    let ervacidreiraTea = Tea(name: "Chá de Erva-cidreira",
                                   type: "Infusão de Ervas",
                                   description: "Possui muitos nutrientes para o corpo, como a vitamina A, B, C e minerais como cobre, zinco, ferro, potássio, cálcio, magnésio e fósforo. A erva-cidreira possui efeito calmante e sedativo, auxiliando na redução de problemas de insônia, ansiedade e estresse, o que também melhor o humor de acordo com pesquisas.",
                                   instruction: "\nIngredientes:\n4 xícaras de água fervente\n4 colheres de sopa de folhas de erva-cidreira\n\nModo de preparo:\nAdicionar as folhas de erva-cidreira na água fervente, tampar e deixar repousar por alguns minutos. A seguir, coar e beber de 3 a 4 xícaras deste chá por dia.",
                                   sensation: "Relaxar",
                                   cure: "Ansiedade",
                                   contraindication: "A erva-cidreira é contraindicada para pessoas que estão tomando medicamentos para dormir.")

    let teaList = [greenTea, canelaTea, camomilaTea, boldoTea, hortelaTea, hibiscoTea, ervacidreiraTea]
    
    let randomTeaList = teaList.randomElement()!
    
    func filterCure(_ string: String){
        let teaListCure = teaList.filter{$0.cure == string}
        let teaListCureSize = teaListCure.count
        if (teaListCureSize > 1){
            print("\nOs chás que recomendamos para você:\n ")
        }else {
            print("\nO chá que recomendamos para você:\n ")
        }
        teaListCure.forEach { tea in
            print(tea.toString())
        }
    }
    
    func filterSensation(_ string: String){
        let teaListSensation = teaList.filter{$0.sensation == string}
        let teaListSensationSize = teaListSensation.count
        if (teaListSensationSize > 1){
            print("\nOs chás que recomendamos para você:\n ")
        }else {
            print("\nO chá que recomendamos para você:\n ")
        }
        teaListSensation.forEach { tea in
            print(tea.toString())
        }
    }
        
    func switchCureOption(){
        print(
            """
            
            O que você está sentindo?
            1 - Enjôo
            2 - Indigestão
            3 - Cólica
            4 - Dor de cabeça
            5 - Indisposição
            6 - Pressão Alta
            7 - Ansiedade
            """
        )
        var cureOption = readLine()
        switch cureOption {
        case "1":
            cureOption = "Enjoo"
        case "2":
            cureOption = "Indigestao"
        case "3":
            cureOption = "Colica"
        case "4":
            cureOption = "Dor de cabeça"
        case "5":
            cureOption = "Indisposiçao"
        case "6":
            cureOption = "Pressaoalta"
        case "7":
            cureOption = "Ansiedade"
        default:
            print("\nValor inválido. Digite novamente...")
            switchCureOption()
        }
        filterCure(cureOption!)
    }
    
    func switchFeelingsOption(){
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
            switchSensationOption()
        case "2":
            switchCureOption()
        default:
            print("\nValor inválido. Digite novamente...")
            switchFeelingsOption()
        }
    }
    
    func switchSensationOption(){
        print(
        """
        
        O que você quer fazer?
        1 - Relaxar
        2 - Focar
        3 - Se refrescar
        """
        )
        var sensationOption = readLine()
        
        switch sensationOption {
        case "1":
            sensationOption = "Relaxar"
        case "2":
            sensationOption = "Focar"
        case "3":
            sensationOption = "Refrescar"

        default:
            print("\nValor inválido. Digite novamente...")
            switchSensationOption()
        }
        filterSensation(sensationOption!)
    }
    
    print(
            """
            🫖 Bem-vinda(o)🍵
            Essa aplicação tem como funcionalidade ajudar o usuário na hora de escolher um chá que ele precisa ou quer tomar.

            Escolha uma das opções abaixo:
            
            1 - Recomendação do dia
            2 - Chá para ajudar o seu dia
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
        switchFeelingsOption()
    default:
        print("\nValor inválido. Digite novamente...")
        return main()
    }
}

main()
