//
//  Image Picker Extensions.swift
//  Meme
//
//  Created by Mohamed Mohsen on 4/26/19.
//  Copyright © 2019 Mohamed Mohsen. All rights reserved.
//

import Foundation
import UIKit

//Image Picker
extension MemeViewController{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let chosenImage = info[.originalImage] as? UIImage
        {
            originalImage.contentMode = .scaleAspectFit
            originalImage.image = chosenImage
            self.shareButton.isEnabled = true
        }
        dismiss(animated:true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func presentImagePickerWith(sourceType: UIImagePickerController.SourceType) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.sourceType = sourceType
        present(imagePickerController, animated: true, completion: nil)
    }
}
