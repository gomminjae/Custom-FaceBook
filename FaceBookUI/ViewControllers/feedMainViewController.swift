//
//  feedMainViewController.swift
//  FaceBookUI
//
//  Created by Apple on 2020/02/10.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SnapKit

let cellId = "cell"
class feedMainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private var posts = [Post]()
    
    
//    var layout: UICollectionViewFlowLayout = {
//        let layout = UICollectionViewFlowLayout()
//        let width = UIScreen.main.bounds.size.width
//        layout.estimatedItemSize = CGSize(width: width, height: 10)
//
//        return layout
//    }()
//
//    lazy var width: NSLayoutConstraint = {
//        let width =
//    }()
//
//
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        collectionViewSetup()
        
        let postMark = Post()
        postMark.name = "Mark"
        postMark.statusText = "With SnapKit it’s extremely easy to create and setup constraints, as the technique that it offers to do that is quite simple, and on top of that the amount of code required is way less compared to the traditional way. This inevitably leads to a great advantage; we have a cleaner, easier to review code, which is better m."
        postMark.profileImage = "mark"
        postMark.statusImage = "ocean"
        
        let postJob = Post()
        postJob.name = "Steve Jobs"
        postJob.statusText = "So, talking about creating constraints programmatically, it’s not that difficult to specify them as far as you know the kind of constraints you need and how they should be combined. But this is often proved to be a cumbersome work because a lot of stuff is needed to be written in order to set all constraints up properly. At the end, it’s easy to end up with big fragments of code that configure constraints which describe the relationship between views, offsets, constants, and so on, but it’s hard to read and modify them. And here’s where SnapKit gets into play."
        postJob.profileImage = "steve"
        postJob.statusImage = "iphone"
        
        posts.append(postMark)
        posts.append(postJob)

    }
    //MARK:collectionView Setup
    func collectionViewSetup() {
        collectionView.backgroundColor = .white
        collectionView.register(feedCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.backgroundColor = UIColor(white: 0.9, alpha: 1)
        collectionView.alwaysBounceVertical = true
        //collectionView.collectionViewLayout = layout
    }
    
    //MARK: Navigation
    func navigationSetup() {
        navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
        navigationController?.navigationBar.topItem?.title = "MinjaeBook"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        //navigationController?.navigationItem.rightBarButtonItem?.title = "More"
    }
    
    
    
    //MARK: collectionView DataSource / Delegate
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? feedCell else { return UICollectionViewCell() }
        cell.post = posts[indexPath.item]
        cell.statusTextView.delegate = self
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let statusText = posts[indexPath.item].statusText {
            let rect = NSString(string: statusText).boundingRect(with: CGSize(width: view.frame.width, height: 1000), options: NSStringDrawingOptions.usesFontLeading.union(NSStringDrawingOptions.usesLineFragmentOrigin), attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14)], context: nil)
            let knownHeight: CGFloat = 65 + 240 + 3 + 10 + 10 + 20 + 10 + 50
            
            return CGSize(width: view.frame.width, height: rect.height + knownHeight)
        }
        
        return CGSize(width: view.frame.width, height: 500)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
}

extension feedMainViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        let size = CGSize(width: view.frame.width, height: .infinity)
        let estimatedSize = textView.sizeThatFits(size)
        textView.constraints.forEach { (constraint) in
          if constraint.firstAttribute == .height {
            constraint.constant = estimatedSize.height
            }
        }
    }
}

