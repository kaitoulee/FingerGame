//
//  InterfaceController.swift
//  FingerGameWach Extension
//
//  Created by kaitouLee on 16/4/19.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var labLose: WKInterfaceLabel!
    @IBOutlet var labWin: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    //出拳
    @IBAction func OnBu() {
        onComputer()
        m = 3
        //界面跳转
        self.presentControllerWithName("result", context: nil)
    }
    @IBAction func ONjianDao() {
        onComputer()
        m = 2
        self.presentControllerWithName("result", context: nil)
    }
    @IBAction func onCuiZi() {
        onComputer()
        m = 1
        self.presentControllerWithName("result", context: nil)
    }
    
    //返回电脑出的拳
    func onComputer(){
        c = random() % 3//值是0 - 2
        c += 1 //1-3
    }
    func xssf (){
        labWin.setText("\(win)")
        labLose.setText("\(lose)")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//赢得次数
var win:Int = 0
//输的次数
var lose:Int = 0
//电脑出拳
var c:Int = 1
//我出的拳
var m:Int = 1



