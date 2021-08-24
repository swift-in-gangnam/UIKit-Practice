//
//  ViewController.swift
//  XML_parser_miori
//
//  Created by miori Lee on 2021/08/24.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate {
    var datalist = [[String:String]]()
    var detaildata = [String:String]()
    var elementTemp:String = ""
    var blank:Bool = false
    
    @IBOutlet weak var myTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTV.dataSource = self
        myTV.register(UINib(nibName: "MyTableViewCell", bundle: .main), forCellReuseIdentifier: "MyTableViewCell")
        
        let urlString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"
        guard let baseURL = URL(string: urlString) else {
            print("URL error")
            return
        }
        guard let parser = XMLParser(contentsOf: baseURL) else{
            print("Can't read data")
            return
        }
        parser.delegate = self
        if !parser.parse(){
            print("Parse failure")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        elementTemp = elementName
        blank = true
        print("start :\(elementName)")
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "local" && elementTemp != "weatherinfo"{
            detaildata[elementTemp] = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        print("string : \(string)")
        print("detaildata : \(detaildata)")
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "local" {
            datalist += [detaildata]
        }
        blank = false
        print("end :\(elementName)")

    }



}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        var dicTemp = datalist[indexPath.row]
        
        cell.countryLabel.text = dicTemp["country"]
        let weatherStr = dicTemp["weather"]
        
        cell.weatherLabel.text = weatherStr
        cell.tempLabel.text = dicTemp["temperature"]
        if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named:"sunny.png")
        }else if weatherStr == "비" {
            cell.imgView.image = UIImage(named:"rainy.png")
        }else if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named:"cloudy.png")
        }else if weatherStr == "눈" {
            cell.imgView.image = UIImage(named:"snow.png")
        }else {
            cell.imgView.image = UIImage(named:"blizzard.png")
        }
        return cell
    }
}

