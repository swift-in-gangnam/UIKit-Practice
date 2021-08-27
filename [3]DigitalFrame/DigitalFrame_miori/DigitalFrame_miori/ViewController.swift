//
//  ViewController.swift
//  DigitalFrame_miori
//
//  Created by miori Lee on 2021/08/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let myImgArr = [UIImage(named:"beer")!,UIImage(named:"mt")!,UIImage(named:"cs")!]
        
        let imageNames = ["beer.jpeg","mt.jpeg","cs.jpeg"]

        var myImgArr = [UIImage]()

        for i in 0..<imageNames.count {
            myImgArr.append(UIImage(named: imageNames[i])!)
        }
        
        imgView.animationImages = myImgArr
        imgView.animationDuration = 15
        speedLabel.text = String(format: "%.2f", mySlider.value)
    }

    //MARK: 수정 : 그냥 .normal 도 가능
    @IBAction func didTapBtn(_ sender: Any) {
        if imgView.isAnimating{
            imgView.stopAnimating()
            myBtn.setTitle("Start", for: .normal)
        }else{
            imgView.animationDuration = Double(mySlider.value)
            imgView.startAnimating()
            myBtn.setTitle("Stop", for: .normal)
        }
    }
    
    @IBAction func didChangeValue(_ sender: Any) {
        imgView.animationDuration = Double(mySlider.value)
        imgView.startAnimating()
        myBtn.setTitle("Stop", for: .normal)
        speedLabel.text = String(format: "%.2f", mySlider.value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

