//
//  ContentView.swift
//  RecipeApp
//
//  Created by Luan Nguyen on 17/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @StateObject var manager = RecipeManager()
    @Namespace private var viewSpace

    // MARK: - BODY
    var body: some View {
        ZStack {
            if manager.currentRecipeIndex % 2 == 0 {
                Color.lightBackground
                    .ignoresSafeArea()
                    .transition(.move(edge: .bottom))
            } else {
                Color.darkBackground
                    .ignoresSafeArea()
                    .transition(.move(edge: .bottom))
            }

            RecipeOverview(manager: manager, viewSpace: viewSpace)
                .padding(.horizontal)
            
            //: RECIPE DETAIL NEXT
            if manager.selectedRecipe != nil {
                RecipeDetailView(manager: manager, viewSpace: viewSpace)
            }
        } //: ZSTACK
    }
}

// MARK: - DRAW CIRCLE
extension CGPoint {
    static func pointOnCircle(center: CGPoint, radius: CGFloat, angle: CGFloat) -> CGPoint {
        let x = center.x + radius * cos(angle)
        let y = center.y + radius * sin(angle)
        return CGPoint(x: x, y: y)
    }
}

// MARK: - BACKGROUND COLOR
extension Color {
    static let lightBackground = Color.init(red: 243/255, green: 243/255, blue: 243/255)
    static let darkBackground = Color.init(red: 34/255, green: 51/255, blue: 68/255)
}

// MARK: - CHECK UI SCREEN
extension UIScreen {
   static let screenWidth   = UIScreen.main.bounds.size.width
   static let screenHeight  = UIScreen.main.bounds.size.height
   static let screenSize    = UIScreen.main.bounds.size
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
