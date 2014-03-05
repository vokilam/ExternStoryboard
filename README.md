ExternStoryboard
================

ExternStoryboard is a clean way to link view controllers with segues between multiple storyboards.

Split your View Controller logic into multiple reusable Storyboards, seguing between them effortlessly with no additional code and no subclassing!

This page includes the Library files necessary for integration in your app, and a demo app that demonstrates how to link view controllers with segues between multiple storyboards.

Inspired by [RBStoryboardLink][1].

[1]:https://github.com/rob-brown/RBStoryboardLink

Installation
================

Preferred install method via [CocoaPods](http://cocoapods.org/) - its easy!

`pod 'ExternStoryboard'`



Otherwise you can clone the repository and manually copy the dependencies:
- Sample/Pods/ExternStoryboard ([this](https://github.com/nobre84/ExternStoryboard))
- Sample/Pods/JRSwizzle ([learn more](https://github.com/rentzsch/jrswizzle))
- Sample/Pods/ObjcAssociatedObjectHelpers ([learn more](https://github.com/itsthejb/ObjcAssociatedObjectHelpers))

Usage
==============

After you [break your storyboards into modules](http://robsprogramknowledge.blogspot.com.br/2012/01/uistoryboard-best-practices.html), link between them by either:
- Creating a UINavigationController in the source storyboard and setting the User defined runtime attributes "storyboardName":"YourStoryboardName" and optionally a "sceneIdentifier":"YourSpecificVCIdentifier" to automatically load its Root View Controller from another Storyboard.
- Using a extern push or extern modal segue to a blank view controller which declares the above runtime attributes, to transition to a View Controller in another Storyboard.

See the demo app for more information, its seamless, a no-drawbacks solution that makes your work lighter, more reusable and team-friendly (avoid merge conflicts with modular storyboards that can be owned/maintained by single/few developers)


