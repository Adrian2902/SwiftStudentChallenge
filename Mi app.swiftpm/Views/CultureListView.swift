//
//  CultureListView.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import SwiftUI

// MARK: - List of Cultures View
struct CultureListView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Japan", destination: CultureViewFactory.createView(for:             CultureViewFactory.japan))
                
                NavigationLink("Mexico", destination: CultureViewFactory.createView(for: CultureViewFactory.mexico))
                
                NavigationLink("France", destination: CultureViewFactory.createView(for: CultureViewFactory.france))
                
                NavigationLink("India", destination: CultureViewFactory.createView(for: CultureViewFactory.india))
                
                NavigationLink("Italy", destination: CultureViewFactory.createView(for: CultureViewFactory.italy))
                
                NavigationLink("China", destination: CultureViewFactory.createView(for: CultureViewFactory.china))
                
                NavigationLink("Brazil", destination: CultureViewFactory.createView(for: CultureViewFactory.brazil))
                
                NavigationLink("Egypt", destination: CultureViewFactory.createView(for: CultureViewFactory.egypt))
                
                NavigationLink("Germany", destination: CultureViewFactory.createView(for: CultureViewFactory.germany))
                
                NavigationLink("Russia", destination: CultureViewFactory.createView(for: CultureViewFactory.russia))
            }
        }
        .navigationTitle("Select a Culture")
    }
}

