/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let user = PFObject(className: "Users")
        
        user["name"] = "Joe"
        user.saveInBackground { (success, error) -> Void in
            if success {
                print("Object has been saved.")
            } else {
                if error != nil {
                    print(error)
                } else {
                    print ("Error")
                }
                
            }
            
        }
        */
        
        let query = PFQuery(className: "Users")
        
        query.getObjectInBackground(withId: "rFajeCRf01") { (object, error) in
            
            if error != nil {
                print (error)
            } else {
                if let user = object {
                    user["name"] = "Joe Joe"
                    
                    user.saveInBackground(block: { (success, error) in
                        if success {
                            
                            print("Saved")
                        } else {
                            print("Error")
                        }
                    })
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
