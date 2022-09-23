import Cocoa

class PreferenceWindowController: NSWindowController {
    class func loadFromNib() -> PreferenceWindowController { //Load Pref Gui
        let vc = NSStoryboard(name: "Preferences", bundle: nil).instantiateController(withIdentifier: "PreferenceWindowController") as! PreferenceWindowController
        return vc
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }

}
