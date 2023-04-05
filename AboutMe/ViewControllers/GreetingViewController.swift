//
//  GreetingViewController.swift
//  AboutMe
//
//  Created by Mark Papush on 4/5/23.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var EmojiLabel: UILabel!
    @IBOutlet var WelcomeLabel: UILabel!
    
    var name: String!
    var emoji: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeLabel.text = "Welcome, \(name ?? "")"
        EmojiLabel.text = emoji
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
