//
//  SplashViewController.swift
//  Splash
//
//  Created by JWLK on 2022/05/23.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var imageAppIcon: UIImageView!
    @IBOutlet weak var labelAppLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageAppIcon.alpha = 0
        self.labelAppLabel.alpha = 0
        
        UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseInOut, animations: {
            // Running Animation Code
            print("Splash")
            self.imageAppIcon.alpha = 1
            self.labelAppLabel.alpha = 1
            
        }, completion: { finished in
            sleep(2)
            let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
            guard let VC = mainStoryboard.instantiateViewController(withIdentifier: "Main") as? ViewController else { return }
            VC.modalPresentationStyle = .fullScreen // Set Fullscreen Mode
            self.present(VC, animated: false, completion: nil)
            
        })
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
