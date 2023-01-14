//
//  ContentView.swift
//  weSplit
//
//  Created by Gloria Villa on 12/31/22.
//

import SwiftUI
// command r to build
// command shift k   to get keyboard
// command [   to push everything in one select text then do the command
//  how do I keep track of parens

struct ContentView: View {
    @State private var name = ""
    @State private var emotions = ["happy", "sad"]
    @State private var selectedEmotion = "happy"
    
    
    
    let emotionQuotes = [
            "sad":
                [
                    "Don\'t focus on the pain, focus on the progress.",
                    "Nothing is impossible. The word itself says \'I\'m possible!'",
                    "Success is not final, failure is not fatal: it is the courage to continue that counts."
                ],
            "happy":
                [
                    "There is nothing impossible to they who will try.","When you have a dream, you've got to grab it and never let go."]
    ]
    
    let count = emotionQuotes["\($selectedEmotion)"]
    
//    var totalPerPerson: Double {
//        let peopleCount = Double(numberOfPeople + 2)
//        let tipSelection = Double(tipPercentage)
//
////        let tipValue = checkAmount / 100 * tipSelection
//        let grandTotal = checkAmount + tipValue
//        let amountPerPerson = grandTotal / peopleCount
//
//        return amountPerPerson
//    }
//
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    // https://developer.apple.com/documentation/swiftui/textfield
                    TextField(
                        "Your first name",
                        text: $name
                    )
                    /*             https://www.hackingwithswift.com/forums/swiftui/passing-picker-value-to-a-foreach-view-change-number-of-rectangles/9330
                     */
//                    Picker("How are you Feeling?", selection: $selectedEmotion) {
//                        ForEach(0..<emotion.count, id:\.self) {
//                            Text("\($0)")
//                        }
//                    }
                    
                    Picker("How are you Feeling?", selection: $selectedEmotion) {
                        ForEach(emotions, id:\.self) { emotion in
                            Text(emotion)
                        }
                    }
                    
//                    if let emotionQuote =  emotionQuotes[selectedEmotion][0];
//                                  Text("\(emotionQuote)");
                }
                
            }
            .navigationTitle("Motivational Quotes")
        }
    }
    

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

// Cannot use instance member 'emotionQuotes' within property initializer; property initializers run before 'self' is available
