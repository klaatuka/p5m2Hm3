

import UIKit

class ViewController: UIViewController {
    
    private var appView = AppView()
    
    lazy var viewAbout: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9277958274, green: 0.9277958274, blue: 0.9277958274, alpha: 1)
        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        // фото аватара
        let avatarImg = appView.getImage(name: "Image-80")
        avatarImg.layer.cornerRadius = 40
        view.addSubview(avatarImg)
        NSLayoutConstraint.activate([
            avatarImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 79),
            avatarImg.widthAnchor.constraint(equalToConstant: 80),
            avatarImg.heightAnchor.constraint(equalToConstant: 80)
        ])
        // имя владельца аккаунта
        let nameAcountOwner = appView.getLabel(text: "Имя Фамилия", fontSize: 20, weight: .black)
        view.addSubview(nameAcountOwner)
        NSLayoutConstraint.activate([
            nameAcountOwner.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 19),
            nameAcountOwner.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        // текст - О себе
        let aboutAcountOwner = appView.getLabel(text: "О себе", weight: .bold)
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
        let textAbout = appView.getLabel(text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
        textAbout.numberOfLines = 0
        viewAbout.addSubview(textAbout)
        NSLayoutConstraint.activate([
            textAbout.topAnchor.constraint(equalTo: viewAbout.topAnchor, constant: 20),
            textAbout.leadingAnchor.constraint(equalTo: viewAbout.leadingAnchor, constant: 14),
            textAbout.trailingAnchor.constraint(equalTo: viewAbout.trailingAnchor, constant: -15),
            textAbout.bottomAnchor.constraint(equalTo: viewAbout.bottomAnchor, constant: -20)
        ])
        // текст - ФОТО
        let photoAcountOwner = appView.getLabel(text: "Фото", weight: .bold)
        view.addSubview(photoAcountOwner)
        NSLayoutConstraint.activate([
            photoAcountOwner.topAnchor.constraint(equalTo: viewAbout.bottomAnchor, constant: 53),
            photoAcountOwner.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41)
        ])
        let leftImg = appView.getImage(name: "Rectangle 2")
        
        let rightImg = appView.getImage(name: "Rectangle 3")
        
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

