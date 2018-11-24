//
//  pageone.swift
//  iKnow
//
//  Created by Supansa Ch on 16/11/61.
//  Copyright © พ.ศ. 2561 Supansa Ch. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class Pageone: UIViewController {
    
    
    
    @IBOutlet var showScore: UILabel!
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var QuestionLabel: UILabel!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Next: UIButton!
    @IBOutlet var shakeLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var playButton: UIButton!
    @IBOutlet weak var imageQuestion: UIImageView!
    
    var CorrectAnswer = String()
    var score : Int = 0
    var timer = Timer()
    var counter = 15
    var timeCount = 15

    
    @objc func updateTimer () {
       print("A secound has passed")
        if timeCount > 0 {
             timeCount -= 1
            timeLabel.text = String(timeCount)
        }else{
            timer.invalidate()
        }
        print(timeCount)
        timeLabel.text = "\(timeCount)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RandomQuestion()
        Hide()
        
        timeLabel.text = "\(counter)"
        playButton.isEnabled = true
        
        
    }//end override func
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (motion == .motionShake){
            shakeLabel.text = "Shaked!!"
            RandomQuestion()
        }else{
            return
        }
    }
    
    
    @IBAction func playButtonDidTouch(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Pageone.updateTimer), userInfo: nil, repeats: true)
           
}
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        timer.invalidate()
}
    
   
    
   func RandomQuestion(){
        var RandomNumber = arc4random() % 4
        RandomNumber += 1
        
        switch (RandomNumber){
            
        case 1:
            
            QuestionLabel.text = "ตัวละครนี้ชื่อว่าอะไร"
            imageQuestion.image = UIImage(named: "movie2")
            Button1.setTitle("เดรโก มัลฟอยด์", for: UIControl.State.normal)
            Button2.setTitle("สตีฟ โรเจอร์", for: UIControl.State.normal)
            Button3.setTitle("แคนนิส เอเวอดีน", for: UIControl.State.normal)
            Button4.setTitle("ไบรอัน โอคอนเนอร์", for: UIControl.State.normal)
            CorrectAnswer = "3"
            score += 1
            
            
            
            break
        case 2:
            imageQuestion.image = UIImage(named: "movie1")
            QuestionLabel.text = "ในหนังเรื่องนี้ ไม่มีตัวละครใดอยู่ในเรื่อง"
            Button1.setTitle("หลวงพี่เท่ง", for: UIControl.State.normal)
            Button2.setTitle("สตีฟ โรเจอร์", for: UIControl.State.normal)
            Button3.setTitle("โทนี่ สตาร์ค", for: UIControl.State.normal)
            Button4.setTitle("สตีเวน สเตรนจ์", for: UIControl.State.normal)
            CorrectAnswer = "1"
            score += 1
            
            
            break
        case 3:
            imageQuestion.image = UIImage(named: "movie3")
            QuestionLabel.text = "ทอม เฟลตัน แสดงเป็นใครในเรื่องนี้"
            Button1.setTitle("เดรโก มัลฟอยด์", for: UIControl.State.normal)
            Button2.setTitle("สตีฟ โรเจอร์", for: UIControl.State.normal)
            Button3.setTitle("แคนนิส เอเวอดีน", for: UIControl.State.normal)
            Button4.setTitle("ไบรอัน โอคอนเนอร์", for: UIControl.State.normal)
            CorrectAnswer = "1"
            score += 1
            
        
            break
        case 4:
            imageQuestion.image = UIImage(named: "movie6")
            QuestionLabel.text = "ใครไม่ได้แสดงหนังเรื่องนี้"
            Button1.setTitle("หม่ำ จ๊กม๊ก", for: UIControl.State.normal)
            Button2.setTitle("เอมม่า วัตสัน", for: UIControl.State.normal)
            Button3.setTitle("เจเน็ต เขียว", for: UIControl.State.normal)
            Button4.setTitle("เยาวลักษณ์ ตุ้มบุญ ", for: UIControl.State.normal)
            CorrectAnswer = "1"
            score += 1
            
    
            break
        case 5:
            imageQuestion.image = UIImage(named: "movie4")
            QuestionLabel.text = "หนังเรื่องนี้ชื่อว่าอะไร"
            Button1.setTitle("Now you see me", for: UIControl.State.normal)
            Button2.setTitle("ระทะทูอี่", for: UIControl.State.normal)
            Button3.setTitle("แหยมยโสธร", for: UIControl.State.normal)
            Button4.setTitle("หนูทำอาหาร", for: UIControl.State.normal)
            CorrectAnswer = "2"
            score += 1
            
            
            break
        case 6:
            imageQuestion.image = UIImage(named: "movie5")
            QuestionLabel.text = "หนังเรื่องนี้ชื่อว่าอะไร"
            Button1.setTitle("ไวกิ้ง เลี้ยงมังกร", for: UIControl.State.normal)
            Button2.setTitle("Home stay", for: UIControl.State.normal)
            Button3.setTitle("เลือดข้น คนจาง", for: UIControl.State.normal)
            Button4.setTitle("How to trian your dragon", for: UIControl.State.normal)
            CorrectAnswer = "4"
            score += 1
            
            default:
            
            break
            
        }//end switch
    
}//end func
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
        
    }//end func hidden
    func UnHiden(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    func updateScore () {
        showScore.text = String(score)
    }
    
    
    
    @IBAction func Button1Action(_ sender: Any) {
        UnHiden()
        
        if (CorrectAnswer == "1"){
        LabelEnd.text = "You are Correct"
        }else{
           LabelEnd.text = "You are Wrong!!"
        }
        if (LabelEnd.text == "You are Correct" ){
            UnHiden()
            updateScore ()
             ProgressHUD.showSuccess("Correct")
            
        }else{
            UnHiden()
            updateScore ()
            ProgressHUD.showError("Wrong!!")
            
        }
    }
    @IBAction func Button2Action(_ sender: Any) {
        UnHiden()
        if (CorrectAnswer == "2"){
             LabelEnd.text = "You are Correct"
        }else{
            LabelEnd.text = "You are Wrong!!"
        }
        if (LabelEnd.text == "You are Correct" ){
            UnHiden()
            updateScore ()
             ProgressHUD.showSuccess("Correct")
            
        }else{
            UnHiden()
            updateScore ()
            ProgressHUD.showError("Wrong!!")
        }
    }
    @IBAction func Button3Action(_ sender: Any) {
        UnHiden()
        if (CorrectAnswer == "3"){
             LabelEnd.text = "You are Correct"
        }else{
            LabelEnd.text = "You are Wrong!!"
        }
        if (LabelEnd.text == "You are Correct" ){
            UnHiden()
            updateScore ()
             ProgressHUD.showSuccess("Correct")
            
        }
        else {
            UnHiden()
            updateScore ()
            ProgressHUD.showError("Wrong!!")
        }
    }
    @IBAction func Button4Action(_ sender: Any) {
        UnHiden()
        if (CorrectAnswer == "4"){
             LabelEnd.text = "You are Correct"
        }else{
            LabelEnd.text = "You are Wrong!!"
        }
        if (LabelEnd.text == "You are Correct" ){
            UnHiden()
            updateScore ()
             ProgressHUD.showSuccess("Correct")
            
        }else{
            UnHiden()
            updateScore ()
            ProgressHUD.showError("Wrong!!")
            
        }
    }
    
    @IBAction func Next(_ sender: Any) {
        RandomQuestion()
        Hide()
        endGame()
        
    }
    func endGame() {
        if (timeLabel.text == "0"){
            Button1.isEnabled = false
            Button2.isEnabled = false
            Button3.isEnabled = false
            Button4.isEnabled = false
            Next.isEnabled = false
        }
        else{
            Button1.isEnabled = true
            Button2.isEnabled = true
            Button3.isEnabled = true
            Button4.isEnabled = true
            Next.isEnabled = true
        }
        
        }//end func end game
   
    
}//end class
