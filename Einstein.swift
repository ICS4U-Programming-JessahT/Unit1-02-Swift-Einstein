//
//  Einstein.swift
//
//  Created by Jessah
//  Created on 2024-02-28
//  Version 1.0
//  Copyright (c) 2024 Jessah. All rights reserved.
//
//  Uses Einstein's formula to calculate mass.'

// Import for power.
import Foundation

let speedOfLight = 299792458

// creates custom errors
enum InputError: Error {
  // invalid input error
  case invalidInput
}

do {
  // Get user input
  print("Enter a mass: ")
  guard let input = readLine(), let userMass = Double(input) else {
    throw InputError.invalidInput
  }

  // User input above 0
  if (userMass > 0){
    let energy = userMass * pow(Double(speedOfLight), 2)
    print("The the energy of the mass is \(round(energy * 1000)/1000)")

  } else {
    // User input below 1
    print("Energy cannot be negative")
  }

  // if user enters a string
} catch InputError.invalidInput {
  print("Invalid input, please enter a number.")
}
