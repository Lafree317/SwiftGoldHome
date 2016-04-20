//
//  Helper.swift
//  SwiftGoldHome
//
//  Created by 胡春源 on 16/4/18.
//  Copyright © 2016年 胡春源. All rights reserved.
//

import UIKit
typealias buyersBlock = (buyers:Array<EntryModel>) -> Void
class Helper: NSObject {
    static let sharedInstance = Helper()
    private override init() {}
    
    func fetchHotEntry(page:Int,callBack:buyersBlock){
        let query = AVQuery(className: entry_className)
        query.limit = 20
        query.skip = 20*page
        query .orderByDescending("hotIndex")
        query.includeKey("user")
        query.cachePolicy = .CacheElseNetwork;
        query.findObjectsInBackgroundWithBlock { (objs, error) in
            if error != nil {
                return
            }
            callBack(buyers: self.resolveEntryWithObjs(objs))
        }
    }
    func resolveEntryWithObjs(objs:[AnyObject!]) -> Array<EntryModel>{
        var arr:Array<EntryModel> = []
        for obj in objs{
            let dic = (obj as! AVObject).dictionaryForObject()
            let entry = EntryModel(className: entry_className)
            entry.content = dic.valueForKey("content") as? String
            entry.title = dic.valueForKey("title") as? String
            entry.urlStr = dic.valueForKey("url") as? String
            
            let imageUrlStr = dic.valueForKey("screenshot")?.valueForKey("url") as? String
            entry.screenshot = NSURL(string: imageUrlStr!)
            
            
            let userAvatar = dic.valueForKey("user")?.valueForKey("avatar_large") as? String
            if let urlStr =  userAvatar{
                entry.userAvatar =  NSURL(string: urlStr)
            }
            arr.append(entry)
        }
        return arr
    }
}
