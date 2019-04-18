//
//  HomeViewController.swift
//  Tracknote
//
//  Created by Nan Min on 1/21/19.
//  Copyright © 2019 Bill Min. All rights reserved.
//

import UIKit

class HomeCollectionViewController: UICollectionViewController {
  
  let items = ["1", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2"];
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "123"
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count;
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TestCollectionViewCell
    
    cell.myTestLabel.text = items[indexPath.item]
    
    return cell
    
  }
  
  override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
    print(indexPath.item)
  }
  
}
