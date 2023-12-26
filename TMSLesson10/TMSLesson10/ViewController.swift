//
//  ViewController.swift
//  TMSLesson10
//
//  Created by Mac on 20.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var dataToSend = "Recieve data from ViewController"
    
    
    var student = Student(name: "Darya", lastName: "Burmako", grade: "A")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextViewButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        if let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            secondViewController.data = dataToSend
            secondViewController.student = student
            
            self.present(secondViewController, animated: true, completion: nil)
        }
        
        
    }
}


    //
//ДЗ:
//• передать строку через 5 контроллеров, отобразить в label в пятом

//• передать объект кастомного класса (минимум три свойства) в другой
//контроллер, там отобразить в labels все свойства


//MARK: - Делать в новом проекте чистом

//• стартовые экраны для игрушки для котят, для приложения с
//заполнением экрана квадратами и
//для гонок (классическая 2D
//игрушка, по центру дорога с движущейся разметкой,
//по бокам обочины с кустами.
//Выезд на обочину разбивает машину. Сверху появляются
//препятствия на дороге - столкновение разбивает машину).


//Пока ТОЛЬКО
//стартовый экран и три заготовки-контроллера - для игры,
