//
//  SuccessOverlayView.swift
//  LuxeCart
//
//  Created by Janvi Arora on 31/05/24.
//

import UIKit

class SuccessOverlayView: UIViewController {

    @IBOutlet weak var checkOutButton: UIButton!
    @IBOutlet weak var descLabel: UILabel!

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var contentView: UIView!

    init() {
        super.init(nibName: "SuccessOverlayView", bundle: nil)
        self.modalPresentationStyle = .overFullScreen
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    private func configureView() {
        self.view.backgroundColor = .clear
        self.backView.backgroundColor = .black.withAlphaComponent(0.6)
        self.backView.alpha = 0
        self.contentView.alpha = 0
        self.contentView.layer.cornerRadius = 10
        self.checkOutButton.addTarget(self, action: #selector(checkOutButtonTap), for: .touchUpInside)
    }

    func appear(sender: UIViewController) {
        sender.present(self, animated: false) {
            self.show()
        }
    }

    private func show() {
        UIView.animate(withDuration: 1, delay: 0.2) {
            self.backView.alpha = 1
            self.contentView.alpha = 1
        }
    }

    private func hide() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut) {
            self.backView.alpha = 0
            self.contentView.alpha = 0
        } completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        }
    }

    @objc
    private func checkOutButtonTap() {
        hide()
    }
}
