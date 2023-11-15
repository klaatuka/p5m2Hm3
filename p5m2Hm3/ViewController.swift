

import UIKit

class ViewController: UIViewController {
    
    lazy var avatarImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Image-80")
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 40
//        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var nameAcountOwner: UILabel = {
        let name = UILabel()
        name.text = "Имя Фамилия"
        name.font = .boldSystemFont(ofSize: 20)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    lazy var aboutAcountOwner: UILabel = {
        let name = UILabel()
        name.text = "О себе"
        name.font = .boldSystemFont(ofSize: 12)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    lazy var viewAbout: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9277958274, green: 0.9277958274, blue: 0.9277958274, alpha: 1)
        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textAbout: UILabel = {
        let name = UILabel()
        name.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
        name.numberOfLines = 0
        name.font = .systemFont(ofSize: 12)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    lazy var photoAcountOwner: UILabel = {
        let name = UILabel()
        name.text = "Фото"
        name.font = .boldSystemFont(ofSize: 12)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    lazy var photoStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var leftImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Rectangle 2")
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var rightImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Rectangle 3")
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var editBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Редактировать", for: .normal)
        btn.layer.cornerRadius = 20
        btn.backgroundColor = #colorLiteral(red: 0.07891080528, green: 0.4126684964, blue: 0.8319188952, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    //MARK: - STACK для 2-х фотографий
    lazy var stackPhoto: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 9
        stack.distribution = .fillEqually
        return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setView()
    }
    
    func setView(){
        
        view.addSubview(avatarImg)
        NSLayoutConstraint.activate([
            avatarImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 79),
            avatarImg.widthAnchor.constraint(equalToConstant: 80),
            avatarImg.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        view.addSubview(nameAcountOwner)
        NSLayoutConstraint.activate([
            nameAcountOwner.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 19),
            nameAcountOwner.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        // текст - О себе
        view.addSubview(aboutAcountOwner)
        NSLayoutConstraint.activate([
            aboutAcountOwner.topAnchor.constraint(equalTo: nameAcountOwner.bottomAnchor, constant: 39),
            aboutAcountOwner.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41)
        ])
        
        view.addSubview(viewAbout)
        NSLayoutConstraint.activate([
            viewAbout.topAnchor.constraint(equalTo: aboutAcountOwner.bottomAnchor, constant: 7),
            viewAbout.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewAbout.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //            viewAbout.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // view куда вложен текст - о себе( содержание )
        viewAbout.addSubview(textAbout)
        NSLayoutConstraint.activate([
            textAbout.topAnchor.constraint(equalTo: viewAbout.topAnchor, constant: 20),
            textAbout.leadingAnchor.constraint(equalTo: viewAbout.leadingAnchor, constant: 14),
            textAbout.trailingAnchor.constraint(equalTo: viewAbout.trailingAnchor, constant: -15),
            textAbout.bottomAnchor.constraint(equalTo: viewAbout.bottomAnchor, constant: -20)
        ])
        // текст - ФОТО
        view.addSubview(photoAcountOwner)
        NSLayoutConstraint.activate([
            photoAcountOwner.topAnchor.constraint(equalTo: viewAbout.bottomAnchor, constant: 53),
            photoAcountOwner.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41)
        ])
        
        // 2 фотографии без стека
        
//        view.addSubview(photoStack)
//        view.addSubview(leftImg)
//        view.addSubview(rightImg)
//        NSLayoutConstraint.activate([
//            leftImg.heightAnchor.constraint(equalToConstant: 170),
//            leftImg.widthAnchor.constraint(equalToConstant: 170),
//            rightImg.heightAnchor.constraint(equalToConstant: 170),
//            rightImg.widthAnchor.constraint(equalToConstant: 170),
//            
//            leftImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            leftImg.topAnchor.constraint(equalTo: photoAcountOwner.bottomAnchor, constant: 14),
//            rightImg.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            rightImg.topAnchor.constraint(equalTo: photoAcountOwner.bottomAnchor, constant: 14)
//        ])
        
        // 2 фотографии в стеке constraint !!!!!!!!!!!!!!!!!!!!!!
        
        view.addSubview(stackPhoto)
        stackPhoto.addArrangedSubview(leftImg)
        stackPhoto.addArrangedSubview(rightImg)
        
        NSLayoutConstraint.activate([

        leftImg.heightAnchor.constraint(equalTo: leftImg.widthAnchor),
        
        rightImg.heightAnchor.constraint(equalTo: rightImg.widthAnchor),
        
        stackPhoto.topAnchor.constraint(equalTo: photoAcountOwner.bottomAnchor, constant: 20),
        stackPhoto.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        stackPhoto.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        // кнопка прикреплена cнизу основного вью
        view.addSubview(editBtn)
        NSLayoutConstraint.activate([
            editBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            editBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56),
            editBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}

