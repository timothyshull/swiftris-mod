Modify it so it has button controls rather than just swipe controls
iOS client for the game server
#Swiftris
##First steps
- Set-up the project, choose Swift, SpriteKit and git, under the general project info>deployment info choose your desired orientations.
- Remove the default sks file and the icons in Images.xcassets
- GameScene.swift is what sets up the view, and SpriteKit uses view, the didMoveToView function sets up the initial view, CGPoints set the x,y location, touchBegan describes what to do when touches happen
- Remove the defualt override functions from GameScene.swift and GameViewController.swift
- Add resource files as needed by dragging and dropping onto project navigator and selecting copy items if needed
###.sks files
- Using IB and more static files like xib, nib and storyboard, you can either do all of the setup in code or IB. An sks file (spritekit) gives you the same choice, but it is generally better to use the spritekit editor in Xcode to build the static content and add dynamic behavior in code. 
##Setting up the GameScene
1. You need any images in the supporting files and you can reference them by creating an SKSpriteKitNode(imageNamed: "image")
2. use let for const or unchangeable images
3. SpriteKit uses OpenGL so the origin (0, 0) is the bottom left corner, use anchorPoint to set the top left corner
4. In the GameViewController, configure the view as SKView and set up the scene using GameScene (use var scene: GameScene! at the top to establish it as a variable)
5. use skView.presentScene to establish the scene
##Setting up new classes
1. File>New>File... Swift File, name of class
###Classes vs Structs
1. Both can:
    - Define properties to store values
    - Define methods to provide functionality
    - Define subscripts to provide access to their values using subscript syntax
    - Define initializers to set up their initial state
    - Be extended to expand their functionality beyond a default implementation
    - Conform to protocols to provide standard functionality of a certain kind
2. Classes add the additional capabilities
    - Inheritance enables one class to inherit the characteristics of another.
    - Type casting enables you to check and interpret the type of a class instance at runtime.
    - Deinitializers enable an instance of a class to free up any resources it has assigned.
    - Reference counting allows more than one reference to a class instance.

            struct Resolution {
                var width = 0
                var height = 0
            }
            class VideoMode {
                var resolution = Resolution()
                var interlaced = false
                var frameRate = 0.0
                var name: String?
            }

3. Initialization is defined using the init() function
4. Use let to create instances
5. Use . operator to access proeprties
6. Structs have an auto-generated memberwise intiializer

        let vga = Resolution(width: 640, height: 480)

7. Structs and enums are value types, ie passed by value or copied when it is assigned to a variable or constant
8. Classes are reference types, i.e. when passed an reference to the actual object is used
9. Swift uses the identity operator (=== & !==) for testing if objects are identical
10. Reference types (classes) are like pointers but you do not need to use the * operator for referencing and dereferencing
11. Use structs for:
    - The structure’s primary purpose is to encapsulate a few relatively simple data values.
    - It is reasonable to expect that the encapsulated values will be copied rather than referenced when you assign or pass around an instance of that structure.
    - Any properties stored by the structure are themselves value types, which would also be expected to be copied rather than referenced.
    - The structure does not need to inherit properties or behavior from another existing type.
###Templating
1. Swift class definitions allow templating (like C++)
2. Use the <T> for a typed parameter
3. Use the <T?> for an optional parameter of the type
###fps
- Smooth running games use frame rates of about 60 fps and look faster, and slower games run around 24 fps
- A class extedning SKScene inherits the update(currentTime: CFTimeInterval) function which sets the frame rate. 
- Motion blur can slightly improve the appearance of slower fps games
###closures
- Swift uses closures, tick:(() -> ())? means that it takes no parameters and returns no parameters (similar to a block in Obj-C and lambdas elsewhere)
- One of three forms 
    - Global functions are closures that have a name and do not capture any values.
    - Nested functions are closures that have a name and can capture values from their enclosing function.
    - Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
- Syntax

            { (parameters) -> return type in
                statements
            }

- Can use named functions as callbacks, can use constant params, variable params, and inout params

