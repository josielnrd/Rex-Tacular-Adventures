//
//  AnimalGameViewController.swift
//  Rex Tackular Adventures
//
//  Created by P D Leonard on 7/31/16.
//  Copyright © 2016 MacMeDan. All rights reserved.
//

import UIKit
import Material


class AnimalGameViewController: UIViewController {
    var crateClosed = true
    var crate = CrateAnimationsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareCrate()
        addBackButton()
    }

    func addBackButton() {
        let button = FabButton()
        button.setTitle("Back", forState: .Normal)
        button.addTarget(self, action: #selector(dismissView), forControlEvents: .TouchUpInside)
        view.addSubview(button)
        view.layout(button).top(20).left(20).width(50).height(50)
    }

    func dismissView() {
        self.navigationController?.popViewControllerAnimated(true)
    }


    func prepareView() {
        let titleLabel = UILabel()
        titleLabel.font = UIFont(name: "Chalkduster", size: 45)
        titleLabel.textColor = MaterialColor.white
        titleLabel.text = "What Animal is this!"
        view.layout(titleLabel).centerHorizontally().top(20)
        view.addSubview(titleLabel)
        view.backgroundColor = MaterialColor.lightBlue.darken2
        let crateGesture = UITapGestureRecognizer(target: self, action: #selector(crateTapped))
        self.view.addGestureRecognizer(crateGesture)
    }
    
    func prepareCrate() {
        crate = CrateAnimationsView(frame: view.frame)
        view.addSubview(crate)
    }
    
    func crateTapped() {
        crateClosed ? crate.addOpenAnimation() : crate.addCloseAnimation({ Bool in
                if Bool {
                    self.crate.dancingAnimal.reset()
                }
            })
        crateClosed = !crateClosed
    }
}