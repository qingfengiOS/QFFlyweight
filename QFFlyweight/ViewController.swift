//
//  ViewController.swift
//  QFFlyweight
//
//  Created by 情风 on 2019/1/21.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /**
     享元模式：运用共享技术有效地支持大量细粒度的对象。
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        let website: WebSiteFactory = WebSiteFactory()

        let fl: WebSite = website.getWebSiteCategory(key: "博客")
        fl.use(user: User(name: "用户1"))
        
        let fm: WebSite = website.getWebSiteCategory(key: "博客")
        fm.use(user: User(name: "用户2"))
        
        let fn: WebSite = website.getWebSiteCategory(key: "博客")
        fn.use(user: User(name: "用户3"))
        
        let fx: WebSite = website.getWebSiteCategory(key: "产品展示")
        fx.use(user: User(name: "用户4"))
        
        let fy: WebSite = website.getWebSiteCategory(key: "产品展示")
        fy.use(user: User(name: "用户5"))
        
        let fz: WebSite = website.getWebSiteCategory(key: "产品展示")
        fz.use(user: User(name: "用户6"))
        
        
        

        
    }


}

