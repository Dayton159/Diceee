//
//  ViewController.swift
//  Diceee
//
//  Created by Dayton on 10/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] //Creating a references of the dice's images

        
        // Int.random(in: 0..5) will throw you a random integer numbers which ranged from 0 to 5
        
        // .randomElement() also doing the same thing as to look into the array and find the numbers of items contained in it and generate it randomly
        
        diceImageView1.image = dices [Int.random(in: 0...5)]


        diceImageView2.image = dices.randomElement()

        let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

        //The number of letters in alphabet equals 26
        let letter1 = alphabet[Int.random(in: 0...25)]
        let letter2 = alphabet[Int.random(in: 0...25)]
        let letter3 = alphabet[Int.random(in: 0...25)]
        let letter4 = alphabet[Int.random(in: 0...25)]
        let letter5 = alphabet[Int.random(in: 0...25)]
        let letter6 = alphabet[Int.random(in: 0...25)]

         
        let password = letter1 + letter2 + letter3 + letter4 + letter5 + letter6

        print(password)
    }

}
