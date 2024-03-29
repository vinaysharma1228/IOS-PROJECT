import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up the gradient layer for the current view controller's view
        setupGradientLayer()
    }

    @IBAction func printTable(_ sender: Any) {
        performSegue(withIdentifier: "ShowPrintViewController", sender: self)
    }

    private func setupGradientLayer() {
        let gradientLayer = CAGradientLayer()

        // Set the colors for the gradient
        gradientLayer.colors = [
            UIColor(red: 255.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0).cgColor,
            UIColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor
        ]

        // Set the locations for the colors (optional)
        gradientLayer.locations = [0.0, 1.0]

        // Set the start and end points for the gradient
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)

        // Set the frame of the gradient layer to match the view's bounds
        gradientLayer.frame = view.bounds

        // Add the gradient layer to the view's layer
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

class PrintViewController: UIViewController {

     
    @IBOutlet weak var number: UITextField!

        override func viewDidLoad() {
            super.viewDidLoad()

            
        }
            
    @IBAction func printTableButton(_ sender: Any) {
        number.text="Royal"
    }
    @IBAction func printClicked(_ sender: Any) {
        number.text="vinay..."
    }
}

        

