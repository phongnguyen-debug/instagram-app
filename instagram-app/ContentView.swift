//
//  ContentView.swift
//  instagram-app
//
//  Created by Pham Thi Thu Ha on 01/07/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                Divider()
                
                Post(image: "profile", description: "I miss travalling to US")
                Post(image: "profile1", description: "I miss travalling to Japan")
                Post(image: "profile2", description: "I miss travalling to Japan")
                Post(image: "profile3", description: "I miss travalling to Japan")
                Post(image: "profile4", description: "I miss travalling to Japan")
                Post(image: "profile5", description: "I miss travalling to Japan")
                Post(image: "profile6", description: "I miss travalling to Japan")
                Post(image: "profile7", description: "I miss travalling to Japan")
            }
            TabBar()
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            HStack(spacing: 20.3) {
                Image("add")
                Image("mesenger")
                Image("heart")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Willie Yam"
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: UnitPoint.topLeading, endPoint: .bottomLeading))
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
        
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story(image: "profile1", name: "Willie Yam")
                Story(image: "profile2", name: "Willie Yam")
                Story(image: "profile3", name: "Willie Yam")
                Story(image: "profile4", name: "Willie Yam")
                Story(image: "profile5", name: "Willie Yam")
                Story(image: "profile6", name: "Willie Yam")
                Story(image: "profile7", name: "Willie Yam")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile1")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text("Wiliem am")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String = "profile1"
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            HStack {
                HStack(spacing: 10) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    var image: String = "profile2"
    var description: String = "I miss travelling to Japan"
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            PostContent(image: image)
            
            Text("Liked by Minhto and other")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            HStack {
                HStack(spacing: 7.0) {
                    Image("profile2")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    Text("Add comment ...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😀")
                    Text("🥰")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
        }
    }
}
