ExternStoryboard
================

ExternStoryboard is a clean way to link view controllers with segues between multiple storyboards.

Split your View Controller logic into multiple reusable Storyboards, seguing between them effortlessly with no additional code and no subclassing!

This page includes the Library files necessary for integration in your app, and a demo app that demonstrates how to link view controllers with segues between multiple storyboards.

Inspired by [RBStoryboardLink][1].

[1]:https://github.com/rob-brown/RBStoryboardLink

Installation
================

Preferred install method via CocoaPods
[code]
pod 'ExternStoryboard'
[/code]

[Learn more](http://cocoapods.org/) - its easy!

Otherwise you can clone the repository and manually copy the dependencies:
- Sample/Pods/ExternStoryboard (this)
- Sample/Pods/JRSwizzle (https://github.com/rentzsch/jrswizzle)
- Sample/Pods/ObjcAssociatedObjectHelpers (https://github.com/itsthejb/ObjcAssociatedObjectHelpers)

Usage
==============

After you [break your storyboards into modules](http://robsprogramknowledge.blogspot.com.br/2012/01/uistoryboard-best-practices.html), link between them by either:
- Creating a UINavigationController in the source storyboard and setting the User defined runtime attributes "storyboardName":"YourStoryboardName" and optionally a "sceneIdentifier":"YourSpecificVCIdentifier"
- Using a extern push or extern modal segue to a blank view controller which declares the above runtime attributes


