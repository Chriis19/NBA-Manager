import UIKit
import WebKit

class NewsViewController: UIViewController {

    
    @IBOutlet weak var webViewSF: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webViewSF)
        
        guard let url = URL(string: "https://twitter.com/NBA") else {
            return
        }
        webViewSF.load(URLRequest(url : url))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }


}

