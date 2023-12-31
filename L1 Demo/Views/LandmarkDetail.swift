//
//  LandmarkDetail.swift
//  L1 Demo
//
//  Created by Kỳ Nguyên Đại on R 5/08/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }.padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
