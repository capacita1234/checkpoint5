


import SwiftUI
import SwiftData
class ListViewModel: ObservableObject{
    @Published var listas: [Lista] = []
    
    static let shared = ListViewModel()
    
    private init(){}
    
    
    func CriarLista(titulo: String, descricao: String, cor:ListColor, icone:String){
        let newLista = Lista(titulo: titulo, descricao: descricao, cor: cor, icone: icone)
        listas.append(newLista)
    }
    func deletarLista(lista: Lista){
        listas.removeAll{ $0.id == lista.id}
    }
    func AdicionarProdutoNaLista(lista:Lista, produto: Produto){}
    
    func RemoverProdutoDaLista(lista:Lista, produto: Produto){}
    
   func criarLista(titulo: String, descricao: String, cor:ListColor, icone:String, context: ModelContext){
        let newLista = Lista(titulo: titulo, descricao: descricao, cor: cor, icone:icone)
        listas.append(newLista)
        
        context.insert(newLista)
        
        do{
            try context.save()
        }catch{
            print("Falha ao Adicionar Nova lista: \(error)")
        }
    }
    func deletarLista(lista: Lista, context: ModelContext){
        listas.removeAll{ $0.id == lista.id}
        context.delete(lista)
        do{
            try context.save()
        }catch{
            print("Erro ao Deletar lista: \(error.localizedDescription)")
        }
    }
  func buscarListas(context: ModelContext){
    
   /* let descriptor = FetchDescriptor<Lista>()
      
      do{
          self.listas = try context.fetch(descriptor)
      } catch{
          print("Erro ao buscar listas: \(error)")
      }*/
}
    }
    
    


