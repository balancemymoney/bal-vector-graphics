//
//  AccountConnectionErrors.swift
//  Balance
//
//  Created by Team Balance on 11/16/16.
//  Copyright © 2016 Balance. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import Cocoa

public struct AccountConnectionErrors {
    
    //// Drawing Methods
    
    public static func drawConnectionErrorsLight(frame: NSRect = NSRect(x: 0, y: 0, width: 400, height: 122)) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let lightThemeBackground = NSColor(deviceRed: 0.404, green: 0.427, blue: 0.459, alpha: 1.0)
        let baseInnerShadow = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.14)
        let lightThemeSmallShadowColor = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.12)
        let lightThemeHeaderFill = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.14)
        
        //// Shadow Declarations
        let boxLargeShadow = NSShadow()
        boxLargeShadow.shadowColor = NSColor.black.withAlphaComponent(0.16)
        boxLargeShadow.shadowOffset = NSSize(width: 0, height: -6)
        boxLargeShadow.shadowBlurRadius = 12
        let lightThemeSmallShadow = NSShadow()
        lightThemeSmallShadow.shadowColor = lightThemeSmallShadowColor
        lightThemeSmallShadow.shadowOffset = NSSize(width: 0, height: -1)
        lightThemeSmallShadow.shadowBlurRadius = 3
        let headerInnerShadow = NSShadow()
        headerInnerShadow.shadowColor = NSColor.black.withAlphaComponent(0.2)
        headerInnerShadow.shadowOffset = NSSize(width: 0, height: 0.5)
        headerInnerShadow.shadowBlurRadius = 0
        
        
        //// Subframes
        let lightThemeShadowContainer: NSRect = NSRect(x: frame.minX + 20, y: frame.minY + 20, width: frame.width - 40, height: frame.height - 40)
        
        
        //// lightThemeShadowContainer
        NSGraphicsContext.saveGraphicsState()
        lightThemeSmallShadow.set()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        
        //// lightThemeBase
        NSGraphicsContext.saveGraphicsState()
        boxLargeShadow.set()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        //// Clip Rectangle
        let rectanglePath = NSBezierPath(roundedRect: NSRect(x: lightThemeShadowContainer.minX + fastFloor(lightThemeShadowContainer.width * 0.00000 + 0.5), y: lightThemeShadowContainer.minY + fastFloor(lightThemeShadowContainer.height * 0.00000 + 0.5), width: fastFloor(lightThemeShadowContainer.width * 1.00000 + 0.5) - fastFloor(lightThemeShadowContainer.width * 0.00000 + 0.5), height: fastFloor(lightThemeShadowContainer.height * 1.00000 + 0.5) - fastFloor(lightThemeShadowContainer.height * 0.00000 + 0.5)), xRadius: 8, yRadius: 8)
        rectanglePath.addClip()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = NSBezierPath(roundedRect: NSRect(x: lightThemeShadowContainer.minX + fastFloor(lightThemeShadowContainer.width * 0.00000 + 0.5), y: lightThemeShadowContainer.minY + fastFloor(lightThemeShadowContainer.height * 0.00000 + 0.5), width: fastFloor(lightThemeShadowContainer.width * 1.00000 + 0.5) - fastFloor(lightThemeShadowContainer.width * 0.00000 + 0.5), height: fastFloor(lightThemeShadowContainer.height * 1.00000 + 0.5) - fastFloor(lightThemeShadowContainer.height * 0.00000 + 0.5)), xRadius: 8, yRadius: 8)
        lightThemeBackground.setFill()
        rectangle2Path.fill()
        baseInnerShadow.setStroke()
        rectangle2Path.lineWidth = 1
        rectangle2Path.stroke()
        
        
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
        
        
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
        
        
        //// Rectangle 3 Drawing
        let rectangle3CornerRadius: CGFloat = 8
        let rectangle3Rect = NSRect(x: frame.minX + 20, y: frame.minY + frame.height - 59, width: 360, height: 39)
        let rectangle3InnerRect = rectangle3Rect.insetBy(dx: rectangle3CornerRadius, dy: rectangle3CornerRadius)
        let rectangle3Path = NSBezierPath()
        rectangle3Path.move(to: NSPoint(x: rectangle3Rect.minX, y: rectangle3Rect.minY))
        rectangle3Path.line(to: NSPoint(x: rectangle3Rect.maxX, y: rectangle3Rect.minY))
        rectangle3Path.appendArc(withCenter: NSPoint(x: rectangle3InnerRect.maxX, y: rectangle3InnerRect.maxY), radius: rectangle3CornerRadius, startAngle: 0, endAngle: 90)
        rectangle3Path.appendArc(withCenter: NSPoint(x: rectangle3InnerRect.minX, y: rectangle3InnerRect.maxY), radius: rectangle3CornerRadius, startAngle: 90, endAngle: 180)
        rectangle3Path.close()
        lightThemeHeaderFill.setFill()
        rectangle3Path.fill()
        
        ////// Rectangle 3 Inner Shadow
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(rectangle3Path.bounds)
        context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
        
        context.setAlpha(headerInnerShadow.shadowColor!.alphaComponent)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        let rectangle3OpaqueShadow = NSShadow()
        rectangle3OpaqueShadow.shadowColor = headerInnerShadow.shadowColor!.withAlphaComponent(1)
        rectangle3OpaqueShadow.shadowOffset = headerInnerShadow.shadowOffset
        rectangle3OpaqueShadow.shadowBlurRadius = headerInnerShadow.shadowBlurRadius
        rectangle3OpaqueShadow.set()
        
        context.setBlendMode(.sourceOut)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        rectangle3OpaqueShadow.shadowColor!.setFill()
        rectangle3Path.fill()
        
        context.endTransparencyLayer()
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
    }
    
    public static func drawConnectionErrorsDark(frame: NSRect = NSRect(x: 0, y: 0, width: 400, height: 122)) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let lightThemeSmallShadowColor = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.12)
        let darkThemeBackground = NSColor(deviceRed: 0.333, green: 0.353, blue: 0.38, alpha: 1)
        let darkThemeHeaderGradientColor = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.12)
        let darkThemeHeaderGradientColor2 = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.08)
        
        //// Gradient Declarations
        let darkThemeHeaderGradient = NSGradient(starting: darkThemeHeaderGradientColor2, ending: darkThemeHeaderGradientColor)!
        
        //// Shadow Declarations
        let boxLargeShadow = NSShadow()
        boxLargeShadow.shadowColor = NSColor.black.withAlphaComponent(0.16)
        boxLargeShadow.shadowOffset = NSSize(width: 0, height: -6)
        boxLargeShadow.shadowBlurRadius = 12
        let lightThemeSmallShadow = NSShadow()
        lightThemeSmallShadow.shadowColor = lightThemeSmallShadowColor
        lightThemeSmallShadow.shadowOffset = NSSize(width: 0, height: -1)
        lightThemeSmallShadow.shadowBlurRadius = 3
        let darkHeaderInnerShadow = NSShadow()
        darkHeaderInnerShadow.shadowColor = NSColor.black.withAlphaComponent(0.08)
        darkHeaderInnerShadow.shadowOffset = NSSize(width: 0, height: 0.5)
        darkHeaderInnerShadow.shadowBlurRadius = 0
        
        
        //// Subframes
        let darktThemeShadowContainer: NSRect = NSRect(x: frame.minX + 20, y: frame.minY + 20, width: frame.width - 40, height: frame.height - 40)
        
        
        //// darktThemeShadowContainer
        NSGraphicsContext.saveGraphicsState()
        lightThemeSmallShadow.set()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        
        //// darkThemeBase
        NSGraphicsContext.saveGraphicsState()
        boxLargeShadow.set()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        //// Clip Rectangle
        let rectanglePath = NSBezierPath(roundedRect: NSRect(x: darktThemeShadowContainer.minX + fastFloor(darktThemeShadowContainer.width * 0.00000 + 0.5), y: darktThemeShadowContainer.minY + fastFloor(darktThemeShadowContainer.height * 0.00000 + 0.5), width: fastFloor(darktThemeShadowContainer.width * 1.00000 + 0.5) - fastFloor(darktThemeShadowContainer.width * 0.00000 + 0.5), height: fastFloor(darktThemeShadowContainer.height * 1.00000 + 0.5) - fastFloor(darktThemeShadowContainer.height * 0.00000 + 0.5)), xRadius: 8, yRadius: 8)
        rectanglePath.addClip()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = NSBezierPath(roundedRect: NSRect(x: darktThemeShadowContainer.minX + fastFloor(darktThemeShadowContainer.width * 0.00000 + 0.5), y: darktThemeShadowContainer.minY + fastFloor(darktThemeShadowContainer.height * 0.00000 + 0.5), width: fastFloor(darktThemeShadowContainer.width * 1.00000 + 0.5) - fastFloor(darktThemeShadowContainer.width * 0.00000 + 0.5), height: fastFloor(darktThemeShadowContainer.height * 1.00000 + 0.5) - fastFloor(darktThemeShadowContainer.height * 0.00000 + 0.5)), xRadius: 8, yRadius: 8)
        darkThemeBackground.setFill()
        rectangle2Path.fill()
        
        
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
        
        
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
        
        
        //// Rectangle 3 Drawing
        let rectangle3CornerRadius: CGFloat = 8
        let rectangle3Rect = NSRect(x: frame.minX + 20, y: frame.minY + frame.height - 59, width: 360, height: 39)
        let rectangle3InnerRect = rectangle3Rect.insetBy(dx: rectangle3CornerRadius, dy: rectangle3CornerRadius)
        let rectangle3Path = NSBezierPath()
        rectangle3Path.move(to: NSPoint(x: rectangle3Rect.minX, y: rectangle3Rect.minY))
        rectangle3Path.line(to: NSPoint(x: rectangle3Rect.maxX, y: rectangle3Rect.minY))
        rectangle3Path.appendArc(withCenter: NSPoint(x: rectangle3InnerRect.maxX, y: rectangle3InnerRect.maxY), radius: rectangle3CornerRadius, startAngle: 0, endAngle: 90)
        rectangle3Path.appendArc(withCenter: NSPoint(x: rectangle3InnerRect.minX, y: rectangle3InnerRect.maxY), radius: rectangle3CornerRadius, startAngle: 90, endAngle: 180)
        rectangle3Path.close()
        darkThemeHeaderGradient.draw(in: rectangle3Path, angle: -90)
        
        ////// Rectangle 3 Inner Shadow
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(rectangle3Path.bounds)
        context.setShadow(offset: NSSize.zero, blur: 0, color: nil)
        
        context.setAlpha(darkHeaderInnerShadow.shadowColor!.alphaComponent)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        let rectangle3OpaqueShadow = NSShadow()
        rectangle3OpaqueShadow.shadowColor = darkHeaderInnerShadow.shadowColor!.withAlphaComponent(1)
        rectangle3OpaqueShadow.shadowOffset = darkHeaderInnerShadow.shadowOffset
        rectangle3OpaqueShadow.shadowBlurRadius = darkHeaderInnerShadow.shadowBlurRadius
        rectangle3OpaqueShadow.set()
        
        context.setBlendMode(.sourceOut)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        rectangle3OpaqueShadow.shadowColor!.setFill()
        rectangle3Path.fill()
        
        context.endTransparencyLayer()
        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()
    }
    
    public static func drawReconnectButtonLight(frame: NSRect = NSRect(x: 0, y: 0, width: 82, height: 27), buttonText: String = "Reconnect", original: Bool = true, pressed: Bool = false, buttonTextColor: NSColor = NSColor(deviceRed: 0.404, green: 0.431, blue: 0.459, alpha: 1)) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let gradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let gradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.86)
        let lightThemeAddButtonInnerShadow = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.03)
        let color2 = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.06)
        
        //// Gradient Declarations
        let lightThemeAddButtonBackground = NSGradient(starting: gradientColor, ending: gradientColor2)!
        
        
        //// Subframes
        let buttonLight: NSRect = NSRect(x: frame.minX + 1, y: frame.minY + 1, width: frame.width - 2, height: frame.height - 2)
        let buttonLightPressed: NSRect = NSRect(x: frame.minX + 1, y: frame.minY + 1, width: frame.width - 2, height: frame.height - 2)
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = NSBezierPath(roundedRect: NSRect(x: frame.minX + 0.5, y: frame.minY + 0.5, width: frame.width - 1, height: frame.height - 1), xRadius: 5.5, yRadius: 5.5)
        color2.setFill()
        rectangle3Path.fill()
        
        
        if (original) {
            //// buttonLight
            NSGraphicsContext.saveGraphicsState()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            //// Clip Rectangle
            let rectanglePath = NSBezierPath(roundedRect: NSRect(x: buttonLight.minX + fastFloor(buttonLight.width * 0.00000 + 0.5), y: buttonLight.minY + fastFloor(buttonLight.height * 0.00000 + 0.5), width: fastFloor(buttonLight.width * 1.00000 + 0.5) - fastFloor(buttonLight.width * 0.00000 + 0.5), height: fastFloor(buttonLight.height * 1.00000 + 0.5) - fastFloor(buttonLight.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            rectanglePath.addClip()
            
            
            //// Rectangle 2 Drawing
            let rectangle2Path = NSBezierPath(roundedRect: NSRect(x: buttonLight.minX + fastFloor(buttonLight.width * 0.00000 + 0.5), y: buttonLight.minY + fastFloor(buttonLight.height * 0.00000 + 0.5), width: fastFloor(buttonLight.width * 1.00000 + 0.5) - fastFloor(buttonLight.width * 0.00000 + 0.5), height: fastFloor(buttonLight.height * 1.00000 + 0.5) - fastFloor(buttonLight.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            lightThemeAddButtonBackground.draw(in: rectangle2Path, angle: -90)
            lightThemeAddButtonInnerShadow.setStroke()
            rectangle2Path.lineWidth = 1
            rectangle2Path.stroke()
            
            
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// buttonLightPressed
            NSGraphicsContext.saveGraphicsState()
            context.setAlpha(0.7)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            //// Clip Rectangle 4
            let rectangle4Path = NSBezierPath(roundedRect: NSRect(x: buttonLightPressed.minX + fastFloor(buttonLightPressed.width * 0.00000 + 0.5), y: buttonLightPressed.minY + fastFloor(buttonLightPressed.height * 0.00000 + 0.5), width: fastFloor(buttonLightPressed.width * 1.00000 + 0.5) - fastFloor(buttonLightPressed.width * 0.00000 + 0.5), height: fastFloor(buttonLightPressed.height * 1.00000 + 0.5) - fastFloor(buttonLightPressed.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            rectangle4Path.addClip()
            
            
            //// Rectangle 5 Drawing
            let rectangle5Path = NSBezierPath(roundedRect: NSRect(x: buttonLightPressed.minX + fastFloor(buttonLightPressed.width * 0.00000 + 0.5), y: buttonLightPressed.minY + fastFloor(buttonLightPressed.height * 0.00000 + 0.5), width: fastFloor(buttonLightPressed.width * 1.00000 + 0.5) - fastFloor(buttonLightPressed.width * 0.00000 + 0.5), height: fastFloor(buttonLightPressed.height * 1.00000 + 0.5) - fastFloor(buttonLightPressed.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            lightThemeAddButtonBackground.draw(in: rectangle5Path, angle: -90)
            lightThemeAddButtonInnerShadow.setStroke()
            rectangle5Path.lineWidth = 1
            rectangle5Path.stroke()
            
            
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// Text Drawing
        let textRect = NSRect(x: frame.minX + fastFloor(frame.width * 0.01220 + 0.5), y: frame.minY + fastFloor(frame.height * 0.03704 + 0.5), width: fastFloor(frame.width * 0.98780 + 0.5) - fastFloor(frame.width * 0.01220 + 0.5), height: fastFloor(frame.height * 0.96296 + 0.5) - fastFloor(frame.height * 0.03704 + 0.5))
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [NSFontAttributeName: NSFont.systemFont(ofSize: NSFont.systemFontSize()), NSForegroundColorAttributeName: buttonTextColor, NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = buttonText.boundingRect(with: NSSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes).height
        let textTextRect: NSRect = NSRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        buttonText.draw(in: textTextRect.offsetBy(dx: 0, dy: 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }
    
    public static func drawReconnectButtonDark(frame: NSRect = NSRect(x: 0, y: 0, width: 82, height: 27), buttonText: String = "Reconnect", original: Bool = true, pressed: Bool = false, buttonTextColor: NSColor = NSColor(deviceRed: 0.333, green: 0.353, blue: 0.38, alpha: 1)) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let gradientColor = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 1)
        let gradientColor2 = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.86)
        let lightThemeAddButtonInnerShadow = NSColor(deviceRed: 1, green: 1, blue: 1, alpha: 0.03)
        let color2 = NSColor(deviceRed: 0, green: 0, blue: 0, alpha: 0.06)
        
        //// Gradient Declarations
        let lightThemeAddButtonBackground = NSGradient(starting: gradientColor, ending: gradientColor2)!
        
        
        //// Subframes
        let buttonLight: NSRect = NSRect(x: frame.minX + 1, y: frame.minY + 1, width: frame.width - 2, height: frame.height - 2)
        let buttonLightPressed: NSRect = NSRect(x: frame.minX + 1, y: frame.minY + 1, width: frame.width - 2, height: frame.height - 2)
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = NSBezierPath(roundedRect: NSRect(x: frame.minX + 0.5, y: frame.minY + 0.5, width: frame.width - 1, height: frame.height - 1), xRadius: 5.5, yRadius: 5.5)
        color2.setFill()
        rectangle3Path.fill()
        
        
        if (original) {
            //// buttonLight
            NSGraphicsContext.saveGraphicsState()
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            //// Clip Rectangle
            let rectanglePath = NSBezierPath(roundedRect: NSRect(x: buttonLight.minX + fastFloor(buttonLight.width * 0.00000 + 0.5), y: buttonLight.minY + fastFloor(buttonLight.height * 0.00000 + 0.5), width: fastFloor(buttonLight.width * 1.00000 + 0.5) - fastFloor(buttonLight.width * 0.00000 + 0.5), height: fastFloor(buttonLight.height * 1.00000 + 0.5) - fastFloor(buttonLight.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            rectanglePath.addClip()
            
            
            //// Rectangle 2 Drawing
            let rectangle2Path = NSBezierPath(roundedRect: NSRect(x: buttonLight.minX + fastFloor(buttonLight.width * 0.00000 + 0.5), y: buttonLight.minY + fastFloor(buttonLight.height * 0.00000 + 0.5), width: fastFloor(buttonLight.width * 1.00000 + 0.5) - fastFloor(buttonLight.width * 0.00000 + 0.5), height: fastFloor(buttonLight.height * 1.00000 + 0.5) - fastFloor(buttonLight.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            lightThemeAddButtonBackground.draw(in: rectangle2Path, angle: -90)
            lightThemeAddButtonInnerShadow.setStroke()
            rectangle2Path.lineWidth = 1
            rectangle2Path.stroke()
            
            
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        if (pressed) {
            //// buttonLightPressed
            NSGraphicsContext.saveGraphicsState()
            context.setAlpha(0.7)
            context.beginTransparencyLayer(auxiliaryInfo: nil)
            
            //// Clip Rectangle 4
            let rectangle4Path = NSBezierPath(roundedRect: NSRect(x: buttonLightPressed.minX + fastFloor(buttonLightPressed.width * 0.00000 + 0.5), y: buttonLightPressed.minY + fastFloor(buttonLightPressed.height * 0.00000 + 0.5), width: fastFloor(buttonLightPressed.width * 1.00000 + 0.5) - fastFloor(buttonLightPressed.width * 0.00000 + 0.5), height: fastFloor(buttonLightPressed.height * 1.00000 + 0.5) - fastFloor(buttonLightPressed.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            rectangle4Path.addClip()
            
            
            //// Rectangle 5 Drawing
            let rectangle5Path = NSBezierPath(roundedRect: NSRect(x: buttonLightPressed.minX + fastFloor(buttonLightPressed.width * 0.00000 + 0.5), y: buttonLightPressed.minY + fastFloor(buttonLightPressed.height * 0.00000 + 0.5), width: fastFloor(buttonLightPressed.width * 1.00000 + 0.5) - fastFloor(buttonLightPressed.width * 0.00000 + 0.5), height: fastFloor(buttonLightPressed.height * 1.00000 + 0.5) - fastFloor(buttonLightPressed.height * 0.00000 + 0.5)), xRadius: 5, yRadius: 5)
            lightThemeAddButtonBackground.draw(in: rectangle5Path, angle: -90)
            lightThemeAddButtonInnerShadow.setStroke()
            rectangle5Path.lineWidth = 1
            rectangle5Path.stroke()
            
            
            context.endTransparencyLayer()
            NSGraphicsContext.restoreGraphicsState()
        }
        
        
        //// Text Drawing
        let textRect = NSRect(x: frame.minX + fastFloor(frame.width * 0.01220 + 0.5), y: frame.minY + fastFloor(frame.height * 0.03704 + 0.5), width: fastFloor(frame.width * 0.98780 + 0.5) - fastFloor(frame.width * 0.01220 + 0.5), height: fastFloor(frame.height * 0.96296 + 0.5) - fastFloor(frame.height * 0.03704 + 0.5))
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [NSFontAttributeName: NSFont.systemFont(ofSize: NSFont.systemFontSize()), NSForegroundColorAttributeName: buttonTextColor, NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = buttonText.boundingRect(with: NSSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes).height
        let textTextRect: NSRect = NSRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        buttonText.draw(in: textTextRect.offsetBy(dx: 0, dy: 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }
    
}
