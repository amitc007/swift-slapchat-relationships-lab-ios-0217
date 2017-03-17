//
//  SearchViewController.swift
//  SlapChat
//
//  Created by ac on 3/17/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchRecipient: UITextField!
    @IBOutlet weak var searchMessages: UITextField!
    @IBOutlet weak var searchResult: UILabel!
    
    
    
    @IBAction func submitAction(_ sender: Any) {
        //let context =
        if let receipientName = searchRecipient.text {
            
            let receipients =  DataStore.sharedInstance.searchRecipient(name: receipientName)
            
            for receipient in receipients {
                searchResult.text = receipient.name
            }
            
        } else
            if let searchString = searchMessages.text {
                let messages =  DataStore.sharedInstance.searchMessage(str: searchString)
                
                for msg in messages {
                    searchResult.text = msg.content
                }
                
                
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
