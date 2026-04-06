import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: "https://example.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
