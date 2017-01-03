//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Young Hoon OH on 30/12/2016.
//  Copyright © 2016 Young Hoon OH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var theCoolTableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = emoji.stringEmoji // vc1에서 table view에 표시할 내용 (emoji=string이니까 emoji를 그냥 나열한 것뿐임)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true) // 이건 애니메이션 부분
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier:
            "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji="😀"
        emoji1.birthYear = 2001
        emoji1.category = "Animal"
        emoji1.definition = "this is a smile icon"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji="👏"
        emoji2.birthYear = 2002
        emoji2.category = "Hand"
        emoji2.definition = "this is a clap"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji="👥"
        emoji3.birthYear = 2005
        emoji3.category = "friends"
        emoji3.definition = "this is a friends icon"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji="👨‍🏫"
        emoji4.birthYear = 2002
        emoji4.category = "student"
        emoji4.definition = "this is a student icon"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji="😡"
        emoji5.birthYear = 2004
        emoji5.category = "angry"
        emoji5.definition = "this is a angry icon"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

