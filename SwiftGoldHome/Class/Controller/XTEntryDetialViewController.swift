//
//  XTEntryDetialViewController.swift
//  SwiftGoldHome
//
//  Created by 胡春源 on 16/4/20.
//  Copyright © 2016年 胡春源. All rights reserved.
//

import UIKit

class XTEntryDetialViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
//    var url:NSURL
    var str:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        guard let urlStr = str else{
            print("没有url")
            return;
        }
        let url = NSURL(string: urlStr)!
        
//        print(str!)
        let urlRequst = NSURLRequest(URL: url)
        webView.loadRequest(urlRequst)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
