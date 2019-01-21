//
//  ConcreteWebSite.swift
//  QFFlyweight
//
//  Created by 情风 on 2019/1/21.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class ConcreteWebSite: WebSite {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    override func use(user: User) {
        print("网站分类:\(name),用户:\(user.name)")
    }
    
}
