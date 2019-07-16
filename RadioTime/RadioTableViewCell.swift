
import UIKit

class RadioTableViewCell: UITableViewCell {

    @IBOutlet weak var stanciyaNameLabel: UILabel!
    @IBOutlet weak var stanciyaDescLabel: UILabel!
    @IBOutlet weak var stanciyaImageView: WebImageView!
    var downloadTask: URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // set table selection color
        let selectedView = UIView(frame: CGRect.zero)
        selectedView.backgroundColor =  UIColor(hexValue: "#3D3BEE", alpha: 0.6)
        selectedBackgroundView  = selectedView
        
    }

    func setSettingsCell(station: RadioStanciya) {
        
        // Configure the cell...
        stanciyaNameLabel.text = station.name
        stanciyaDescLabel.text = station.desc
       
        
        let imageURL = station.imageURL as NSString
        if imageURL.contains("http") {
        
        if let url = URL(string: station.imageURL) {
            stanciyaImageView.loadImageWithURL(url: url) { (image) in
                // station image loaded
            }
        }
            
        } else if imageURL != "" {
            stanciyaImageView.image = UIImage(named: imageURL as String)
            
        } else {
            stanciyaImageView.image = UIImage(named: "stationImage")
        }
        
        stanciyaImageView.applyShadow()
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        downloadTask?.cancel()
        downloadTask = nil
        stanciyaNameLabel.text  = nil
        stanciyaDescLabel.text  = nil
        stanciyaImageView.image = nil
    }
}
