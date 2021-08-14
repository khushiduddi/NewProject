//
//  ViewController.swift
//  NewProject
//
//  Created by Khushi Duddi on 8/13/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildUI()
    }
    private func getImage(url: String) -> UIImage? {
           let url = URL(string: url)
           let data = try? Data(contentsOf: url!)
           return UIImage(data: data!)
       }
    
    private func buildUI() {
            let label = UILabel()
            // Takes away default settings of constraints
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Hello, iOS"
            label.textAlignment = .center
            label.backgroundColor = .lightGray
            // Have to add everytime
            self.view.addSubview(label)
            label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
            label.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "https://www.howtogeek.com/wp-content/uploads/2018/06/shutterstock_1006988770.png?width=1198&trim=1,1&bg-color=000&pad=1,1"
        
        //"https://media.wired.com/photos/5b32b1b5e1f6bb42454eb8ce/master/w_120,c_limit/Boeing-Transpo.jpg"
        textView.textColor = .black
        textView.backgroundColor = .lightGray
        textView.textAlignment = .left
        self.view.addSubview(textView)
        textView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 150).isActive = true
        textView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = getImage(url: textView.text)
        self.view.addSubview(imageView)
        // add your constraints here
        imageView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Ok", for: .normal)
            button.backgroundColor = .blue
            self.view.addSubview(button)
            button.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20).isActive = true
            button.widthAnchor.constraint(equalToConstant: 100).isActive = true
            button.heightAnchor.constraint(equalToConstant: 30).isActive = true
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }
    
    /*
     1. Inserting image between label and button
     2. Insert textView above image to recieve url
     3. Get an image from the network(url) and display it
     4. StackView
     */


}

