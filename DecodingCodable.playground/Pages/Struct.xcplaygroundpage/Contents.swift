//: [Previous](@previous)

import Foundation

struct Person: Codable {
  let name: String
  let age: Int
  let favouriteColour: String
}

let julie = Person(name: "julie", age: 43, favouriteColour: "orange")

let encoder = JSONEncoder()
let jsonData = try! encoder.encode(julie)

String(bytes: jsonData, encoding: .utf8)

let decoder = JSONDecoder()
try! decoder.decode(Person.self, from: jsonData)


//: [Next](@next)
