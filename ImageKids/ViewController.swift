//
//  ViewController.swift
//  ImageKids
//
//  Created by Huy Dinh on 01/06/2022.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var animalPicture: NSImageView!
    
    override func viewDidAppear() {
        let presOptions: NSApplication.PresentationOptions = ([.fullScreen,.autoHideMenuBar, .disableAppleMenu, ])
        let optionsDictionary = [NSView.FullScreenModeOptionKey.fullScreenModeApplicationPresentationOptions :
                NSNumber(value: presOptions.rawValue)]
        self.view.enterFullScreenMode(NSScreen.main!, withOptions:optionsDictionary)
            self.view.wantsLayer = true
            }
    
//    self.window?.toggleFullScreen(true)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSEvent.addLocalMonitorForEvents(matching: .keyDown) {
                    self.keyDown(with: $0)
                    return $0
                }

//        let rect = CGRect(x: animalPicture.frame.origin.x,
//                          y: animalPicture.frame.origin.y,
//                          width: 600, height: 1000)
//        // Do any additional setup after loading the view.
        animalPicture.frame = NSRect(x: self.view.frame.minX,
                                     y: self.view.frame.minY,
                                     width: self.view.frame.width,
                                     height: self.view.frame.height)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func RotateImage(_ sender: Any) {
        animalPicture.image = NSImage(named:  NSImage.Name("cat"))
    }
    
    override func keyDown(with event: NSEvent) {
        guard let characters = event.characters else {
            return
        }
        //Do something based on keyboard input
        
//        animalPicture.image = NSImage(named:  NSImage.Name("cat"))
//
//        switch event.modifierFlags.intersection(.deviceIndependentFlagsMask) {
//                case [.command] where event.characters == "l",
//                     [.command, .shift] where event.characters == "l":
//                    print("command-l or command-shift-l")
//                default:
//                    break
//                }
        var name: String = "tiger"
        switch event.characters {
        case "a":
            name = "ant"
        case "b":
            name = "bear"
            
        case "c":
            name = "cat"
        case "d":
            name = "dog"
        case "f":
            name = "frog"
        case "g":
            name = "goose"
        case "h":
            name = "horse"
        case "i":
            name = "iguana"
        case "j":
            name = "jaguar"
        case "k":
            name = "kangaroo"
        case "l":
            name = "lion"
        case "m":
            name = "monkey"
        case "n":
            name = "nightjar"
        case "o":
            name = "owl"
        case "p":
            name = "panda"
        case "q":
            name = "quail"
        case "r":
            name = "rat"
        case "s":
            name = "snake"
        case "t":
            name = "tiger"
        case "u":
            name = "unicor"
        case "v":
            name = "vole"
        case "w":
            name = "whale"
            
        default:
            break
        }
        animalPicture.image = NSImage(named:  NSImage.Name(name))
        
//                textField.stringValue = "key = " + (event.charactersIgnoringModifiers
//                    ?? "")
//                textField.stringValue += "\ncharacter = " + (event.characters ?? "")
    }
    
    override func flagsChanged(with event: NSEvent) {
            switch event.modifierFlags.intersection(.deviceIndependentFlagsMask) {
            case [.shift]:
                print("shift key is pressed")
            case [.control]:
                print("control key is pressed")
            case [.option] :
                print("option key is pressed")
            case [.command]:
                print("Command key is pressed")
            case [.control, .shift]:
                print("control-shift keys are pressed")
            case [.option, .shift]:
                print("option-shift keys are pressed")
            case [.command, .shift]:
                print("command-shift keys are pressed")
            case [.control, .option]:
                print("control-option keys are pressed")
            case [.control, .command]:
                print("control-command keys are pressed")
            case [.option, .command]:
                print("option-command keys are pressed")
            case [.shift, .control, .option]:
                print("shift-control-option keys are pressed")
            case [.shift, .control, .command]:
                print("shift-control-command keys are pressed")
            case [.control, .option, .command]:
                print("control-option-command keys are pressed")
            case [.shift, .command, .option]:
                print("shift-command-option keys are pressed")
            case [.shift, .control, .option, .command]:
                print("shift-control-option-command keys are pressed")
            default:
                print("no modifier keys are pressed")
            }
        }
}

