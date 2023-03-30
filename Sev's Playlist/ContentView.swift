//
//  ScrollView.swift
//  Sev's Playlist
//
//  Created by Jahaira Maxwell-Myers on 3/29/23.
//


import SwiftUI

struct MediaScroll: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                    .padding(.top)
                Text("Sevy’s turning 1- EP")
                    .font(.headline.weight(.semibold))
                    .padding(.top)
                Text("Mommy & Dad")
                    .font(.headline.weight(.regular))
                    .foregroundColor(.pink)
                    .padding(.top, 2)
                Text("Party• 2023• April 8th")
                    .font(.footnote.weight(.regular))
                    .foregroundColor(.secondary)
                    .padding(.top, 2)
                HStack(spacing: 20) {
                    HStack {
                        Image(systemName: "play.fill")
                        Text("Play")
                    }
                    .foregroundColor(.pink)
                    .font(.subheadline.weight(.semibold))
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.quaternarySystemFill))
                    }
                    HStack {
                        Image(systemName: "shuffle")
                        Text("Shuffle")
                    }
                    .foregroundColor(.pink)
                    .font(.subheadline.weight(.semibold))
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.quaternarySystemFill))
                    }
                }
                .padding()
                VStack(spacing: 0) {
                    ForEach(0..<5) { _ in  // Replace with your data model here
                        Divider()
                            .padding(.leading)
                            .opacity(0.5)
                        HStack(spacing: 0) {
                            Text("1")
                                .frame(width: 22, alignment: .leading)
                                .clipped()
                                .foregroundColor(.secondary)
                            Text("You’re invited to")
                            Spacer()
                            Image(systemName: "ellipsis")
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 14)
                        .font(.subheadline)
                        .padding(.leading, 8)
                    }
                    Divider()
                        .padding(.leading)
                        .opacity(0.5)
                }
                Text("April 6, 2022 5 pounds, 9 oz 2022 Baby of the year")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 98)
            .padding(.bottom, 150)
        }
        .overlay(alignment: .top) {
            VStack(spacing: 1) {
                HStack {
                    Spacer()
                    HStack(spacing: 5) {
                        
                    }
                    .frame(width: 109)
                    .clipped()
                    .font(.body.weight(.semibold))
                }
                .padding(.horizontal)
                .padding(.top, 5)
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 53)
                .clipped()
                HStack(spacing: 0) {
                    Text("Sevyn’s 1st Birthday ")
                        .font(.headline)
                }
                .frame(height: 44)
                .clipped()
            }
            .frame(height: 98)
            .clipped()
            .background {
                Rectangle()
                    .fill(.clear)
                    .background(Material.bar)
            }
        }
        .overlay(alignment: .bottom) {
            VStack(spacing: 0) {
                Divider()
                HStack(spacing: 10) {
                    ForEach(0..<3) { _ in  // Replace with your data model here
                        VStack(spacing: 4) {
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                                .frame(height: 26)
                                .clipped()
                            Text("Listen Now")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        .foregroundColor(.secondary)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.top, 5)
            }
            .frame(height: 84, alignment: .top)
            .clipped()
            .background {
                Rectangle()
                    .fill(.clear)
                    .background(Material.bar)
            }
        }
    }
}

struct MediaScroll_Previews: PreviewProvider {
    static var previews: some View {
        MediaScroll()
    }
}
