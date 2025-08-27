//
//  ImagePicker.swift
//  newtela
//
//  Created by iredefbmac_40 on 26/08/25.
//


import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var imagemSelecionada: UIImage?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let imagem = info[.originalImage] as? UIImage {
                parent.imagemSelecionada = imagem
            }
            picker.dismiss(animated: true)
        }
    }
}
