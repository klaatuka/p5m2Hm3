

import Foundation
import UIKit

class AppView{
    
    func getLabel(text: String, fontSize: CGFloat = 12, weight: UIFont.Weight = .regular, color: UIColor = .appBlack) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func getImage(name: UIImage) -> UIImageView {
        let img = UIImageView()
        img.image = name
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 40
//        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
}
