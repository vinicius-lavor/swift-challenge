////Condições
//
////Operador ternário -> expressao ? valor-true : valor-false
//let isHungry = false
//
//if isHungry{
//    print("Estou com fome")
//}else {
//    print("Estou satisfeito")
//}
//

//TUPLAS

//let coords: (Double, Double) = (23.4, 54.22)
//coords.0
//coords.1

//let coords = (latitude: 23.2, longitude: 54.22)
//coords.latitude
//
//let camera = (x: 10, y: 20, z: 1)
//let (x, y, z) = camera
//
//print(x)
//print(y)
//print(z)

//ARRAYS
func learningArrays(){
    var userNames: [String] = []
    
    userNames.append("Lucas")
    
    userNames += ["Steve", "Jonas"]
    
    //Slice
    print(userNames[0...2])
    
    //Adicionar elementos
    userNames.append("novo registro")
    
    //Remover todos os elementos
    userNames.removeAll()
    
    //Funções de condições dos arrays
   // userNames.isEmpty
    
}
func howToGetAInput(){
    print("Qual a sua linguagem favorita?")

    let name = readLine()

    print("Minha linguagem favorita é: \(name!)")
    
}
