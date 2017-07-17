//
//  SLSegmentedControl.swift
//  SLBorrow
//
//  Created by 印林泉 on 2017/7/12.
//  Copyright © 2017年 幸福钱庄. All rights reserved.
//

import UIKit

enum SLSegmentedControlSegmentStyle: Int {
    case left
    case center
    case right
    case leftHighlighted
    case centerHighlighted
    case rightHighlighted
}

class SLSegmentedControl: UIView {
    let normalColor = UIColor.init(red: 216.0, green: 216.0, blue: 216, alpha: 1.0)
    let selectedColor = UIColor.init(red: 231.0, green: 0.0, blue: 18, alpha: 1.0)
    let ringFillColor = UIColor.white
    let lineH = 2.0
    let circleRadius = 8.0
    let ringRadius = (2.0*1.5+8.0)
    
    var numberOfSegments: Int!//哪些参数是可选的、可选绑定的？
    var selectedSegmentIndex: Int!
    var items: [String]!
    var buttons: [UIButton]!
    
    weak var view: UIView!
    
    @IBInspectable var title: String = "" {
        didSet {
             //设置实时
            backgroundColor = UIColor.red
        }
    }

    override func layoutSubviews() {
        view.frame = bounds
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }
    
    func loadViewFfromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    func setupSubviews() {
        view = loadViewFfromNib()
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }
    
    convenience init(items: [String]) {
        self.init(frame: CGRect.zero)
        self.items = items
        numberOfSegments = items.count
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    

}
