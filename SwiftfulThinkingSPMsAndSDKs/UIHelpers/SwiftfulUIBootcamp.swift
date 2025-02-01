//
//  SwiftfulUIBootcamp.swift
//  SwiftfulThinkingSPMsAndSDKs
//
//  Created by Michael on 2/1/25.
//

import SwiftUI
import SwiftfulUI


struct SwiftfulUIBootcamp: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .frame(maxWidth: .infinity)
                .padding(.vertical)
//                .withBackgroundAndBorder(
//                    backgroundColor: .blue,
//                    borderColor: .white,
//                    borderWidth: 2,
//                    cornerRadius: 32)
                .withGradientBackgroundAnimatable(isActive: isActive, activeGradient: LinearGradient(colors: [Color.red, .blue], startPoint: .leading, endPoint: .trailing), defaultGradient: LinearGradient(colors: [Color.green, .orange], startPoint: .leading, endPoint: .trailing), cornerRadius: 10)
                .onTapGesture {
                    withAnimation {
                        isActive.toggle()
                    }
                }
        }
        .padding()
    }
}

struct SomeItem: Identifiable {
    let id = UUID().uuidString
    let color = Color.red
}

struct SwiftfulUIBootcamp2: View {
    
    @State private var isActive: Bool = false
    @State private var items: [SomeItem] = [SomeItem(), SomeItem(), SomeItem(), SomeItem(), SomeItem()]
    @State private var selectedIndex: Int = 1
    
    func getSomeData() async throws -> String {
            try? await Task.sleep(nanoseconds: 2_000_000_000)
            return "Some string message🧑🏻‍💻"
        }
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Rectangle()
                        .fill(Color.green)
                        .overlay(
                            ZStack {
                                if #available(iOS 15.0, *) {
                                    AsyncImage(url: URL(string: "https://picsum.photos/800/800"))
                                }
                            }
    //                        Image(systemName: "heart.fill")
    //                            .resizable()
    //                            .scaledToFill()
    //                            .padding(100)
                        )
                        .asStretchyHeader(startingHeight: 250)
                }
            }
        }
        
//        AsyncViewBuilder {
//            try await getSomeData()
//        } content: { phase in
//            switch phase {
//            case .loading:
//                ProgressView()
//            case .success(let newData):
//                Text(newData)
//            case .failure:
//                Text("Error")
//            }
//        }
        
//        AsyncViewBuilder {
//            try await getSomeData()
//        } content: { phase in
//            switch phase {
//            case .loading:
//                ProgressView()
//            case .success(let newData):
//                Text(newData)
//            case .failure:
//                Text("Error")
//            }
//        }
//        .padding()
        
//        .onNotificationRecieved(name: UIApplication.willEnterForegroundNotification) { notification in
//                                
//        }
//        .onFirstAppear {
//            
//        }
//        .onFirstDisappear {
//            
//        }
        
//        AsyncButton {
//            try? await Task.sleep(nanoseconds: 2_000_000_000)
//        } label: { isPerformingAction in
//            ZStack {
//                if isPerformingAction {
//                    ProgressView()
//                }
//                
//                Text("Hello, world!")
//                    .opacity(isPerformingAction ? 0 : 1)
//            }
//        }
        
//        LazyZStack(allowSimultaneous: true, selection: selectedIndex, items: 0..<4) { (value: Int) in
//                    // View
//                    Rectangle()
//                        .fill(
//                            value == 1 ? Color.red :
//                            value == 2 ? Color.blue :
//                            value == 3 ? Color.orange :
//                            Color.yellow
//                        )
//                        .overlay(
//                            Text("\(value)")
//                        )
//                        .transition(AnyTransition.scale.animation(.easeInOut))
//                }
//                .animation(.easeIn, value: selectedIndex)
//                .onTapGesture {
//                    selectedIndex += 1
//                }
        
//        NonLazyVGrid(columns: 3, alignment: .leading, spacing: 16, items: items) { item in
//            if let item {
//                item.color
//                    .frame(height: 50)
//                    .frame(width: item.id == items.first?.id ? 50 : nil)
//            }
//        }
        
//        CustomProgressBar(
//            selection: 25,
//            range: 0...100,
//            backgroundColor: .gray.opacity(0.5),
//            foregroundColor: .blue,
//            cornerRadius: 10,
//            height: 8
//        )
//        Image(systemName: "heart.fill")
//            .redacted(if: isActive, style: .placeholder)
//                .redacted(reason: .placeholder)
//        .padding(40)
        
//        Text("Hello, world")
//            .padding()
//            .withGradientBackgroundAnimatable(isActive: isActive, activeGradient: LinearGradient(colors: [Color.red, .blue], startPoint: .leading, endPoint: .trailing), defaultGradient: LinearGradient(colors: [Color.green, .orange], startPoint: .leading, endPoint: .trailing), cornerRadius: 10)
////            .asButton(.press) {
////                withAnimation {
////                    isActive.toggle()
////                }
////            }
//        .withDragGesture(
//            [.horizontal, .vertical],
//            minimumDistance: 0,
//            resets: true,
//            animation: .default,
//            rotationMultiplier: 1.1,
//            scaleMultiplier: 2,
//            onChanged: { dragOffset in
//                
//            },
//            onEnded: { dragOffset in
//                
//            })
//        
//        .readingLocation(onChange: { location in
//            
//        })
//        .readingFrame { frame in
//            
//        }
//        .padding()
    }
}

#Preview {
    Group {
//        SwiftfulUIBootcamp()
        SwiftfulUIBootcamp2()
    }
    .preferredColorScheme(.light)
}
