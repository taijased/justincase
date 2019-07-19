

import UIKit
import paper_onboarding


protocol WalkthroughViewControllerDelegate: class {
    func finishWalkthrough()
}


class WalkthroughViewController: UIViewController, StoryboardInitializable {
    
    
    static let titleFont = UIFont(name: "TTNorms-Bold", size: 36.0) ?? UIFont.boldSystemFont(ofSize: 36.0)
    static let descriptionFont = UIFont(name: "TTNorms-Bold", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    
    let slide = [
        OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "ereader"),
                           title: "Write",
                           description: "Every day we get a lot of information and do not remember everything. So use our app to record and not forget",
                           pageIcon: #imageLiteral(resourceName: "icon_menu"),
                           color: UIColor(hexValue: "#D1E7F8", alpha: 1)!,
                           titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont),
        OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "violin"),
                           title: "Free time",
                           description: "Every day we do a lot of things. Sometimes we forget to rest. Sign your free time",
                           pageIcon: #imageLiteral(resourceName: "icon_menu"),
                           color: UIColor(hexValue: "#00DDC2", alpha: 1)!,
                           titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont),
        OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "graduate"),
                           title: "Education",
                           description: "When you receive new information you need to write it down!",
                           pageIcon: #imageLiteral(resourceName: "icon_menu"),
                           color: UIColor(hexValue: "#FBB03B", alpha: 1)!,
                           titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont)
    ]
    
    
    
    @IBOutlet var skipButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skipButton.isHidden = true
        setupPaperOnboardingView()
        view.bringSubviewToFront(skipButton)
    }
    
    
    
    private func setupPaperOnboardingView() {
        let onboarding = PaperOnboarding()
        onboarding.delegate = self
        onboarding.dataSource = self
        onboarding.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(onboarding)
        
        
        
        // Add constraints
        for attribute: NSLayoutConstraint.Attribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onboarding,
                                                attribute: attribute,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: attribute,
                                                multiplier: 1,
                                                constant: 0)
            view.addConstraint(constraint)
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


// MARK: PaperOnboardingDelegate

extension WalkthroughViewController: PaperOnboardingDelegate {
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        skipButton.isHidden = index == 2 ? false : true
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
        // configure item
        
        //item.titleLabel?.backgroundColor = .redColor()
        //item.descriptionLabel?.backgroundColor = .redColor()
        //item.imageView = ...
    }
}

// MARK: PaperOnboardingDataSource

extension WalkthroughViewController: PaperOnboardingDataSource {
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return slide[index]
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    //        func onboardinPageItemRadius() -> CGFloat {
    //            return 2
    //        }
    
    func onboardingPageItemSelectedRadius() -> CGFloat {
        return 10
    }
    func onboardingPageItemColor(at index: Int) -> UIColor {
        return [UIColor(hexValue: "#FF5B61", alpha: 1)!, UIColor(hexValue: "#20D0C2", alpha: 1)!, UIColor(hexValue: "#FFCA4F", alpha: 1)!][index]
    }
}

