//
//  AboutViewController.swift
//  BulllsEye
//
//  Created by Rick Wolter on 8/18/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import UIKit




class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//
//        let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html")
//        let htmlData = try? Data(contentsOf: url!)
//        let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//        webView.load(htmlData!, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
//
//        }

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
