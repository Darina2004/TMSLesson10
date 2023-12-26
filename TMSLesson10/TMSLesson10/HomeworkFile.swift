//
//  HomeworkFile.swift
//  BaseNavigation
//
//  Created by berdy on 19.12.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var student: Student?
    var data: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receivedData = data {
            print(receivedData)
        }
        
        if let receivedStudent = student {
            let studentInfo = "\(receivedStudent.name) \(receivedStudent.lastName) - \(receivedStudent.grade)"
            print(studentInfo)
        }
    }
    
    
    @IBAction func nextbutton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Third", bundle: nil)
        if let thirdViewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController {
            
            thirdViewController.data = data
            thirdViewController.student = student
            
            self.present(thirdViewController, animated: true)
        }
    }
}

class ThirdViewController: UIViewController {
    
    var data: String?
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receivedData = data {
            print(receivedData)
        }
        
        if let receivedStudent = student {
            let studentInfo = "\(receivedStudent.name) \(receivedStudent.lastName) - \(receivedStudent.grade)"
            print(studentInfo)
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Fourth", bundle: nil)
        if let fourthViewController = storyboard.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController {
            
            fourthViewController.data = data
            fourthViewController.student = student
            
            self.present(fourthViewController, animated: true)
            
        }
    }
}

class FourthViewController: UIViewController {
    
    var data: String?
    var intData: Int?
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receivedData = data {
            print(receivedData)
        }
        
        if let receivedStudent = student {
            let studentInfo = "\(receivedStudent.name) \(receivedStudent.lastName) - \(receivedStudent.grade)"
            print(studentInfo)
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Fifth", bundle: nil)
        if let fifthViewController = storyboard.instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController {
            
            fifthViewController.data = data
            fifthViewController.student = student
            
            self.present(fifthViewController, animated: true)
            
        }
        
    }
}

class FifthViewController: UIViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var studentLabel: UILabel!
    
    var data: String?
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let receivedData = data {
            dataLabel.text = receivedData
        }
        
        if let receivedStudent = student {
            let studentInfo = "\(receivedStudent.name) \(receivedStudent.lastName) - Grade: \(receivedStudent.grade)"
            studentLabel.text = studentInfo
        }
    }
    
}
