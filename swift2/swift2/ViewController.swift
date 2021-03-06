//
//  ViewController.swift
//  swift2
//
//  Created by jefactoria on 2017/5/25.
//  Copyright © 2017年 sallen. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var data = [ "《生活不止眼前的苟且》",
                 "妈妈坐在门前，哼着花儿与少年",
                 "虽已时隔多年，记得她泪水涟涟",
                 "那些幽暗的时光，那些坚持与慌张",
                 "在临别的门前，妈妈望着我说",
                 "生活不止眼前的苟且，还有诗和远方的田野",
                 "你赤手空拳来到人世间，为找到那片海不顾一切",
                 "                                                         --- 许巍"];
    //字体名字
    let fontNames = ["Copperplate-Bold", "Copperplate","Copperplate-Light"];
    var fontRowIndex = 0;
    

    @IBOutlet weak var fontLabel: UILabel!
    
    @IBOutlet weak var fontTab: UITableView!
    
    @IBOutlet weak var fontBtn: UIButton!
    
    @IBAction func changeFont(_ sender: UIButton) {
        
        fontRowIndex = (fontRowIndex + 1) % 3;
        fontTab.reloadData();
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fontTab.dequeueReusableCell(withIdentifier: "FontCell", for: indexPath);
        let text = data[indexPath.row];
        cell.textLabel?.text = text;
        cell.textLabel?.textColor = UIColor.white;
        cell.textLabel?.font = UIFont(name: self.fontNames[fontRowIndex], size: 16);
        return cell;
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

