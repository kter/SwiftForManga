//
//  ViewController.swift
//  SwiftForManga
//
//  Created by 高橋智彦 on 2017/10/14.
//  Copyright © 2017年 高橋智彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Manga: UIImageView!
    
    var ImageArray = [UIImage]()
    var timer1 = Timer()
    var timer2 = Timer()
    var score = 0
    var count = 0
    
    @IBAction func start(_ sender: Any) {
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.score += 1
            self.Score.text = String(self.score)
        })
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            
            if(self.count > 5){
                self.Manga.image = UIImage(named: "dash0.png")
                self.count = 0
            }else{
                self.Manga.image = self.ImageArray[self.count]
            }
            self.count += 1

        })
    }
    
    @IBAction func stop(_ sender: Any) {
        timer1.invalidate()
        timer2.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")
        
        ImageArray = [image0!, image1!, image2!, image3!, image4!, image5!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

