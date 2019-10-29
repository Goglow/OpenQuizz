
import UIKit

class QuestionView: UIView {
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
            case .correct:
                backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
                icon.image = UIImage(named: "Icon Correct")
                icon.isHidden = false
            case .incorrect:
                backgroundColor = #colorLiteral(red: 0.9531875253, green: 0.530855, blue: 0.5816642642, alpha: 1)
                icon.image = #imageLiteral(resourceName: "Icon Error")
                icon.isHidden = false
            case .standard:
                backgroundColor = #colorLiteral(red: 0.7475737929, green: 0.7684061527, blue: 0.789560616, alpha: 1)
                icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
}
