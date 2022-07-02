//
//  InterfaceController.swift
//  GuessMovie WatchKit Extension
//
//  Created by Felix Titov on 6/27/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    @IBOutlet weak var emojiButton: WKInterfaceButton!
    
    let movies = Film.getFilms()
    var film: Film?
    
    private var index = 0
    private var timer: Timer?
    
    override func awake(withContext context: Any?) {
        film = movies[index]
        self.nameLabel.setText("")
        self.emojiButton.setTitle(film?.emojies)
    }
    
    
    @IBAction func emojiButtonTapped() {
        nameLabel.setText(film?.name)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { _ in
            self.film = self.movies[self.index % 5]
            self.emojiButton.setTitle(self.film?.emojies)
            self.nameLabel.setText("")
        })
        
        index += 1
    }
    
}
