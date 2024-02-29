//
//  MathOperators.swift
//
//  Created by Jessah
//  Created on 2024-02-28
//  Version 1.0
//  Copyright (c) 2024 Jessah. All rights reserved.
//
//  Using math operators in swift.

// Import for power.
import Foundation

let speedOfLight = 299792458

// creates custom errors
enum InputError: Error {
  // invalid input error
  case invalidInput
}
func userInput() throws -> Double {
  // 
  print("Enter a mass: ")
  guard let input = readLine(), let userMass = Double(input) else {
    throw InputError.invalidInput
  }
  return userMass
}

do {
  // calls function to get user input and 'tries' it
  let userMass = try userInput()

  if (userMass > 0){
    let energy = userMass * pow(Double(speedOfLight), 2)
    print("The the energy of the mass is \(round(energy * 1000)/1000)")

  } else {
    print("Energy cannot be negative")
  }

  // if user imputed invalid input
} catch InputError.invalidInput {
  print("Invalid input, please enter a number.")
}
