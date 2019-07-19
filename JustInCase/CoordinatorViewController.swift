
import UIKit
import CircleMenu


class CoordinatorViewController: UIViewController, CircleMenuDelegate, StoryboardInitializable {
    
    
    
    
    let items: [(icon: String, color: UIColor)] = [
        ("applelist1", UIColor(hexValue: "#20D0C2", alpha: 1)!),
        ("applelist2",  UIColor(hexValue: "#FBB429", alpha: 1)!),
        ("applelist3",  UIColor(hexValue: "#FF5B61", alpha: 1)!),
        ("applelist4",  UIColor(hexValue: "#D1E7F8", alpha: 1)!),
        ("applelist5",  UIColor(hexValue: "#24AE5F", alpha: 1)!)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: <CircleMenuDelegate>
    
    func circleMenu(_: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        button.backgroundColor = items[atIndex].color
        
        button.setImage(UIImage(named: items[atIndex].icon), for: .normal)
        
        // set highlited image
        let highlightedImage = UIImage(named: items[atIndex].icon)?.withRenderingMode(.alwaysTemplate)
        button.setImage(highlightedImage, for: .highlighted)
        button.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
    }
    
    func circleMenu(_: CircleMenu, buttonWillSelected _: UIButton, atIndex: Int) {
        print("button will selected: \(atIndex)")
        
    }
    
    func circleMenu(_: CircleMenu, buttonDidSelected _: UIButton, atIndex: Int) {
        print("button did selected: \(atIndex)")
    
        switch atIndex {
        case 0:
            let viewController = FirstTableViewController.initFromStoryboard(name: "Main")
            self.navigationController?.pushViewController(viewController, animated: true)
            break
        case 1:
            let viewController = SecondTableViewController.initFromStoryboard(name: "Main")
            self.navigationController?.pushViewController(viewController, animated: true)
            break
        case 2:
            let viewController = ThirdTableViewController.initFromStoryboard(name: "Main")
            self.navigationController?.pushViewController(viewController, animated: true)
            break
        case 3:
            let viewController = FourthTableViewController.initFromStoryboard(name: "Main")
            self.navigationController?.pushViewController(viewController, animated: true)
            break
        case 4:
            let viewController = FifthTableViewController.initFromStoryboard(name: "Main")
            self.navigationController?.pushViewController(viewController, animated: true)
            break
        default:
            break
        }
        
        
    }
    
    // MARK: settings Navigation bar
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
