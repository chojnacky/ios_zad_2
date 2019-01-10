//
//  main.swift
//  ios_zad_2
//
//  Created by Karol Chojnacki on 10/01/2019.
//  Copyright © 2019 Karol Chojnacki. All rights reserved.
//

import Foundation

func getAccountNumber(accountNumber:String?){
    //sprawdzenie czy kod ma 24 cyfr
    if(accountNumber?.count != 24){
        print("Wrong bank account number.")
        return
    }
    print("Right bank account number")
}

print("Insert bank account number: ")
if let number:String = readLine(){
    getAccountNumber(accountNumber:number)
} else {
    print("Error")
}
