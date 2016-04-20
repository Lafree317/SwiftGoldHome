//
//  XTHomeTableViewController.swift
//  SwiftGoldHome
//
//  Created by 胡春源 on 16/4/18.
//  Copyright © 2016年 胡春源. All rights reserved.
//

import UIKit


class XTHomeTableViewController: UITableViewController {

    var dataArr:Array<EntryModel> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib.init(nibName: "XTHomeCell", bundle: nil), forCellReuseIdentifier: "XTHomeCell")
        Helper.sharedInstance.fetchHotEntry(0) { (buyers) in
            self.dataArr = buyers
            self.tableView.reloadData()
        }
        
        // 让tableView的Cell高度按照可视化的约束来赋值
        self.tableView.rowHeight = UITableViewAutomaticDimension;
    }



    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dataArr.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        // 预估cell高度
        return 246
    }
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("XTHomeCell", forIndexPath: indexPath) as! XTHomeCell
        cell.setEntryModel(dataArr[indexPath.section])
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        let url = dataArr[indexPath.section].urlStr
        
        self.performSegueWithIdentifier(segue_webVC, sender:url)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segue_webVC {
            let webVC = segue.destinationViewController as! XTEntryDetialViewController
            webVC.str = sender as? String

            
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
