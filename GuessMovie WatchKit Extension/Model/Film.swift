//
//  Film.swift
//  GuessMovie WatchKit Extension
//
//  Created by Felix Titov on 7/2/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct Film {
    var emojies: String
    var name: String
    
    static func getFilms() -> [Film] {
        return [Film(emojies: "💎👋🏼", name: "Брилиантовая рука"),
                Film(emojies: "🎩🍀", name: "Джентельмены удачи"),
                Film(emojies: "🔨☁️☁️☁️", name: "Достучаться до небес"),
                Film(emojies: "💼🐻👨‍👩‍👦", name: "Кристофер Робин"),
                Film(emojies: "🌎🐒🐒🐒", name: "Планета обезьян"),
        ]
    }
}
