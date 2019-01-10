//
//  main.swift
//  ios_zad_2
//
//  Created by Karol Chojnacki on 10/01/2019.
//  Copyright © 2019 Karol Chojnacki. All rights reserved.
//

import Foundation

class Bank_Account{
    var accountNumber:String = ""
    var bankID:String = ""
    var bankName:String = ""
    init(accNumber:String, setBankID:String, setBankName:String) {
        accountNumber = accNumber
        bankID = setBankID
        bankName = setBankName
    }
}

func getAccountNumber(accountNumber:String) -> Bank_Account? {
    var countNumber:Int = 0
    var accountNumberTemp:String = ""
    //counting numbers in accountNumber
    for character in accountNumber{
        if (character != " "){
            countNumber+=1
            //adding every number to new variable for easier detecting bankID
            accountNumberTemp.append(character)
        }
    }
    //checking if inputed string has 26 numbers
    if countNumber != 26{
        return nil
    }
    var bankName:String = ""
    var bankID:String = ""
    var sign:Character
    //writing bank ID to variable bankID
    for i in 2...5{
        sign = accountNumberTemp[accountNumberTemp.index(accountNumberTemp.startIndex, offsetBy: i)]
        if (sign != " " && bankID.count < 5) {
            bankID.append(sign)
        }
    }
    //searching bank name by bankID
    switch bankID {
    case "1010":bankName = "Narodowy Bank Polski"
    case "1020":bankName = "PKO BP"
    case "1030":bankName = "Bank Handlowy (Citi Handlowy)"
    case "1050":bankName = "ING"
    case "1060":bankName = "BPH"
    case "1090":bankName = "BZ WBK"
    case "1130":bankName = "BGK"
    case "1140":bankName = "mBank, Orange Finanse"
    case "1160":bankName = "Bank Millennium"
    case "1240":bankName = "Pekao"
    case "1280":bankName = "HSBC"
    case "1320":bankName = "Bank Pocztowy"
    case "1470":bankName = "Eurobank"
    case "1540":bankName = "BOŚ"
    case "1580":bankName = "Mercedes-Benz Bank Polska"
    case "1610":bankName = "SGB - Bank"
    case "1670":bankName = "RBS Bank (Polska)"
    case "1680":bankName = "Plus Bank"
    case "1750":bankName = "Raiffeisen Bank"
    case "1840":bankName = "Societe Generale"
    case "1870":bankName = "Nest Bank"
    case "1910":bankName = "Deutsche Bank Polska"
    case "1930":bankName = "Bank Polskiej Spółdzielczości"
    case "1940":bankName = "Credit Agricole Bank Polska"
    case "1950":bankName = "Idea Bank"
    case "2030":bankName = "BGŻ BNP Paribas"
    case "2070":bankName = "FCE Bank Polska"
    case "2120":bankName = "Santander Consumer Bank"
    case "2130":bankName = "Volkswagen Bank"
    case "2140":bankName = "Fiat Bank Polska"
    case "2160":bankName = "Toyota Bank"
    case "2190":bankName = "DnB Nord"
    case "2480":bankName = "Getin Noble Bank"
    case "2490":bankName = "Alior Bank, T-Mobile Usługi Bankowe"
    default:
        print("Bank ID not found in data base.")
        return nil
    }
    return Bank_Account(accNumber: accountNumberTemp, setBankID: bankID, setBankName: bankName)
}

print("Insert bank account number: ")
if let number:String = readLine() {
    let newBankAccount = getAccountNumber(accountNumber:number)
} else {
    print("Error")
}
