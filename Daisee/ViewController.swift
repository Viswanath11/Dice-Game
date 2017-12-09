//
//  ViewController.swift
//  Daisee
//
//  Created by Viswanath Subramani S S on 25/10/17.
//	Assests provided by London App Brewery
//  Copyright © 2017 ViswanathSubramaniSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var diceImageView1: UIImageView!
	@IBOutlet weak var diceImageView2: UIImageView!
	
	var randomIndex1: Int = 0
	var randomIndex2: Int = 0
	var diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
	
	override func viewDidLoad(){
		super.viewDidLoad()
		ThrowDice()
	}
	
	@IBAction func rollButtonTapped(_ sender: UIButton) {
		ThrowDice()
		print(randomIndex1+1," ", randomIndex2+1)
	}
	
	func ThrowDice(){
		randomIndex1 = Int(arc4random_uniform(6))
		randomIndex2 = Int(arc4random_uniform(6))
		
		diceImageView1.image = UIImage(named: diceArray[randomIndex1])
		diceImageView2.image = UIImage(named: diceArray[randomIndex2])
		
		
//		switch diceNumber {
//		case 1:
//			diceImage.image = #imageLiteral(resourceName: "dice2")
//		case 2:
//			diceImage.image = #imageLiteral(resourceName: "dice3")
//		case 3:
//			diceImage.image = #imageLiteral(resourceName: "dice4")
//		case 4:
//			diceImage.image = #imageLiteral(resourceName: "dice5")
//		case 5:
//			diceImage.image = #imageLiteral(resourceName: "dice6")
//		default:
//			diceImage.image = #imageLiteral(resourceName: "dice1")
//		}
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		if (motion == UIEventSubtype.motionShake){
			ThrowDice()
		}
	}
	
}

