//
//  MyGreeter.swift
//  ZhyMoniqiTest
//
//  Created by 张海洋 on 2022/6/28.
//

import Foundation

class greeter:NSObject{
    
    
    
   @objc func getGreetString() -> String {
  
        let hour=getCountHour()
        
        var string=""
        
        if(hour>=6&&hour<12){
            
            string="Good morning"
            
        }else if(hour>=12&&hour<18){
            
            
            string="Good afternoon"
        }else if(hour>=18||hour<6){
            
            
            string="Good evening"
        }
        
        return string
  
    }
    
    func getCountHour() -> Int {
       
        let date = Date()
        let calendar: Calendar = Calendar(identifier: .gregorian)
   
        let hour = calendar.component(.hour, from: date)
      
        return hour
  
        
    }

    
    
}
