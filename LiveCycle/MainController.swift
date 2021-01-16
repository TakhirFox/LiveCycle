//
//  MainController.swift
//  LiveCycle
//
//  Created by Zakirov Tahir on 15.01.2021.
//

import SwiftUI


class MainController: UIViewController {
    
    var states = States.states
    var imageLabel = UIImageView()
    var descriptionLabel: UILabel!
    let date = Date()
    let calendar = Calendar.current
    var countImage: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        descriptionLabel = UILabel()
        descriptionLabel.font = UIFont(name: "Arial Rounded MT Pro Cyr", size: 36)
        descriptionLabel.textColor = .white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = String(calendar.component(.hour, from: date))
        
        // Задаем данные в зависимости от времени
        setupDataDependingOnTime()
      
        imageLabel = UIImageView(image: UIImage(named: countImage))
        
        // настройки по контрейнтам
        constraintsSetup()
    }
    
    func constraintsSetup() {
        let stackView = VerticalStackView(arrangedSubviews: [
            imageLabel, descriptionLabel
        ])
        
        view.addSubview(stackView)
        
        imageLabel.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 150, left: 30, bottom: 0, right: 30), size: .init(width: 0, height: view.frame.width))
        
        descriptionLabel.anchor(top: imageLabel.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 90, left: 16, bottom: 0, right: 16))
        descriptionLabel.textAlignment = .center
    }
    
    func setupDataDependingOnTime() {
        switch calendar.component(.hour, from: date) {
        case 9...10:
            countImage = states[0].stateImage
            descriptionLabel.text = states[0].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case 11...12:
            countImage = states[1].stateImage
            descriptionLabel.text = states[1].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case 13:
            countImage = states[2].stateImage
            descriptionLabel.text = states[2].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case 14:
            countImage = states[3].stateImage
            descriptionLabel.text = states[3].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        case 15:
            countImage = states[4].stateImage
            descriptionLabel.text = states[4].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case 16:
            countImage = states[5].stateImage
            descriptionLabel.text = states[5].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        case 17:
            countImage = states[6].stateImage
            descriptionLabel.text = states[6].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)
        case 18:
            countImage = states[7].stateImage
            descriptionLabel.text = states[7].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        default:
            countImage = states[0].stateImage
            descriptionLabel.text = states[8].stateDescriptions
            view.backgroundColor = #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1)
        }
    }
    
    
}

// Только ради быстрой верстки, довольно таки удобно
struct AppView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = MainController()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UIViewController
    
}

struct MainController_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .edgesIgnoringSafeArea(.all)
    }
}
