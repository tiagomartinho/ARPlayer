import UIKit

class AssetsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AssetsViewController viewDidLoad")
        let fileManager = FileManager.default
        guard let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fileURLs = try? fileManager.contentsOfDirectory(at: documentsURL, includingPropertiesForKeys: nil)
        fileURLs.map({print($0)})
    }
}
