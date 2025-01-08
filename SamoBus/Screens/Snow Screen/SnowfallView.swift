//
//  SnowfallView.swift
//  SamoBus
//
//  Created by Mihael Koic on 06.01.2025..
//

import SwiftUI

struct SnowfallView: View {
    @State private var snowflakes = [Snowflake]()
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(snowflakes) { snowflake in
                    Circle()
                        .fill(Color.white.opacity(snowflake.opacity))
                        .frame(width: snowflake.size, height: snowflake.size)
                        .position(x: snowflake.x, y: snowflake.y)
                }
            }
            .onAppear {
                createInitialSnowflakes(in: geometry.size)
            }
            .onReceive(timer) { _ in
                updateSnowfall(in: geometry.size)
            }
        }
        .background(Color.clear) // Ensure background remains clear
    }
    
    func createInitialSnowflakes(in size: CGSize) {
        for _ in 0..<10 { // Smanjen broj početnih pahuljica
            let snowflake = Snowflake(
                x: CGFloat.random(in: 0...size.width),
                y: CGFloat.random(in: 0...size.height),
                size: CGFloat.random(in: 2...6),
                opacity: Double.random(in: 0.3...1.0)
            )
            snowflakes.append(snowflake)
        }
    }
    
    func updateSnowfall(in size: CGSize) {
        for index in snowflakes.indices {
            snowflakes[index].y += CGFloat.random(in: 2...5)
            if snowflakes[index].y > size.height {
                snowflakes[index].y = -10
                snowflakes[index].x = CGFloat.random(in: 0...size.width)
            }
        }
        if snowflakes.count < 200 { // Smanjen maksimalni broj pahuljica
            let newSnowflake = Snowflake(
                x: CGFloat.random(in: 0...size.width),
                y: -10,
                size: CGFloat.random(in: 2...6),
                opacity: Double.random(in: 0.3...1.0)
            )
            snowflakes.append(newSnowflake)
        }
    }
}

struct Snowflake: Identifiable {
    let id = UUID()
    var x: CGFloat
    var y: CGFloat
    var size: CGFloat
    var opacity: Double
}

#Preview {
    SnowfallView()
}
