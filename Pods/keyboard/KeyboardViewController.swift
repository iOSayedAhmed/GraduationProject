//
//  KeyboardViewController.swift
//  keyboard
//
//  Created by iOSayed on8/7/20.
//


import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
//
//    var images: [UIImage] = [
//        UIImage(named: "B")!,
//        UIImage(named: "C")!
//
//    ]
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aslBtn()
        // Perform custom UI setup here
//        self.nextKeyboardButton = UIButton(type: .system)
//
//        self.nextKeyboardButton.setTitle(NSLocalizedString("Return", comment: "Title for 'Next Keyboard' button"), for: [])
//        self.nextKeyboardButton.sizeToFit()
//        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
//
//        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
//
//        self.view.addSubview(self.nextKeyboardButton)
//
//        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
 
    }
    
    
    func aslBtn() {
        
        let clearBtn = UIButton(type: .system)
        clearBtn.setBackgroundImage(UIImage(named: "clear"), for: .normal)
        clearBtn.frame = CGRect(x: 362.5, y: 108, width: 45, height: 42)
        clearBtn.addTarget(self, action: #selector(KeyboardViewController.clearTap), for: .touchUpInside)
        clearBtn.layer.cornerRadius = 4
        clearBtn.layer.shadowColor = UIColor.black.cgColor
        clearBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        clearBtn.layer.shadowRadius = 1.0
        clearBtn.layer.shadowOpacity = 0.0
        view.addSubview(clearBtn)
        
        
        let spaceBtn = UIButton(type: .system)
        spaceBtn.setBackgroundImage(UIImage(named: "space1"), for: .normal)
        spaceBtn.frame = CGRect(x: 4, y: 109, width: 45, height: 42)
        spaceBtn.addTarget(self, action: #selector(KeyboardViewController.spaceTap), for: .touchUpInside)
        spaceBtn.layer.cornerRadius = 4
        spaceBtn.layer.shadowColor = UIColor.black.cgColor
        spaceBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        spaceBtn.layer.shadowRadius = 1.0
        spaceBtn.layer.shadowOpacity = 0.0
        view.addSubview(spaceBtn)
        
        
        
        let bBtn = UIButton(type: .system)
        bBtn.setBackgroundImage(UIImage(named: "B"), for: .normal)
        bBtn.frame = CGRect(x: 229.5, y: 108, width: 35, height: 42)
        bBtn.addTarget(self, action: #selector(KeyboardViewController.bTap), for: .touchUpInside)
        bBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        bBtn.layer.cornerRadius = 5
        bBtn.layer.shadowColor = UIColor.black.cgColor
        bBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        bBtn.layer.shadowRadius = 1.0
        bBtn.layer.shadowOpacity = 1.0
        view.addSubview(bBtn)
        
        let cBtn = UIButton(type: .system)
        cBtn.setBackgroundImage(UIImage(named: "C"), for: .normal)
        cBtn.frame = CGRect(x: 147.5, y: 108, width: 35, height: 42)
        cBtn.addTarget(self, action: #selector(KeyboardViewController.cTap), for: .touchUpInside)
        cBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        cBtn.layer.cornerRadius = 4
        cBtn.layer.shadowColor = UIColor.black.cgColor
        cBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        cBtn.layer.shadowRadius = 1.0
        cBtn.layer.shadowOpacity = 1.0
        view.addSubview(cBtn)
        
        let aBtn = UIButton(type: .system)
        aBtn.setBackgroundImage(UIImage(named: "A"), for: .normal)
        aBtn.frame = CGRect(x: 24.5, y: 57, width: 35, height: 42)
        aBtn.addTarget(self, action: #selector(KeyboardViewController.aTap), for: .touchUpInside)
        aBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        aBtn.layer.cornerRadius = 4
        aBtn.layer.shadowColor = UIColor.black.cgColor
        aBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        aBtn.layer.shadowRadius = 1.0
        aBtn.layer.shadowOpacity = 1.0
        view.addSubview(aBtn)
        
        let dBtn = UIButton(type: .system)
        dBtn.setBackgroundImage(UIImage(named: "D"), for: .normal)
        dBtn.frame = CGRect(x: 106.5, y: 57, width: 35, height: 42)
        dBtn.addTarget(self, action: #selector(KeyboardViewController.dTap), for: .touchUpInside)
        dBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        dBtn.layer.cornerRadius = 4
        dBtn.layer.shadowColor = UIColor.black.cgColor
        dBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        dBtn.layer.shadowRadius = 1.0
        dBtn.layer.shadowOpacity = 1.0
        view.addSubview(dBtn)
        
        let eBtn = UIButton(type: .system)
        eBtn.setBackgroundImage(UIImage(named: "E"), for: .normal)
        eBtn.frame = CGRect(x: 86, y: 5, width: 35, height: 42)
        eBtn.addTarget(self, action: #selector(KeyboardViewController.eTap), for: .touchUpInside)
        eBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        eBtn.layer.cornerRadius = 4
        eBtn.layer.shadowColor = UIColor.black.cgColor
        eBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        eBtn.layer.shadowRadius = 1.0
        eBtn.layer.shadowOpacity = 1.0
        view.addSubview(eBtn)
        
        let fBtn = UIButton(type: .system)
        fBtn.setBackgroundImage(UIImage(named: "F"), for: .normal)
        fBtn.frame = CGRect(x: 147.5, y: 57, width: 35, height: 42)
        fBtn.addTarget(self, action: #selector(KeyboardViewController.fTap), for: .touchUpInside)
        fBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        fBtn.layer.cornerRadius = 4
        fBtn.layer.shadowColor = UIColor.black.cgColor
        fBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        fBtn.layer.shadowRadius = 1.0
        fBtn.layer.shadowOpacity = 1.0
        view.addSubview(fBtn)
        
        let gBtn = UIButton(type: .system)
        gBtn.setBackgroundImage(UIImage(named: "G"), for: .normal)
        gBtn.frame = CGRect(x: 188.5, y: 57, width: 35, height: 42)
        gBtn.addTarget(self, action: #selector(KeyboardViewController.gTap), for: .touchUpInside)
        gBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        gBtn.layer.cornerRadius = 4
        gBtn.layer.shadowColor = UIColor.black.cgColor
        gBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        gBtn.layer.shadowRadius = 1.0
        gBtn.layer.shadowOpacity = 1.0
        view.addSubview(gBtn)
        
        let hBtn = UIButton(type: .system)
        hBtn.setBackgroundImage(UIImage(named: "H"), for: .normal)
        hBtn.frame = CGRect(x: 229.5, y: 57, width: 35, height: 42)
        hBtn.addTarget(self, action: #selector(KeyboardViewController.hTap), for: .touchUpInside)
        hBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        hBtn.layer.cornerRadius = 4
        hBtn.layer.shadowColor = UIColor.black.cgColor
        hBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        hBtn.layer.shadowRadius = 1.0
        hBtn.layer.shadowOpacity = 1.0
        view.addSubview(hBtn)
        
        let iBtn = UIButton(type: .system)
        iBtn.setBackgroundImage(UIImage(named: "I"), for: .normal)
        iBtn.frame = CGRect(x: 291, y: 5, width: 35, height: 42)
        iBtn.addTarget(self, action: #selector(KeyboardViewController.iTap), for: .touchUpInside)
        iBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        iBtn.layer.cornerRadius = 4
        iBtn.layer.shadowColor = UIColor.black.cgColor
        iBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        iBtn.layer.shadowRadius = 1.0
        iBtn.layer.shadowOpacity = 1.0
        view.addSubview(iBtn)
        
        let jBtn = UIButton(type: .system)
        jBtn.setBackgroundImage(UIImage(named: "J"), for: .normal)
        jBtn.frame = CGRect(x: 270.5, y: 57, width: 35, height: 42)
        jBtn.addTarget(self, action: #selector(KeyboardViewController.jTap), for: .touchUpInside)
        jBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        jBtn.layer.cornerRadius = 4
        jBtn.layer.shadowColor = UIColor.black.cgColor
        jBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        jBtn.layer.shadowRadius = 1.0
        jBtn.layer.shadowOpacity = 1.0
        view.addSubview(jBtn)
        
        let kBtn = UIButton(type: .system)
        kBtn.setBackgroundImage(UIImage(named: "K"), for: .normal)
        kBtn.frame = CGRect(x: 311.5, y: 57, width: 35, height: 42)
        kBtn.addTarget(self, action: #selector(KeyboardViewController.kTap), for: .touchUpInside)
        kBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        kBtn.layer.cornerRadius = 4
        kBtn.layer.shadowColor = UIColor.black.cgColor
        kBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        kBtn.layer.shadowRadius = 1.0
        kBtn.layer.shadowOpacity = 1.0
        view.addSubview(kBtn)
        
        let lBtn = UIButton(type: .system)
        lBtn.setBackgroundImage(UIImage(named: "L"), for: .normal)
        lBtn.frame = CGRect(x: 352.5, y: 57, width: 35, height: 42)
        lBtn.addTarget(self, action: #selector(KeyboardViewController.lTap), for: .touchUpInside)
        lBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        lBtn.layer.cornerRadius = 4
        lBtn.layer.shadowColor = UIColor.black.cgColor
        lBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        lBtn.layer.shadowRadius = 1.0
        lBtn.layer.shadowOpacity = 1.0
        view.addSubview(lBtn)
        
        let mBtn = UIButton(type: .system)
        mBtn.setBackgroundImage(UIImage(named: "M"), for: .normal)
        mBtn.frame = CGRect(x: 311.5, y: 108, width: 35, height: 42)
        mBtn.addTarget(self, action: #selector(KeyboardViewController.mTap), for: .touchUpInside)
        mBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        mBtn.layer.cornerRadius = 4
        mBtn.layer.shadowColor = UIColor.black.cgColor
        mBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        mBtn.layer.shadowRadius = 1.0
        mBtn.layer.shadowOpacity = 1.0
        view.addSubview(mBtn)
        
        let nBtn = UIButton(type: .system)
        nBtn.setBackgroundImage(UIImage(named: "N"), for: .normal)
        nBtn.frame = CGRect(x: 270.5, y: 108, width: 35, height: 42)
        nBtn.addTarget(self, action: #selector(KeyboardViewController.nTap), for: .touchUpInside)
        nBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        nBtn.layer.cornerRadius = 4
        nBtn.layer.shadowColor = UIColor.black.cgColor
        nBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        nBtn.layer.shadowRadius = 1.0
        nBtn.layer.shadowOpacity = 1.0
        view.addSubview(nBtn)
        
        let oBtn = UIButton(type: .system)
        oBtn.setBackgroundImage(UIImage(named: "O"), for: .normal)
        oBtn.frame = CGRect(x: 332, y: 5, width: 35, height: 42)
        oBtn.addTarget(self, action: #selector(KeyboardViewController.oTap), for: .touchUpInside)
        oBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        oBtn.layer.cornerRadius = 4
        oBtn.layer.shadowColor = UIColor.black.cgColor
        oBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        oBtn.layer.shadowRadius = 1.0
        oBtn.layer.shadowOpacity = 1.0
        view.addSubview(oBtn)
        
        let pBtn = UIButton(type: .system)
        pBtn.setBackgroundImage(UIImage(named: "P"), for: .normal)
        pBtn.frame = CGRect(x: 373, y: 5, width: 35, height: 42)
        pBtn.addTarget(self, action: #selector(KeyboardViewController.pTap), for: .touchUpInside)
        pBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        pBtn.layer.cornerRadius = 4
        pBtn.layer.shadowColor = UIColor.black.cgColor
        pBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        pBtn.layer.shadowRadius = 1.0
        pBtn.layer.shadowOpacity = 1.0
        view.addSubview(pBtn)
        
        let qBtn = UIButton(type: .system)
        qBtn.setBackgroundImage(UIImage(named: "Q"), for: .normal)
        qBtn.frame = CGRect(x: 4, y: 5, width: 35, height: 42)
        qBtn.addTarget(self, action: #selector(KeyboardViewController.qTap), for: .touchUpInside)
        qBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        qBtn.layer.cornerRadius = 4
        qBtn.layer.shadowColor = UIColor.black.cgColor
        qBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        qBtn.layer.shadowRadius = 1.0
        qBtn.layer.shadowOpacity = 1.0
        view.addSubview(qBtn)
        
        let rBtn = UIButton(type: .system)
        rBtn.setBackgroundImage(UIImage(named: "R"), for: .normal)
        rBtn.frame = CGRect(x: 127, y: 5, width: 35, height: 42)
        rBtn.addTarget(self, action: #selector(KeyboardViewController.rTap), for: .touchUpInside)
        rBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        rBtn.layer.cornerRadius = 4
        rBtn.layer.shadowColor = UIColor.black.cgColor
        rBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        rBtn.layer.shadowRadius = 1.0
        rBtn.layer.shadowOpacity = 1.0
        view.addSubview(rBtn)
        
        let sBtn = UIButton(type: .system)
        sBtn.setBackgroundImage(UIImage(named: "S"), for: .normal)
        sBtn.frame = CGRect(x: 65.5, y: 57, width: 35, height: 42)
        sBtn.addTarget(self, action: #selector(KeyboardViewController.sTap), for: .touchUpInside)
        sBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        sBtn.layer.cornerRadius = 4
        sBtn.layer.shadowColor = UIColor.black.cgColor
        sBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        sBtn.layer.shadowRadius = 1.0
        sBtn.layer.shadowOpacity = 1.0
        view.addSubview(sBtn)
        
        let tBtn = UIButton(type: .system)
        tBtn.setBackgroundImage(UIImage(named: "T"), for: .normal)
        tBtn.frame = CGRect(x: 168, y: 5, width: 35, height: 42)
        tBtn.addTarget(self, action: #selector(KeyboardViewController.tTap), for: .touchUpInside)
        tBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        tBtn.layer.cornerRadius = 4
        tBtn.layer.shadowColor = UIColor.black.cgColor
        tBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        tBtn.layer.shadowRadius = 1.0
        tBtn.layer.shadowOpacity = 1.0
        view.addSubview(tBtn)
        
        let uBtn = UIButton(type: .system)
        uBtn.setBackgroundImage(UIImage(named: "U"), for: .normal)
        uBtn.frame = CGRect(x: 250, y: 5, width: 35, height: 42)
        uBtn.addTarget(self, action: #selector(KeyboardViewController.uTap), for: .touchUpInside)
        uBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        uBtn.layer.cornerRadius = 4
        uBtn.layer.shadowColor = UIColor.black.cgColor
        uBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        uBtn.layer.shadowRadius = 1.0
        uBtn.layer.shadowOpacity = 1.0
        view.addSubview(uBtn)
        
        let vBtn = UIButton(type: .system)
        vBtn.setBackgroundImage(UIImage(named: "V"), for: .normal)
        vBtn.frame = CGRect(x: 188.5, y: 108, width: 35, height: 42)
        vBtn.addTarget(self, action: #selector(KeyboardViewController.vTap), for: .touchUpInside)
        vBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        vBtn.layer.cornerRadius = 4
        vBtn.layer.shadowColor = UIColor.black.cgColor
        vBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        vBtn.layer.shadowRadius = 1.0
        vBtn.layer.shadowOpacity = 1.0
        view.addSubview(vBtn)
        
        let wBtn = UIButton(type: .system)
        wBtn.setBackgroundImage(UIImage(named: "W"), for: .normal)
        wBtn.frame = CGRect(x: 45, y: 5,width: 35, height: 42)
        wBtn.addTarget(self, action: #selector(KeyboardViewController.wTap), for: .touchUpInside)
        wBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        wBtn.layer.cornerRadius = 4
        wBtn.layer.shadowColor = UIColor.black.cgColor
        wBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        wBtn.layer.shadowRadius = 1.0
        wBtn.layer.shadowOpacity = 1.0
        view.addSubview(wBtn)
        
        let xBtn = UIButton(type: .system)
        xBtn.setBackgroundImage(UIImage(named: "X"), for: .normal)
        xBtn.frame = CGRect(x: 106.5, y: 108, width: 35, height: 42)
        xBtn.addTarget(self, action: #selector(KeyboardViewController.xTap), for: .touchUpInside)
        xBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        xBtn.layer.cornerRadius = 4
        xBtn.layer.shadowColor = UIColor.black.cgColor
        xBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        xBtn.layer.shadowRadius = 1.0
        xBtn.layer.shadowOpacity = 1.0
        view.addSubview(xBtn)
        
        let yBtn = UIButton(type: .system)
        yBtn.setBackgroundImage(UIImage(named: "Y"), for: .normal)
        yBtn.frame = CGRect(x: 209, y: 5, width: 35, height: 42)
        yBtn.addTarget(self, action: #selector(KeyboardViewController.yTap), for: .touchUpInside)
        yBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        yBtn.layer.cornerRadius = 4
        yBtn.layer.shadowColor = UIColor.black.cgColor
        yBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        yBtn.layer.shadowRadius = 1.0
        yBtn.layer.shadowOpacity = 1.0
        view.addSubview(yBtn)
        
        let zBtn = UIButton(type: .system)
        zBtn.setBackgroundImage(UIImage(named: "Z"), for: .normal)
        zBtn.frame = CGRect(x: 65.5, y: 108, width: 35, height: 42)
        zBtn.addTarget(self, action: #selector(KeyboardViewController.zTap), for: .touchUpInside)
        zBtn.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        zBtn.layer.cornerRadius = 4
        zBtn.layer.shadowColor = UIColor.black.cgColor
        zBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        zBtn.layer.shadowRadius = 1.0
        zBtn.layer.shadowOpacity = 1.0
        view.addSubview(zBtn)
    }
    
    @objc func spaceTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
    }
    
    
    @objc func clearTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    @objc func aTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("a")

    
    }
    
    
    func categoriesString(_ categories: [String]) -> String {
        var catString = ""
        for category in categories{
            catString += " \(category)"
            
        }
        return catString
    }
    
    
    @objc func bTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("b")
        
    }
    
    @objc func cTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("c")
        
    }
    
    @objc func dTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("d")
        
    }
    
    @objc func eTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("e")
        
    }
    
    @objc func fTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("f")
        
    }
    
    @objc func gTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("g")
        
    }
    
    @objc func hTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("h")
        
    }
    
    @objc func iTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("i")
        
    }
    
    @objc func jTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("j")
        
    }
    
    @objc func kTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("k")
        
    }
    
    @objc func lTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("l")
        
    }
    
    @objc func mTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("m")
        
    }
    
    @objc func nTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("n")
        
    }
    
    @objc func oTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("o")
        
    }
    
    @objc func pTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("p")
        
    }
    
    @objc func qTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("q")
        
    }
    
    @objc func rTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("r")
        
    }
    
    @objc func sTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("s")
        
    }
    
    @objc func tTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("t")
        
    }
    
    @objc func uTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("u")
        
    }
    
    @objc func vTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("v")
        
    }
    
    @objc func wTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("w")
        
    }
    
    @objc func xTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("x")
        
    }
    
    @objc func yTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("y")
        
    }
    
    
    @objc func zTap() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("z")
        
    }


    
    

}
extension UIImage {
    
    /// EZSE: Returns base64 string
    public var base64: String {
        return self.jpegData(compressionQuality: 1.0)!.base64EncodedString()
    }
}


