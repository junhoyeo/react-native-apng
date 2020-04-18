import UIKit
// This bridges Swift to Objectiver C. See SpriteBridge.m

@objc(ApngPlayerManager)
class ApngPlayerManager : RCTViewManager {
  
  override func view() -> UIView! {
    return ApngPlayer();
  }
  
}
