//
//  PreviewPage.swift
//  ArtCover2.0
//
//  Created by Ruslan on 8/13/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreviewPage: UICollectionViewController {
    
    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                       "Dave Wincent - Red Eye (Original Mix)",
                       "E-Spectro - End Station (Original Mix)",
                       "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                       "Ilija Djokovic - Delusion (Original Mix)",
                       "John Baptiste - Mycelium (Original Mix)",
                       "Lane 8 - Fingerprint (Original Mix)",
                       "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                       "Metodi Hristov, Gallya - Badmash (Original Mix)",
                       "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
        
        return cell
    }

}
