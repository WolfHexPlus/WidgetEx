import Cocoa

var wincont : NSWindowController?
var statusItem: NSStatusItem?
var windowController: PreferenceWindowController?

func dialogOKCancel(question: String, text: String) -> Bool { //Alert Before quit
    let close = NSAlert()
    close.messageText = question
    close.informativeText = text
    close.alertStyle = .warning
    close.addButton(withTitle: "OK")
    close.addButton(withTitle: "Cancel")
    return close.runModal() == .alertFirstButtonReturn
}

@main
class AppDelegate: NSObject, NSApplicationDelegate { //TopBar Icon
    let shown = false;
    @objc func statusBarButtonClicked(_ sender: NSStatusBarButton) {
        let event = NSApp.currentEvent!
        if event.type == NSEvent.EventType.leftMouseUp {
            let answer = dialogOKCancel(question: "Quit From WidgetEx", text: "")
            if answer == true
            {
                exit(0)
            }
        }
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        let itemImage = NSImage(named: "NSStopProgressTemplate")
        itemImage?.isTemplate = true
        statusItem?.button?.image = itemImage
        statusItem?.action = #selector(self.statusBarButtonClicked(_:))
        statusItem?.sendAction(on: [.leftMouseUp, .rightMouseUp])
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApp.setActivationPolicy(.accessory)
    }

    func applicationWillTerminate(_ aNotification: Notification) { //Alert Before quit
        let answer = dialogOKCancel(question: "Quit From WidgetEx", text: "")
        if answer == true
        {
            exit(0)
        }
    }
      

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    
    @IBAction func showPreference(_ sender: Any) { //Pref GUI
        if (windowController == nil)
        {
            windowController = PreferenceWindowController.loadFromNib()
        }
        windowController?.showWindow(self)
    }
    

}

