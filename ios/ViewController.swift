import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = WKWebView(frame: view.frame)
        let url = URL(string: "https://example.com")!
        webView.load(URLRequest(url: url))

        view.addSubview(webView)
    }
}
