//
//  PokeCell.swift
//  pokedex3
//
//  Created by Jeefer on 05/07/2017.
//  Copyright © 2017 Jeefer. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        self.nameLbl.text = self.pokemon.name.capitalized
        self.thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
    
}
