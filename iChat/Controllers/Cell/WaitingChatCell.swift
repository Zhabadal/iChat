//
//  WaitingChatCell.swift
//  iChat
//
//  Created by Alexandr Badmaev on 28.10.2020.
//

import UIKit

class WaitingChatCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "WaitingChatCell"
    
    let friendImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 4
        clipsToBounds = true
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func configure<U>(with value: U) where U : Hashable {
        guard let chat = value as? MChat else { return }
        friendImageView.image = UIImage(named: chat.userImageString)
    }
    
    private func setupConstraints() {
        addSubview(friendImageView)
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            friendImageView.topAnchor.constraint(equalTo: topAnchor),
            friendImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            friendImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}

// MARK: - SwiftUI

import SwiftUI

struct WaitingChatCellProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let mainViewController = MainTabBarController()
        func makeUIViewController(context: Context) -> some UIViewController {
            return mainViewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    }
}
