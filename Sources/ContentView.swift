import SwiftUI

struct ContentView: View {
    @State private var offset: CGSize = .zero

    var body: some View {
        ZStack {
            Color.clear
            Circle()
                .fill(.blue.gradient)
                .frame(width: 110, height: 110)
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                )
        }
        .overlay(alignment: .bottom) {
            Text("拖动圆形")
                .foregroundStyle(.secondary)
                .padding()
        }
        .padding()
    }
}
