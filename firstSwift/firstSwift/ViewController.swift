//
//  ViewController.swift
//  firstSwift
//
//  Created by jefactoria on 2017/5/25.
//  Copyright © 2017年 sallen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    var counter = 0.0;
    var timer = Timer();
    var isPlaying = false;
    override var preferredStatusBarStyle: UIStatusBarStyle{
    
        return UIStatusBarStyle.lightContent;
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.text = String(counter);
    }
    

    @IBAction func playBtn(_ sender: Any) {
        
        if (isPlaying) {
            
            return;
        }
        playBtn.isEnabled = false;
        pauseBtn.isEnabled = true;
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(ViewController.updateTimer) , userInfo:nil, repeats: true);
        
    }

    
    @IBAction func pauseBtn(_ sender: UIButton) {
        
        playBtn.isEnabled = true;
        pauseBtn.isEnabled = false;
        
        timer.invalidate();
        isPlaying = false;
        
        
        
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
        playBtn.isEnabled = true
        pauseBtn.isEnabled = true
        
        
    }
    func updateTimer() {
        
        counter += 0.1;
        timeLabel.text = String(format:"%.1f",counter);
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

