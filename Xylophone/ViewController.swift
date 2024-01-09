import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.3
        playSound(soundName:sender.currentTitle)
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(10), execute: {
            sender.alpha = 1
        })
    }
    
    func playSound(soundName : String?) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")//Bundle.main.path is used for locating our audio file
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
