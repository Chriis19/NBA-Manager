import UIKit
import WebKit

class twokNewsViewController: UIViewController {

    
    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://twitter.com/NBA2K") else {
            return
        }
        webView.load(URLRequest(url : url))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }


}
