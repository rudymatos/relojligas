//
//  RelojLigaComponents.swift
//  RelojLiga
//
//  Created by rudymatos on 10/8/17.
//  Copyright © 2017 beardedgentleman. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class RelojLigaComponents : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawMinutesToStartCounting(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 255, height: 281), resizing: ResizingBehavior = .aspectFit, stopWatchCurrentSeconds: CGFloat = 42, minutesToStartCountingMaxSeconds: CGFloat = 183, minutesToStartCountingText: String = "a los 2 minutos") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 255, height: 281), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 255, y: resizedFrame.height / 281)


        //// Color Declarations
        let colorContadorDeTiro = UIColor(red: 0.710, green: 0.916, blue: 0.781, alpha: 1.000)
        let baseColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Variable Declarations
        let minutesToStartCountingEndAngle: CGFloat = stopWatchCurrentSeconds < minutesToStartCountingMaxSeconds ? 360 * (100 - stopWatchCurrentSeconds / minutesToStartCountingMaxSeconds * 100) / 100.0 : 0.01

        //// Text Drawing
        let textRect = CGRect(x: -1, y: 249, width: 255, height: 23)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Regular", size: 25)!,
            .foregroundColor: colorContadorDeTiro,
            .paragraphStyle: textStyle,
        ] as [NSAttributedStringKey: Any]

        let textTextHeight: CGFloat = minutesToStartCountingText.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        minutesToStartCountingText.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()


        //// TGLabel Drawing
        let tGLabelRect = CGRect(x: 0, y: 216, width: 255, height: 39)
        let tGLabelTextContent = "Contador de Tiro"
        let tGLabelStyle = NSMutableParagraphStyle()
        tGLabelStyle.alignment = .center
        let tGLabelFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Bold", size: 30)!,
            .foregroundColor: baseColor,
            .paragraphStyle: tGLabelStyle,
        ] as [NSAttributedStringKey: Any]

        let tGLabelTextHeight: CGFloat = tGLabelTextContent.boundingRect(with: CGSize(width: tGLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: tGLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: tGLabelRect)
        tGLabelTextContent.draw(in: CGRect(x: tGLabelRect.minX, y: tGLabelRect.minY + (tGLabelRect.height - tGLabelTextHeight) / 2, width: tGLabelRect.width, height: tGLabelTextHeight), withAttributes: tGLabelFontAttributes)
        context.restoreGState()


        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 127.5, y: 70))
        bezierPath.addCurve(to: CGPoint(x: 107.63, y: 73.23), controlPoint1: CGPoint(x: 120.53, y: 70), controlPoint2: CGPoint(x: 113.84, y: 71.14))
        bezierPath.addCurve(to: CGPoint(x: 68, y: 126.5), controlPoint1: CGPoint(x: 84.54, y: 81), controlPoint2: CGPoint(x: 68, y: 101.91))
        bezierPath.addCurve(to: CGPoint(x: 127.5, y: 183), controlPoint1: CGPoint(x: 68, y: 157.7), controlPoint2: CGPoint(x: 94.64, y: 183))
        bezierPath.addCurve(to: CGPoint(x: 187, y: 126.5), controlPoint1: CGPoint(x: 160.36, y: 183), controlPoint2: CGPoint(x: 187, y: 157.7))
        bezierPath.addCurve(to: CGPoint(x: 127.5, y: 70), controlPoint1: CGPoint(x: 187, y: 95.3), controlPoint2: CGPoint(x: 160.36, y: 70))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 202, y: 126.5))
        bezierPath.addCurve(to: CGPoint(x: 127, y: 198), controlPoint1: CGPoint(x: 202, y: 165.99), controlPoint2: CGPoint(x: 168.42, y: 198))
        bezierPath.addCurve(to: CGPoint(x: 52, y: 126.5), controlPoint1: CGPoint(x: 85.58, y: 198), controlPoint2: CGPoint(x: 52, y: 165.99))
        bezierPath.addCurve(to: CGPoint(x: 96.77, y: 61.05), controlPoint1: CGPoint(x: 52, y: 97.27), controlPoint2: CGPoint(x: 70.4, y: 72.13))
        bezierPath.addCurve(to: CGPoint(x: 127, y: 55), controlPoint1: CGPoint(x: 106.02, y: 57.16), controlPoint2: CGPoint(x: 116.24, y: 55))
        bezierPath.addCurve(to: CGPoint(x: 202, y: 126.5), controlPoint1: CGPoint(x: 168.42, y: 55), controlPoint2: CGPoint(x: 202, y: 87.01))
        bezierPath.close()
        baseColor.setFill()
        bezierPath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: 122.85, y: 166.15, width: 7.9, height: 12.8), cornerRadius: 3.95)
        baseColor.setFill()
        rectangle2Path.fill()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 122.35, y: 73.15, width: 7.9, height: 12.8), cornerRadius: 3.95)
        baseColor.setFill()
        rectanglePath.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(roundedRect: CGRect(x: 171.9, y: 122.1, width: 12.8, height: 7.9), cornerRadius: 3.95)
        baseColor.setFill()
        rectangle4Path.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: 71.4, y: 122.1, width: 12.8, height: 7.9), cornerRadius: 3.95)
        baseColor.setFill()
        rectangle3Path.fill()




        //// Oval Drawing
        let ovalRect = CGRect(x: 71, y: 73, width: 114, height: 106)
        let ovalPath = UIBezierPath()
        ovalPath.addArc(withCenter: CGPoint.zero, radius: ovalRect.width / 2, startAngle: -90 * CGFloat.pi/180, endAngle: -(minutesToStartCountingEndAngle + 90) * CGFloat.pi/180, clockwise: true)
        ovalPath.addLine(to: CGPoint.zero)
        ovalPath.close()

        var ovalTransform = CGAffineTransform(translationX: ovalRect.midX, y: ovalRect.midY)
        ovalTransform = ovalTransform.scaledBy(x: 1, y: ovalRect.height / ovalRect.width)
        ovalPath.apply(ovalTransform)

        colorContadorDeTiro.setFill()
        ovalPath.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawGameTime(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 255, height: 281), resizing: ResizingBehavior = .aspectFit, stopWatchCurrentSeconds: CGFloat = 42, stopWatchMaxSeconds: CGFloat = 710, stopWatchText: String = "12 minutos") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 255, height: 281), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 255, y: resizedFrame.height / 281)


        //// Color Declarations
        let colorTiempoJuego = UIColor(red: 0.800, green: 0.320, blue: 0.320, alpha: 1.000)
        let baseColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Variable Declarations
        let stopWatchEndAngle: CGFloat = 360 * (100 - stopWatchCurrentSeconds / stopWatchMaxSeconds * 100) / 100.0

        //// Text Drawing
        let textRect = CGRect(x: -1, y: 249, width: 255, height: 23)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Regular", size: 25)!,
            .foregroundColor: colorTiempoJuego,
            .paragraphStyle: textStyle,
        ] as [NSAttributedStringKey: Any]

        let textTextHeight: CGFloat = stopWatchText.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        stopWatchText.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()


        //// TGLabel Drawing
        let tGLabelRect = CGRect(x: 0, y: 216, width: 255, height: 39)
        let tGLabelTextContent = "Tiempo de Juego"
        let tGLabelStyle = NSMutableParagraphStyle()
        tGLabelStyle.alignment = .center
        let tGLabelFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Bold", size: 30)!,
            .foregroundColor: baseColor,
            .paragraphStyle: tGLabelStyle,
        ] as [NSAttributedStringKey: Any]

        let tGLabelTextHeight: CGFloat = tGLabelTextContent.boundingRect(with: CGSize(width: tGLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: tGLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: tGLabelRect)
        tGLabelTextContent.draw(in: CGRect(x: tGLabelRect.minX, y: tGLabelRect.minY + (tGLabelRect.height - tGLabelTextHeight) / 2, width: tGLabelRect.width, height: tGLabelTextHeight), withAttributes: tGLabelFontAttributes)
        context.restoreGState()


        //// Bezier 47 Drawing
        let bezier47Path = UIBezierPath()
        bezier47Path.move(to: CGPoint(x: 128, y: 186.76))
        bezier47Path.addCurve(to: CGPoint(x: 71, y: 132.15), controlPoint1: CGPoint(x: 96.57, y: 186.76), controlPoint2: CGPoint(x: 71, y: 162.26))
        bezier47Path.addCurve(to: CGPoint(x: 128, y: 77.54), controlPoint1: CGPoint(x: 71, y: 102.03), controlPoint2: CGPoint(x: 96.57, y: 77.54))
        bezier47Path.addCurve(to: CGPoint(x: 185, y: 132.15), controlPoint1: CGPoint(x: 159.43, y: 77.54), controlPoint2: CGPoint(x: 185, y: 102.03))
        bezier47Path.addCurve(to: CGPoint(x: 128, y: 186.76), controlPoint1: CGPoint(x: 185, y: 162.26), controlPoint2: CGPoint(x: 159.43, y: 186.76))
        bezier47Path.close()
        bezier47Path.move(to: CGPoint(x: 179.9, y: 80.33))
        bezier47Path.addLine(to: CGPoint(x: 188.12, y: 69.22))
        bezier47Path.addCurve(to: CGPoint(x: 187, y: 62.99), controlPoint1: CGPoint(x: 189.61, y: 67.21), controlPoint2: CGPoint(x: 189.11, y: 64.41))
        bezier47Path.addLine(to: CGPoint(x: 174.62, y: 54.59))
        bezier47Path.addCurve(to: CGPoint(x: 168.12, y: 55.65), controlPoint1: CGPoint(x: 172.52, y: 53.16), controlPoint2: CGPoint(x: 169.61, y: 53.64))
        bezier47Path.addLine(to: CGPoint(x: 159.7, y: 67.04))
        bezier47Path.addCurve(to: CGPoint(x: 139.83, y: 61.19), controlPoint1: CGPoint(x: 153.49, y: 64.25), controlPoint2: CGPoint(x: 146.82, y: 62.25))
        bezier47Path.addLine(to: CGPoint(x: 139.83, y: 56.56))
        bezier47Path.addCurve(to: CGPoint(x: 145.46, y: 51.17), controlPoint1: CGPoint(x: 139.83, y: 53.59), controlPoint2: CGPoint(x: 142.36, y: 51.17))
        bezier47Path.addLine(to: CGPoint(x: 148.56, y: 51.17))
        bezier47Path.addCurve(to: CGPoint(x: 154.19, y: 45.78), controlPoint1: CGPoint(x: 151.65, y: 51.17), controlPoint2: CGPoint(x: 154.19, y: 48.74))
        bezier47Path.addLine(to: CGPoint(x: 154.19, y: 29.39))
        bezier47Path.addCurve(to: CGPoint(x: 148.56, y: 24), controlPoint1: CGPoint(x: 154.19, y: 26.43), controlPoint2: CGPoint(x: 151.65, y: 24))
        bezier47Path.addLine(to: CGPoint(x: 107.44, y: 24))
        bezier47Path.addCurve(to: CGPoint(x: 101.81, y: 29.39), controlPoint1: CGPoint(x: 104.34, y: 24), controlPoint2: CGPoint(x: 101.81, y: 26.43))
        bezier47Path.addLine(to: CGPoint(x: 101.81, y: 45.78))
        bezier47Path.addCurve(to: CGPoint(x: 107.44, y: 51.17), controlPoint1: CGPoint(x: 101.81, y: 48.74), controlPoint2: CGPoint(x: 104.34, y: 51.17))
        bezier47Path.addLine(to: CGPoint(x: 110.54, y: 51.17))
        bezier47Path.addCurve(to: CGPoint(x: 116.17, y: 56.56), controlPoint1: CGPoint(x: 113.64, y: 51.17), controlPoint2: CGPoint(x: 116.17, y: 53.59))
        bezier47Path.addLine(to: CGPoint(x: 116.17, y: 61.19))
        bezier47Path.addCurve(to: CGPoint(x: 94.97, y: 67.65), controlPoint1: CGPoint(x: 108.68, y: 62.33), controlPoint2: CGPoint(x: 101.55, y: 64.54))
        bezier47Path.addLine(to: CGPoint(x: 86.64, y: 56.37))
        bezier47Path.addCurve(to: CGPoint(x: 80.13, y: 55.3), controlPoint1: CGPoint(x: 85.14, y: 54.35), controlPoint2: CGPoint(x: 82.23, y: 53.88))
        bezier47Path.addLine(to: CGPoint(x: 67.75, y: 63.7))
        bezier47Path.addCurve(to: CGPoint(x: 66.63, y: 69.94), controlPoint1: CGPoint(x: 65.64, y: 65.13), controlPoint2: CGPoint(x: 65.15, y: 67.92))
        bezier47Path.addLine(to: CGPoint(x: 75.04, y: 81.32))
        bezier47Path.addCurve(to: CGPoint(x: 53, y: 132.15), controlPoint1: CGPoint(x: 61.43, y: 94.33), controlPoint2: CGPoint(x: 53, y: 112.31))
        bezier47Path.addCurve(to: CGPoint(x: 128, y: 204), controlPoint1: CGPoint(x: 53, y: 171.77), controlPoint2: CGPoint(x: 86.65, y: 204))
        bezier47Path.addCurve(to: CGPoint(x: 203, y: 132.15), controlPoint1: CGPoint(x: 169.36, y: 204), controlPoint2: CGPoint(x: 203, y: 171.77))
        bezier47Path.addCurve(to: CGPoint(x: 179.9, y: 80.33), controlPoint1: CGPoint(x: 203, y: 111.8), controlPoint2: CGPoint(x: 194.13, y: 93.41))
        bezier47Path.close()
        baseColor.setFill()
        bezier47Path.fill()


        //// StopWatchRotationOval Drawing
        let stopWatchRotationOvalRect = CGRect(x: 79, y: 84, width: 99, height: 96)
        let stopWatchRotationOvalPath = UIBezierPath()
        stopWatchRotationOvalPath.addArc(withCenter: CGPoint.zero, radius: stopWatchRotationOvalRect.width / 2, startAngle: -90 * CGFloat.pi/180, endAngle: -(stopWatchEndAngle + 90) * CGFloat.pi/180, clockwise: true)
        stopWatchRotationOvalPath.addLine(to: CGPoint.zero)
        stopWatchRotationOvalPath.close()

        var stopWatchRotationOvalTransform = CGAffineTransform(translationX: stopWatchRotationOvalRect.midX, y: stopWatchRotationOvalRect.midY)
        stopWatchRotationOvalTransform = stopWatchRotationOvalTransform.scaledBy(x: 1, y: stopWatchRotationOvalRect.height / stopWatchRotationOvalRect.width)
        stopWatchRotationOvalPath.apply(stopWatchRotationOvalTransform)

        colorTiempoJuego.setFill()
        stopWatchRotationOvalPath.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawShootingTime(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 255, height: 281), resizing: ResizingBehavior = .aspectFit, shootingSecsCurrentSeconds: CGFloat = 8, shootingSecsMaxSeconds: CGFloat = 14, shootingTimeText: String = "20 segundos") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 255, height: 281), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 255, y: resizedFrame.height / 281)


        //// Color Declarations
        let colorRelojDeTiro = UIColor(red: 0.871, green: 0.919, blue: 0.709, alpha: 1.000)
        let baseColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        //// Variable Declarations
        let shootingSecsText = "\(Int(round(shootingSecsCurrentSeconds)))"
        let shootingSecsEndAngle: CGFloat = 360 * (100 - shootingSecsCurrentSeconds / shootingSecsMaxSeconds * 100) / 100.0

        //// Text Drawing
        let textRect = CGRect(x: 0, y: 249, width: 255, height: 23)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Regular", size: 25)!,
            .foregroundColor: colorRelojDeTiro,
            .paragraphStyle: textStyle,
        ] as [NSAttributedStringKey: Any]

        let textTextHeight: CGFloat = shootingTimeText.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        shootingTimeText.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()


        //// TGLabel Drawing
        let tGLabelRect = CGRect(x: 0, y: 216, width: 255, height: 39)
        let tGLabelTextContent = "Reloj de Tiro"
        let tGLabelStyle = NSMutableParagraphStyle()
        tGLabelStyle.alignment = .center
        let tGLabelFontAttributes = [
            .font: UIFont(name: "SFProDisplay-Bold", size: 30)!,
            .foregroundColor: baseColor,
            .paragraphStyle: tGLabelStyle,
        ] as [NSAttributedStringKey: Any]

        let tGLabelTextHeight: CGFloat = tGLabelTextContent.boundingRect(with: CGSize(width: tGLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: tGLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: tGLabelRect)
        tGLabelTextContent.draw(in: CGRect(x: tGLabelRect.minX, y: tGLabelRect.minY + (tGLabelRect.height - tGLabelTextHeight) / 2, width: tGLabelRect.width, height: tGLabelTextHeight), withAttributes: tGLabelFontAttributes)
        context.restoreGState()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 182.26, y: 78.67))
        bezier2Path.addCurve(to: CGPoint(x: 186.51, y: 84.45), controlPoint1: CGPoint(x: 183.77, y: 80.52), controlPoint2: CGPoint(x: 185.19, y: 82.45))
        bezier2Path.addCurve(to: CGPoint(x: 188.17, y: 87.09), controlPoint1: CGPoint(x: 187.08, y: 85.32), controlPoint2: CGPoint(x: 187.64, y: 86.2))
        bezier2Path.addCurve(to: CGPoint(x: 174.48, y: 93.34), controlPoint1: CGPoint(x: 184.1, y: 88.95), controlPoint2: CGPoint(x: 179.49, y: 91.06))
        bezier2Path.addCurve(to: CGPoint(x: 173.51, y: 91.88), controlPoint1: CGPoint(x: 174.16, y: 92.85), controlPoint2: CGPoint(x: 173.84, y: 92.36))
        bezier2Path.addCurve(to: CGPoint(x: 126.34, y: 66.06), controlPoint1: CGPoint(x: 163.4, y: 77.01), controlPoint2: CGPoint(x: 146.13, y: 66.95))
        bezier2Path.addCurve(to: CGPoint(x: 123.5, y: 66), controlPoint1: CGPoint(x: 125.4, y: 66.02), controlPoint2: CGPoint(x: 124.45, y: 66))
        bezier2Path.addCurve(to: CGPoint(x: 103.63, y: 69.23), controlPoint1: CGPoint(x: 116.53, y: 66), controlPoint2: CGPoint(x: 109.84, y: 67.14))
        bezier2Path.addCurve(to: CGPoint(x: 64, y: 122.5), controlPoint1: CGPoint(x: 80.54, y: 77), controlPoint2: CGPoint(x: 64, y: 97.91))
        bezier2Path.addCurve(to: CGPoint(x: 67.67, y: 142.07), controlPoint1: CGPoint(x: 64, y: 129.38), controlPoint2: CGPoint(x: 65.3, y: 135.97))
        bezier2Path.addCurve(to: CGPoint(x: 53.19, y: 148.68), controlPoint1: CGPoint(x: 61.47, y: 144.9), controlPoint2: CGPoint(x: 56.47, y: 147.18))
        bezier2Path.addCurve(to: CGPoint(x: 48, y: 122.5), controlPoint1: CGPoint(x: 49.84, y: 140.57), controlPoint2: CGPoint(x: 48, y: 131.74))
        bezier2Path.addCurve(to: CGPoint(x: 92.77, y: 57.05), controlPoint1: CGPoint(x: 48, y: 93.27), controlPoint2: CGPoint(x: 66.4, y: 68.13))
        bezier2Path.addCurve(to: CGPoint(x: 103.07, y: 53.55), controlPoint1: CGPoint(x: 96.08, y: 55.65), controlPoint2: CGPoint(x: 99.52, y: 54.48))
        bezier2Path.addCurve(to: CGPoint(x: 123, y: 51), controlPoint1: CGPoint(x: 109.41, y: 51.89), controlPoint2: CGPoint(x: 116.1, y: 51))
        bezier2Path.addCurve(to: CGPoint(x: 182.26, y: 78.67), controlPoint1: CGPoint(x: 147.09, y: 51), controlPoint2: CGPoint(x: 168.54, y: 61.83))
        bezier2Path.close()
        baseColor.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalRect = CGRect(x: 78, y: 76, width: 94, height: 92)
        let ovalPath = UIBezierPath()
        ovalPath.addArc(withCenter: CGPoint.zero, radius: ovalRect.width / 2, startAngle: -90 * CGFloat.pi/180, endAngle: -(shootingSecsEndAngle + 90) * CGFloat.pi/180, clockwise: true)
        ovalPath.addLine(to: CGPoint.zero)
        ovalPath.close()

        var ovalTransform = CGAffineTransform(translationX: ovalRect.midX, y: ovalRect.midY)
        ovalTransform = ovalTransform.scaledBy(x: 1, y: ovalRect.height / ovalRect.width)
        ovalPath.apply(ovalTransform)

        colorRelojDeTiro.setFill()
        ovalPath.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 157.5, y: 96.5))
        bezierPath.addLine(to: CGPoint(x: 198.5, y: 76.5))
        bezierPath.addLine(to: CGPoint(x: 198.5, y: 113.5))
        bezierPath.addLine(to: CGPoint(x: 157.5, y: 96.5))
        bezierPath.close()
        baseColor.setFill()
        bezierPath.fill()
        baseColor.setStroke()
        bezierPath.lineWidth = 2.5
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.stroke()


        //// Bezier 7 Drawing
        context.saveGState()
        context.translateBy(x: 67.75, y: 156.95)
        context.rotate(by: -59.1 * CGFloat.pi/180)

        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 0.82, y: -5.08))
        bezier7Path.addCurve(to: CGPoint(x: -8.61, y: 0.84), controlPoint1: CGPoint(x: -3.21, y: -6.42), controlPoint2: CGPoint(x: -7.43, y: -3.77))
        bezier7Path.addCurve(to: CGPoint(x: -10.1, y: 6.11), controlPoint1: CGPoint(x: -9.06, y: 2.6), controlPoint2: CGPoint(x: -9.56, y: 4.38))
        bezier7Path.addCurve(to: CGPoint(x: -10.23, y: 11.55), controlPoint1: CGPoint(x: -10.67, y: 7.93), controlPoint2: CGPoint(x: -10.68, y: 9.83))
        bezier7Path.addCurve(to: CGPoint(x: -5.51, y: 17.23), controlPoint1: CGPoint(x: -9.56, y: 14.1), controlPoint2: CGPoint(x: -7.87, y: 16.26))
        bezier7Path.addCurve(to: CGPoint(x: 4.21, y: 11.98), controlPoint1: CGPoint(x: -1.56, y: 18.85), controlPoint2: CGPoint(x: 2.79, y: 16.5))
        bezier7Path.addCurve(to: CGPoint(x: 5.99, y: 5.71), controlPoint1: CGPoint(x: 4.86, y: 9.92), controlPoint2: CGPoint(x: 5.45, y: 7.81))
        bezier7Path.addCurve(to: CGPoint(x: 0.82, y: -5.08), controlPoint1: CGPoint(x: 7.16, y: 1.1), controlPoint2: CGPoint(x: 4.85, y: -3.73))
        bezier7Path.close()
        baseColor.setFill()
        bezier7Path.fill()

        context.restoreGState()


        //// Bezier 3 Drawing
        context.saveGState()
        context.translateBy(x: 88.75, y: 174.95)
        context.rotate(by: -82.98 * CGFloat.pi/180)

        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 0.82, y: -5.08))
        bezier3Path.addCurve(to: CGPoint(x: -8.61, y: 0.84), controlPoint1: CGPoint(x: -3.21, y: -6.42), controlPoint2: CGPoint(x: -7.43, y: -3.77))
        bezier3Path.addCurve(to: CGPoint(x: -10.1, y: 6.11), controlPoint1: CGPoint(x: -9.06, y: 2.6), controlPoint2: CGPoint(x: -9.56, y: 4.38))
        bezier3Path.addCurve(to: CGPoint(x: -10.23, y: 11.55), controlPoint1: CGPoint(x: -10.67, y: 7.93), controlPoint2: CGPoint(x: -10.68, y: 9.83))
        bezier3Path.addCurve(to: CGPoint(x: -5.51, y: 17.23), controlPoint1: CGPoint(x: -9.56, y: 14.1), controlPoint2: CGPoint(x: -7.87, y: 16.26))
        bezier3Path.addCurve(to: CGPoint(x: 4.21, y: 11.98), controlPoint1: CGPoint(x: -1.56, y: 18.85), controlPoint2: CGPoint(x: 2.79, y: 16.5))
        bezier3Path.addCurve(to: CGPoint(x: 5.99, y: 5.71), controlPoint1: CGPoint(x: 4.86, y: 9.92), controlPoint2: CGPoint(x: 5.45, y: 7.81))
        bezier3Path.addCurve(to: CGPoint(x: 0.82, y: -5.08), controlPoint1: CGPoint(x: 7.16, y: 1.1), controlPoint2: CGPoint(x: 4.85, y: -3.73))
        bezier3Path.close()
        baseColor.setFill()
        bezier3Path.fill()

        context.restoreGState()


        //// Bezier 4 Drawing
        context.saveGState()
        context.translateBy(x: 116.75, y: 182.95)
        context.rotate(by: -108.15 * CGFloat.pi/180)

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 0.82, y: -5.08))
        bezier4Path.addCurve(to: CGPoint(x: -8.61, y: 0.84), controlPoint1: CGPoint(x: -3.21, y: -6.42), controlPoint2: CGPoint(x: -7.43, y: -3.77))
        bezier4Path.addCurve(to: CGPoint(x: -10.1, y: 6.11), controlPoint1: CGPoint(x: -9.06, y: 2.6), controlPoint2: CGPoint(x: -9.56, y: 4.38))
        bezier4Path.addCurve(to: CGPoint(x: -10.23, y: 11.55), controlPoint1: CGPoint(x: -10.67, y: 7.93), controlPoint2: CGPoint(x: -10.68, y: 9.83))
        bezier4Path.addCurve(to: CGPoint(x: -5.51, y: 17.23), controlPoint1: CGPoint(x: -9.56, y: 14.1), controlPoint2: CGPoint(x: -7.87, y: 16.26))
        bezier4Path.addCurve(to: CGPoint(x: 4.21, y: 11.98), controlPoint1: CGPoint(x: -1.56, y: 18.85), controlPoint2: CGPoint(x: 2.79, y: 16.5))
        bezier4Path.addCurve(to: CGPoint(x: 5.99, y: 5.71), controlPoint1: CGPoint(x: 4.86, y: 9.92), controlPoint2: CGPoint(x: 5.45, y: 7.81))
        bezier4Path.addCurve(to: CGPoint(x: 0.82, y: -5.08), controlPoint1: CGPoint(x: 7.16, y: 1.1), controlPoint2: CGPoint(x: 4.85, y: -3.73))
        bezier4Path.close()
        baseColor.setFill()
        bezier4Path.fill()

        context.restoreGState()


        //// Bezier 5 Drawing
        context.saveGState()
        context.translateBy(x: 147.75, y: 179.95)
        context.rotate(by: -131.72 * CGFloat.pi/180)

        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 0.82, y: -5.08))
        bezier5Path.addCurve(to: CGPoint(x: -8.61, y: 0.84), controlPoint1: CGPoint(x: -3.21, y: -6.42), controlPoint2: CGPoint(x: -7.43, y: -3.77))
        bezier5Path.addCurve(to: CGPoint(x: -10.1, y: 6.11), controlPoint1: CGPoint(x: -9.06, y: 2.6), controlPoint2: CGPoint(x: -9.56, y: 4.38))
        bezier5Path.addCurve(to: CGPoint(x: -10.23, y: 11.55), controlPoint1: CGPoint(x: -10.67, y: 7.93), controlPoint2: CGPoint(x: -10.68, y: 9.83))
        bezier5Path.addCurve(to: CGPoint(x: -5.51, y: 17.23), controlPoint1: CGPoint(x: -9.56, y: 14.1), controlPoint2: CGPoint(x: -7.87, y: 16.26))
        bezier5Path.addCurve(to: CGPoint(x: 4.21, y: 11.98), controlPoint1: CGPoint(x: -1.56, y: 18.85), controlPoint2: CGPoint(x: 2.79, y: 16.5))
        bezier5Path.addCurve(to: CGPoint(x: 5.99, y: 5.71), controlPoint1: CGPoint(x: 4.86, y: 9.92), controlPoint2: CGPoint(x: 5.45, y: 7.81))
        bezier5Path.addCurve(to: CGPoint(x: 0.82, y: -5.08), controlPoint1: CGPoint(x: 7.16, y: 1.1), controlPoint2: CGPoint(x: 4.85, y: -3.73))
        bezier5Path.close()
        baseColor.setFill()
        bezier5Path.fill()

        context.restoreGState()


        //// Bezier 6 Drawing
        context.saveGState()
        context.translateBy(x: 177.6, y: 157.81)
        context.rotate(by: 23.5 * CGFloat.pi/180)

        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 2.95, y: -11.23))
        bezier6Path.addCurve(to: CGPoint(x: -6.48, y: -5.32), controlPoint1: CGPoint(x: -1.08, y: -12.58), controlPoint2: CGPoint(x: -5.3, y: -9.93))
        bezier6Path.addCurve(to: CGPoint(x: -7.98, y: -0.05), controlPoint1: CGPoint(x: -6.93, y: -3.55), controlPoint2: CGPoint(x: -7.43, y: -1.78))
        bezier6Path.addCurve(to: CGPoint(x: -8.1, y: 5.39), controlPoint1: CGPoint(x: -8.54, y: 1.77), controlPoint2: CGPoint(x: -8.56, y: 3.67))
        bezier6Path.addCurve(to: CGPoint(x: -3.39, y: 11.07), controlPoint1: CGPoint(x: -7.43, y: 7.94), controlPoint2: CGPoint(x: -5.74, y: 10.11))
        bezier6Path.addCurve(to: CGPoint(x: 6.34, y: 5.82), controlPoint1: CGPoint(x: 0.57, y: 12.69), controlPoint2: CGPoint(x: 4.92, y: 10.34))
        bezier6Path.addCurve(to: CGPoint(x: 8.12, y: -0.45), controlPoint1: CGPoint(x: 6.98, y: 3.76), controlPoint2: CGPoint(x: 7.58, y: 1.65))
        bezier6Path.addCurve(to: CGPoint(x: 2.95, y: -11.23), controlPoint1: CGPoint(x: 9.29, y: -5.06), controlPoint2: CGPoint(x: 6.98, y: -9.89))
        bezier6Path.close()
        baseColor.setFill()
        bezier6Path.fill()

        context.restoreGState()


        //// Bezier 8 Drawing
        context.saveGState()
        context.translateBy(x: 192.73, y: 131.78)
        context.rotate(by: -178.28 * CGFloat.pi/180)

        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: 2.95, y: -11.23))
        bezier8Path.addCurve(to: CGPoint(x: -6.48, y: -5.32), controlPoint1: CGPoint(x: -1.08, y: -12.58), controlPoint2: CGPoint(x: -5.3, y: -9.93))
        bezier8Path.addCurve(to: CGPoint(x: -7.98, y: -0.05), controlPoint1: CGPoint(x: -6.93, y: -3.55), controlPoint2: CGPoint(x: -7.43, y: -1.78))
        bezier8Path.addCurve(to: CGPoint(x: -8.1, y: 5.39), controlPoint1: CGPoint(x: -8.54, y: 1.77), controlPoint2: CGPoint(x: -8.56, y: 3.67))
        bezier8Path.addCurve(to: CGPoint(x: -3.39, y: 11.07), controlPoint1: CGPoint(x: -7.43, y: 7.94), controlPoint2: CGPoint(x: -5.74, y: 10.11))
        bezier8Path.addCurve(to: CGPoint(x: 6.34, y: 5.82), controlPoint1: CGPoint(x: 0.57, y: 12.69), controlPoint2: CGPoint(x: 4.92, y: 10.34))
        bezier8Path.addCurve(to: CGPoint(x: 8.12, y: -0.45), controlPoint1: CGPoint(x: 6.98, y: 3.76), controlPoint2: CGPoint(x: 7.58, y: 1.65))
        bezier8Path.addCurve(to: CGPoint(x: 2.95, y: -11.23), controlPoint1: CGPoint(x: 9.29, y: -5.06), controlPoint2: CGPoint(x: 6.98, y: -9.89))
        bezier8Path.close()
        baseColor.setFill()
        bezier8Path.fill()

        context.restoreGState()


        //// Text 2 Drawing
        let text2Rect = CGRect(x: 99, y: 100, width: 52, height: 44)
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .center
        let text2FontAttributes = [
            .font: UIFont(name: "SFProDisplay-Bold", size: 40)!,
            .foregroundColor: baseColor,
            .paragraphStyle: text2Style,
        ] as [NSAttributedStringKey: Any]

        let text2TextHeight: CGFloat = shootingSecsText.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        shootingSecsText.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(RelojLigaComponentsResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
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
