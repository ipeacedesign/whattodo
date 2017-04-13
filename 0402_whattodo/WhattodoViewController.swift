//
//  WhattodoViewController.swift
//  0402_whattodo
//
//  Created by Kelly Wang on 2017/4/2.
//  Copyright © 2017年 Kelly Wang. All rights reserved.
//

import UIKit

class WhattodoViewController: UIViewController {

    @IBOutlet weak var howtiredbar: UISlider!
    @IBOutlet weak var wheretodo: UISegmentedControl!
    @IBOutlet weak var usehead: UISwitch!
    @IBOutlet weak var howmanylabel: UILabel!
    @IBOutlet weak var howmanyStepper: UIStepper!
    @IBAction func howmanypeople(_ sender: UIStepper) {
        howmanylabel.text = Int(sender.value).description
    }
    @IBOutlet weak var recommand: UILabel!
    @IBOutlet weak var xcode: UIImageView!
    @IBOutlet weak var WatchTV: UIImageView!
    @IBOutlet weak var Sleep: UIImageView!
    @IBOutlet weak var Sing: UIImageView!
    @IBOutlet weak var Meal: UIImageView!
    @IBOutlet weak var HouseWork: UIImageView!
    @IBOutlet weak var Coffee: UIImageView!
    @IBOutlet weak var Clim: UIImageView!
    @IBOutlet weak var Book: UIImageView!

    /* @IBAction func PeopleNumberStepper(_ sender: UIStepper) {
    PeopleNumberLabel.text = Int(sender.value).description//將+/-的數值呈現在前方
}*/
    @IBAction func findoutBtn(_ sender: Any) {
         recommand.isHidden = true
         xcode.isHidden = true
         WatchTV.isHidden = true
         Sleep.isHidden = true
         Sing.isHidden = true
         Meal.isHidden = true
         HouseWork.isHidden = true
         Coffee.isHidden = true
         Clim.isHidden = true
         Book.isHidden = true
 
        if wheretodo.selectedSegmentIndex == 0 && usehead.isOn == true &&
            howtiredbar.value <= 2 {
            recommand.text = "來練習Xcode吧"
            recommand.isHidden = false
            xcode.isHidden = false
        }
        else if wheretodo.selectedSegmentIndex == 0 &&
            usehead.isOn == true &&
            howtiredbar.value > 2 {
            recommand.text = "當一下文青"
            recommand.isHidden = false
            Book.isHidden = false
        }
        if wheretodo.selectedSegmentIndex == 0 && usehead.isOn == false &&
            howtiredbar.value <= 2 {
            recommand.text = "看電視看電視"
            recommand.isHidden = false
            WatchTV.isHidden = false
        }
        else if wheretodo.selectedSegmentIndex == 0 &&
            usehead.isOn == false &&
            howtiredbar.value > 2 {
            recommand.text = "睡覺補充體力"
            recommand.isHidden = false
            Sleep.isHidden = false
        }
        if wheretodo.selectedSegmentIndex == 1 &&
            howtiredbar.value <= 2 {
            recommand.text = "運動讚啦"
            recommand.isHidden = false
            Sing.isHidden = false
        }
        else if wheretodo.selectedSegmentIndex == 1 &&
            
            howtiredbar.value > 2 {
            recommand.text = "唱歌囉～～"
            recommand.isHidden = false
            Clim.isHidden = false
        }

        
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
