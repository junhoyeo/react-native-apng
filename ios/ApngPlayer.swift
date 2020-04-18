//
//  APNGPlayer.swift
//  TroisiemePagePrototype1
//
//  Created by Rémi Caillot on 09/05/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//
import Foundation
import UIKit
import APNGKit

public class ApngPlayer: UIView {
  
  private var animationView: APNGImageView
  private var _source: String?
  
  override public init(frame: CGRect) {
    animationView = APNGImageView(frame: frame)
    animationView.autoresizesSubviews = true
    animationView.clipsToBounds = true
    super.init(frame: frame)
    self.frame = frame
    self.addSubview(animationView)
    print("player created")
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError( "init(coder:) has not been implemented" )
  }
  
  override public func layoutSubviews() {
    animationView.frame = bounds
    animationView.bounds = bounds
  }
  
  public func setSource(_ source: String) {
    _source = source
    start()
  }
  
  private func start() {
    if let url = URL(string: _source!) {
      do {
        let data = try Data(contentsOf: url)
        let animation = APNGImage(data: data, progressive: false)
        animation?.repeatCount = RepeatForever
        animationView.image = animation
        animationView.startAnimating()
      } catch {
        
      }
    }
    
  }
  
}
