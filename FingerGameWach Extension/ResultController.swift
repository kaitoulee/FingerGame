//
//  ResultController.swift
//  FingerGame
//
//  Created by kaitouLee on 16/4/19.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import WatchKit
import Foundation


class ResultController: WKInterfaceController {

    @IBOutlet var bg: WKInterfaceGroup!
    @IBOutlet var imgM: WKInterfaceImage!
    @IBOutlet var imgC: WKInterfaceImage!
    @IBOutlet var labResult: WKInterfaceLabel!


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBAction func onReStart() {
        //让当前页面消失
        self.dismissController()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        imgC.setImageNamed("g\(c)")
        imgM.setImageNamed("g\(m)")
        
        if c == 1{
            if m == 1 {
                onResult("平")
            }else if m == 2{
                onResult("输")
            }else if m == 3{
                onResult("赢")
            }
        }else if c == 2{
            if m == 1{
                onResult("赢")
            }else if m == 2{
                onResult("平")
            }else if m == 3{
                onResult("输")
            }
        }else if c == 3{
            if m == 1{
            onResult("输")
        }else if m == 2{
            onResult("平")
        }else if m == 3{
            onResult("输")
        }
        }
    }
//判断胜负 result 输,赢,平
    
    func onResult(result:String){
        switch result{
            case "输":
            labResult.setText("你输了")
            lose += 1
            
            bg.setBackgroundImageNamed("bgLose")
            case "赢":
            labResult.setText("你赢了")
            win += 1
            bg.setBackgroundImageNamed("bgWin")
            case "平":
            labResult.setText("平了")
            bg.setBackgroundImageNamed("bgTie")
        default:
            return
        }
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
