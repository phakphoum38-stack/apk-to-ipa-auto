#!/bin/bash
set -e

mkdir -p ios/App

cat <<EOF > ios/App/ViewController.swift
import UIKit
import WebKit

class ViewController: UIViewController {

 override func viewDidLoad() {
  super.viewDidLoad()

  let webView = WKWebView(frame: view.bounds)

  let url = URL(string: "https://example.com")!
  webView.load(URLRequest(url: url))

  view.addSubview(webView)
 }

}
EOF
