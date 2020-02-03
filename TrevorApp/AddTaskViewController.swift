//
//  AddTaskViewController.swift
//  TrevorApp
//
//  Created by airMac on 2019-07-26.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskNameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        
        let coreDataContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
                let newTask = TrevorTask(context: coreDataContext)
                newTask.taskName = taskNameText.text!
        
                (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
                let _ = navigationController?.popViewController(animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
