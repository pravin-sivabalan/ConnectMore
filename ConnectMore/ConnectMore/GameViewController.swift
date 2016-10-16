//
//  GameViewController.swift
//  ConnectMore
//
//  Created by Pravin Sivabalan on 10/15/16.
//  Copyright © 2016 ConnectMore. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var xImage: UIImageView!
    
    
    var a = ConnectMore()
    @IBOutlet weak var obj00: UILabel!
    @IBOutlet weak var obj01: UILabel!
    @IBOutlet weak var obj02: UILabel!
    @IBOutlet weak var obj03: UILabel!
    @IBOutlet weak var obj04: UILabel!
    @IBOutlet weak var obj05: UILabel!
    @IBOutlet weak var obj06: UILabel!
    
    @IBOutlet weak var obj10: UILabel!
    @IBOutlet weak var obj11: UILabel!
    @IBOutlet weak var obj12: UILabel!
    @IBOutlet weak var obj13: UILabel!
    @IBOutlet weak var obj14: UILabel!
    @IBOutlet weak var obj15: UILabel!
    @IBOutlet weak var obj16: UILabel!
    
    @IBOutlet weak var obj20: UILabel!
    @IBOutlet weak var obj21: UILabel!
    @IBOutlet weak var obj22: UILabel!
    @IBOutlet weak var obj23: UILabel!
    @IBOutlet weak var obj24: UILabel!
    @IBOutlet weak var obj25: UILabel!
    @IBOutlet weak var obj26: UILabel!
    
    
    @IBOutlet weak var obj30: UILabel!
    @IBOutlet weak var obj31: UILabel!
    @IBOutlet weak var obj32: UILabel!
    @IBOutlet weak var obj33: UILabel!
    @IBOutlet weak var obj34: UILabel!
    @IBOutlet weak var obj35: UILabel!
    @IBOutlet weak var obj36: UILabel!
    
    @IBOutlet weak var obj40: UILabel!
    @IBOutlet weak var obj41: UILabel!
    @IBOutlet weak var obj42: UILabel!
    @IBOutlet weak var obj43: UILabel!
    @IBOutlet weak var obj44: UILabel!
    @IBOutlet weak var obj45: UILabel!
    @IBOutlet weak var obj46: UILabel!
    
    @IBOutlet weak var obj50: UILabel!
    @IBOutlet weak var obj51: UILabel!
    @IBOutlet weak var obj52: UILabel!
    @IBOutlet weak var obj53: UILabel!
    @IBOutlet weak var obj54: UILabel!
    @IBOutlet weak var obj55: UILabel!
    @IBOutlet weak var obj56: UILabel!
    
    @IBOutlet weak var obj60: UILabel!
    @IBOutlet weak var obj61: UILabel!
    @IBOutlet weak var obj62: UILabel!
    @IBOutlet weak var obj63: UILabel!
    @IBOutlet weak var obj64: UILabel!
    @IBOutlet weak var obj65: UILabel!
    @IBOutlet weak var obj66: UILabel!
    
    @IBOutlet weak var currentPlayer: UILabel!
    let container = UIView()
    let redSquare = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBoard()
    }
    
    func updateBoard(){
        obj00.text = a.board[0][0]
        obj01.text = a.board[0][1]
        obj02.text = a.board[0][2]
        obj03.text = a.board[0][3]
        obj04.text = a.board[0][4]
        obj05.text = a.board[0][5]
        obj06.text = a.board[0][6]
        obj10.text = a.board[1][0]
        obj11.text = a.board[1][1]
        obj12.text = a.board[1][2]
        obj13.text = a.board[1][3]
        obj14.text = a.board[1][4]
        obj15.text = a.board[1][5]
        obj16.text = a.board[1][6]
        obj20.text = a.board[2][0]
        obj21.text = a.board[2][1]
        obj22.text = a.board[2][2]
        obj23.text = a.board[2][3]
        obj24.text = a.board[2][4]
        obj25.text = a.board[2][5]
        obj26.text = a.board[2][6]
        obj30.text = a.board[3][0]
        obj31.text = a.board[3][1]
        obj32.text = a.board[3][2]
        obj33.text = a.board[3][3]
        obj34.text = a.board[3][4]
        obj35.text = a.board[3][5]
        obj36.text = a.board[3][6]
        obj40.text = a.board[4][0]
        obj41.text = a.board[4][1]
        obj42.text = a.board[4][2]
        obj43.text = a.board[4][3]
        obj44.text = a.board[4][4]
        obj45.text = a.board[4][5]
        obj46.text = a.board[4][6]
        obj50.text = a.board[5][0]
        obj51.text = a.board[5][1]
        obj52.text = a.board[5][2]
        obj53.text = a.board[5][3]
        obj54.text = a.board[5][4]
        obj55.text = a.board[5][5]
        obj56.text = a.board[5][6]
        obj60.text = a.board[6][0]
        obj61.text = a.board[6][1]
        obj62.text = a.board[6][2]
        obj63.text = a.board[6][3]
        obj64.text = a.board[6][4]
        obj65.text = a.board[6][5]
        obj66.text = a.board[6][6]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func putCol1(_ sender: AnyObject) {
        a.play(column: 0)
        updateBoard()
    }
    
    @IBAction func putCol2(_ sender: AnyObject) {
        a.play(column:1)
        updateBoard()
    }
    
    @IBAction func putCol3(_ sender: AnyObject) {
        a.play(column:2)
        updateBoard()
    }
    
    @IBAction func putCol4(_ sender: AnyObject) {
        a.play(column:3)
        updateBoard()
    }
    
    @IBAction func putCol5(_ sender: AnyObject) {
        a.play(column:4)
        updateBoard()
    }
    
    @IBAction func putCol6(_ sender: AnyObject) {
        a.play(column:5)
        updateBoard()
    }
    
    @IBAction func putCol7(_ sender: AnyObject) {
        a.play(column: 6)
        updateBoard()
    }
    
  }
