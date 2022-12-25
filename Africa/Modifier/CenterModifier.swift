//
//  CenterModifier.swift
//  Africa
//
//  Created by Sergei Shekshuev on 25.12.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
