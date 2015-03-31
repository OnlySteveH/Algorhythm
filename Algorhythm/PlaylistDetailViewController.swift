//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Steve Hunter on 21/01/2015.
//  Copyright (c) 2015 Steve Hunter. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var playlistDesciption: UILabel!
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        println("playlist \(playlist?.description)")
        if playlist != nil {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDesciption.text = playlist!.description
            playlistArtist0.text = playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
