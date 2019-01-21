//
//  WebSiteFactory.swift
//  QFFlyweight
//
//  Created by 情风 on 2019/1/21.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class WebSiteFactory: NSObject {
    var flyweights:NSMutableDictionary = NSMutableDictionary()
    
    func getWebSiteCategory(key: String) -> WebSite {
        if (flyweights.object(forKey: key) != nil) {
            return flyweights.object(forKey: key) as! WebSite
        }
        let website: ConcreteWebSite = ConcreteWebSite(name: key)
        flyweights.setObject(website, forKey: key as NSCopying)
        
        return website
    }
    
    func getWebSiteCount() -> Int {
        return flyweights.allValues.count
    }
    
}
