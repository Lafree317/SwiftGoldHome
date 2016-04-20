//
//  EntryModel.swift
//  SwiftGoldHome
//
//  Created by 胡春源 on 16/4/18.
//  Copyright © 2016年 胡春源. All rights reserved.
//

import UIKit


class EntryModel: AVObject {
    var title:String? // 标题
    var content:String? // 描述
    var urlStr:String? // 网页url
    var userAvatar:NSURL? // 头像
    var screenshot:NSURL? // 顶部图片
}
