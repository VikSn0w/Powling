//
//  TrainingModeView.swift
//  Powling
//
//  Created by vit.pic on 03/04/23.
//

import SwiftUI

struct TrainingModeView: View {
    @State var test: Bool

    var body: some View {
        ZStack(alignment: .center){
            Background()
            VStack(spacing: 150){
                Spacer()
                TrainingModeTitle()
                ZStack (alignment: .bottom){
                    VStack(spacing: 50) {
                        NavigationLink(destination: ClassicModeView()) {
                            TrainingMode_1()
                        }
                        
                        NavigationLink(destination: PlaceholderView()) {
                            TrainingMode_2()
                        }
                        
                        SpacerPrinter(howManySpacers: 6)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
    }
}


//struct TrainingModeView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrainingModeView()
//    }
//}


