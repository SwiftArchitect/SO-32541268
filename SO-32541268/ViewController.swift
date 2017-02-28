//
//  ViewController.swift
//  SO-32541268
//
//  Copyright (c) 2017 Xavier Schott
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let world = "World"

        // Invoke C
        helloWorld_c();
        hello_c(world.cString(using: String.Encoding.utf8)!)
        
        // Can't Invoke C++ without a wrapper
        // CPP().helloWorld_cpp()
        // CPP().hello_cpp(world.cStringUsingEncoding(NSUTF8StringEncoding)!)
        // Invoke C++ through Objective-C
        CPP_Wrapper().helloWorld_cpp_wrapped()
        CPP_Wrapper().hello_cpp_wrapped(world)
        
        // Invoke Objective-C
        Objective_C().helloWorld_objectiveC()
        Objective_C().hello_objectiveC(world)
        
        // Invoke Objective-C++
        Objective_CPP().helloWorld_objectiveCpp()
        Objective_CPP().hello_objectiveCpp(world)
        
        // Invoke Swift
        Swift().helloWorld_swift()
        Swift().hello_swift(world)
    }
}

