
import UIKit

//*****************************************************************
// Pecnya struct
//*****************************************************************

struct Pecnya {
	var title: String
	var artist: String
    var artworkImage: UIImage?
    var artworkLoaded = false
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
}
