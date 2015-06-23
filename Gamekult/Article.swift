//
//  Article.swift
//  Gamekult
//
//  Created by Robin Somlette on 21-06-2015.
//  Copyright (c) 2015 Robin Somlette. All rights reserved.
//

import Foundation

struct Article {
    var title: String!
    var author: String!
    var link: String!
    var description: String!
    var pubDate: NSDate!
    var pubDateString: String!
    var image: String!
    
    init(title: String, author: String, link: String, description: String, pubDate: String, image: String) {
        self.title = title.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
        //       self.title = title
        self.link = link.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
        self.author = author.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
        self.description = description.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
        self.pubDateString = pubDate.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
        //        self.pubDate = convertDateStringToNSDate(pubDateString)
        self.image = image.stringByReplacingOccurrencesOfString("\n\t\t\t", withString: "", options: nil, range: nil)
    }
    
    func convertDateStringToNSDate(dateString: String) -> NSDate {
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "E, dd MMM yyyy HH:mm:ss xx"
        let date = dateFormatter.dateFromString(dateString)
        
        return date!
    }
    
    func convertDateToString(date: NSDate) -> String {
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EE dd hh:mm" //format style. Browse online to get a format that fits your needs.
        var dateString = dateFormatter.stringFromDate(date)
        return dateString
    }
    
    
}