//
//  TestViewController.swift
//  Tracknote
//
//  Created by Nan Min on 1/27/19.
//  Copyright © 2019 Bill Min. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

  @IBOutlet weak var testCollectionView: UICollectionView!
  let items = ["1", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2", "2"];
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(123)
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func animateViewAppear() {
    loadView()
    testCollectionView.alpha = 0
    UIView.animate(withDuration: 2, animations: {
      self.testCollectionView.alpha = 1
    })
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count;
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TestCollectionViewCell
    
    cell.myTestLabel.text = items[indexPath.item]
    
    return cell
    
  }
  
  func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
    print(indexPath.item)
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
