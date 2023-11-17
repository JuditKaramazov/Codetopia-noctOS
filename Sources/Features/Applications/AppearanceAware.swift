import Cocoa

protocol AppearanceAware {
  var titleLabel: NSTextField { get }
  var subtitleLabel: NSTextField { get }
  var view: NSView { get }
  func update(with appearance: Application.Appearance, duration: TimeInterval, then handler: (() -> Void)?)
}

extension AppearanceAware {
  func update(with appearance: Application.Appearance, duration: TimeInterval = 0, then handler: (() -> Void)? = nil) {
    if duration > 0 {
      NSAnimationContext.current.allowsImplicitAnimation = true
      NSAnimationContext.runAnimationGroup({ (context) in
        context.duration = duration
        switch appearance {
        case .dark:
            view.animator().layer?.backgroundColor = NSColor(named: "Dark")?.cgColor
          titleLabel.animator().textColor = .white
          subtitleLabel.animator().textColor = .controlAccentColor
          view.layer?.borderWidth = 0.0
        case .system:
          view.animator().layer?.backgroundColor = NSColor.gray.cgColor
          titleLabel.animator().textColor = .white
          subtitleLabel.animator().textColor = .lightGray
          view.layer?.borderWidth = 0.0
        case .light:
          view.animator().layer?.backgroundColor = .white
          titleLabel.animator().textColor = .black
          subtitleLabel.animator().textColor = .controlAccentColor
          view.layer?.borderColor = NSColor.gray.withAlphaComponent(0.25).cgColor
          view.layer?.borderWidth = 0
        }
      }, completionHandler:{
        handler?()
      })
    } else {
      switch appearance {
        case .dark:
            view.layer?.backgroundColor = NSColor(named: "Dark")?.cgColor
            titleLabel.textColor = NSColor(hex: "#88bec8")
            subtitleLabel.textColor = NSColor(hex: "#7f97a1")
            view.layer?.borderWidth = 0.0
        case .light:
            view.layer?.backgroundColor = .white
            titleLabel.textColor = NSColor(hex: "#43a699")
            subtitleLabel.textColor = NSColor(hex: "#4e5d63")
            view.layer?.borderColor = NSColor.gray.withAlphaComponent(0.25).cgColor
            view.layer?.borderWidth = 1.0
        case .system:
            switch view.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) {
            case .darkAqua?:
                view.layer?.backgroundColor = NSColor(named: "Dark")?.cgColor
                titleLabel.textColor = NSColor(hex: "#88bec8")
                subtitleLabel.textColor = NSColor(hex: "#7f97a1")
                view.layer?.borderWidth = 0.0
            case .aqua?:
                view.layer?.backgroundColor = .white
                titleLabel.textColor = NSColor(hex: "#43a699")
                subtitleLabel.textColor = NSColor(hex: "#4e5d63")
                view.layer?.borderColor = NSColor.gray.withAlphaComponent(0.25).cgColor
                view.layer?.borderWidth = 1.0
            default:
                break
            }
        }
    }
  }
}
