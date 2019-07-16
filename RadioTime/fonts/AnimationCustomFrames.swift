
import UIKit

class AnimationCustomFrames {
    
    class func createFrames() -> [UIImage] {
    
        var animationFrames = [UIImage]()
        for i in 0...3 {
            if let image = UIImage(named: "equalizer-\(i)") {
                animationFrames.append(image)
            }
        }
        
        for i in stride(from: 2, to: 0, by: -1) {
            if let image = UIImage(named: "equalizer-\(i)") {
                animationFrames.append(image)
            }
        }
        return animationFrames
    }

}
