//
//  ViewController.swift
//  networking_Practice
//
//  Created by Javier Porras jr on 11/5/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let client = APIclient()
    var pokemon: Pokemon? {
        didSet{
            label.text = pokemon?.name
            imageView.image = pokemon?.image
        }
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 24)
//        label.backgroundColor = .blue
//        label.text = "Bulbazar"
        return label
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .red
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(label)
        view.addSubview(imageView)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 90).isActive = true //(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 350).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        client.fetchPokemon { (pokemon) in
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }
    }
}

