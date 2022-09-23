import Cocoa

var RD = 255 //RED
var GR = 255 //GREEN
var BL = 255 //BLUE
var rTAg = 0.5 //ALPHA

class ViewController: NSViewController {
    @IBOutlet weak var clock: NSTextField!
    
    let dateFormatter = DateFormatter()

    override func viewWillAppear() { //Window Styles
        super.viewWillAppear()
        view.window?.isOpaque = false
        view.window?.backgroundColor = NSColor(red: 1, green: 0.5, blue: 0.5, alpha: -1)
        view.window?.center()
        view.window?.isMovableByWindowBackground = true
        view.window?.level = NSWindow.Level(rawValue: NSWindow.Level.normal.rawValue - 1)
        view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWillAppear()
        dateFormatter.timeStyle = .long
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateX), userInfo: nil, repeats:true); //Creates a schedule to call UpdateX
    }
    
    @objc func UpdateX() -> Void {
        clock.stringValue = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short) //Gets date
        clock.textColor = NSColor(red: CGFloat(RD), green: CGFloat(GR), blue: CGFloat(BL), alpha: CGFloat(rTAg)) //Changes color
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

