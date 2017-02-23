//
//  PreferencesAccounts.swift
//  Balance
//
//  Created by Christian Baroni on 2/14/17.
//  Copyright © 2017 Balance. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import Cocoa

public struct PreferencesAccounts {

    //// Drawing Methods

    public static func drawAccountPreferencesBackground(frame: NSRect = NSRect(x: 0, y: 0, width: 193, height: 252)) {
        //// Color Declarations
        let shadowBaseColor = NSColor(deviceRed: 0.761, green: 0.761, blue: 0.761, alpha: 1)

        //// Shadow Declarations
        let whiteShadow = NSShadow()
        whiteShadow.shadowColor = NSColor.white.withAlphaComponent(0.36)
        whiteShadow.shadowOffset = NSSize(width: 0, height: -0.5)
        whiteShadow.shadowBlurRadius = 0

        //// shadowBase Drawing
        let shadowBasePath = NSBezierPath(roundedRect: NSRect(x: frame.minX + 0.5, y: frame.minY + 0.5, width: frame.width - 1, height: frame.height - 1), xRadius: 5.5, yRadius: 5.5)
        NSGraphicsContext.saveGraphicsState()
        whiteShadow.set()
        shadowBaseColor.setFill()
        shadowBasePath.fill()
        NSGraphicsContext.restoreGraphicsState()



        //// innerBase Drawing
        let innerBasePath = NSBezierPath(roundedRect: NSRect(x: frame.minX + 1, y: frame.minY + 1, width: frame.width - 2, height: frame.height - 2), xRadius: 5, yRadius: 5)
        NSColor.white.setFill()
        innerBasePath.fill()
    }

    public static func drawSelectedAccount(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 185, height: 31), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 185, height: 31), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 185, y: resizedFrame.height / 31)


        //// Color Declarations
        let selectedColor = NSColor(deviceRed: 0, green: 0.443, blue: 0.922, alpha: 1)

        //// selectedBackground Drawing
        let selectedBackgroundPath = NSBezierPath(roundedRect: NSRect(x: 0, y: 0, width: 185, height: 31), xRadius: 4, yRadius: 4)
        selectedColor.setFill()
        selectedBackgroundPath.fill()
        
        NSGraphicsContext.restoreGraphicsState()

    }

    public static func drawAccountColorCircle(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 9, height: 9), color: NSColor) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        let resizing = ResizingBehavior.aspectFit
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 9, height: 9), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 9, y: resizedFrame.height / 9)


        //// circle Drawing
        let circlePath = NSBezierPath(ovalIn: NSRect(x: 0, y: 0, width: 9, height: 9))
        color.setFill()
        circlePath.fill()
        
        NSGraphicsContext.restoreGraphicsState()

    }

    @objc public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: NSRect, target: NSRect) -> NSRect {
            if rect == target || target == NSRect.zero {
                return rect
            }

            var scales = NSSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
