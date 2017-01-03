//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Young Hoon OH on 01/01/2017.
//  Copyright © 2017 Young Hoon OH. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Catergory: \(emoji.category)"
        definitionLabel.text = emoji.definition
  
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
