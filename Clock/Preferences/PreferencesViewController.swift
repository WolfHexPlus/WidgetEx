import Cocoa

class PreferencesViewController: NSViewController {
    @IBOutlet weak var alpha: NSTextField!
    @IBOutlet weak var close: NSButton!
    @IBOutlet weak var save: NSButton!
    @IBOutlet weak var red: NSTextField!
    @IBOutlet weak var green: NSTextField!
    @IBOutlet weak var blue: NSTextField!
    
    @IBAction func save(_ sender: Any) { //This makes alpha choose easier
        if (alpha.doubleValue == 1)
        {
            rTAg = 0.1
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        if (alpha.doubleValue == 2)
        {
            rTAg = 0.2
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 3)
        {
            rTAg = 0.3
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 4)
        {
            rTAg = 0.4
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 5)
        {
            rTAg = 0.5
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 6)
        {
            rTAg = 0.6 
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 7)
        {
            rTAg = 0.7
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 8)
        {
            rTAg = 0.8
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 9)
        {
            rTAg = 0.9
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
        else if (alpha.doubleValue == 10)
        {
            rTAg = 1
            RD = Int(red.intValue)
            GR = Int(green.intValue)
            BL = Int(blue.intValue)
        }
    }

    @IBAction func close(_ sender: Any) { //Close Button
        self.view.window?.close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
