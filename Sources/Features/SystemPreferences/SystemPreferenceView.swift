import Cocoa
import UserInterface

// sourcery: let preference = SystemPreference
class SystemPreferenceView: NSCollectionViewItem, CollectionViewItemComponent {
    weak var delegate: ApplicationGridViewDelegate?

    // sourcery: let icon: NSImage = "iconView.image = model.icon"
    lazy var iconView: NSImageView = .init()
    // sourcery: let title: String = "titleLabel.stringValue = model.title"
    lazy var titleLabel: NSTextField = .init()
    // sourcery: let subtitle: String = "subtitleLabel.stringValue = model.subtitle"
    lazy var subtitleLabel: NSTextField = .init()

    override func loadView() {
        let view = NSView()
        view.wantsLayer = true
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.layer?.backgroundColor = NSColor.white.cgColor
        view.layer?.borderColor = NSColor.gray.withAlphaComponent(0.25).cgColor
        view.layer?.borderWidth = 1.0
        view.layer?.cornerRadius = 20
        view.layer?.masksToBounds = true

        titleLabel.backgroundColor = .clear
        titleLabel.isBezeled = false
        titleLabel.isEditable = false
        titleLabel.maximumNumberOfLines = 2
        titleLabel.font = NSFont.boldSystemFont(ofSize: 13)

        subtitleLabel.backgroundColor = .clear
        subtitleLabel.isBezeled = false
        subtitleLabel.isEditable = false
        subtitleLabel.maximumNumberOfLines = 1
        subtitleLabel.font = NSFont.boldSystemFont(ofSize: 11)

        view.addSubviews(iconView, titleLabel, subtitleLabel)

        let margin: CGFloat = 18

        NSLayoutConstraint.constrain(
            iconView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            iconView.topAnchor.constraint(equalTo: view.topAnchor, constant: margin),
            iconView.widthAnchor.constraint(equalToConstant: 20),
            iconView.heightAnchor.constraint(equalToConstant: 20),

            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: 0),

            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            subtitleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -margin)
        )

        configureAppearance()
    }

    override func viewDidLayout() {
        super.viewDidLayout()
        configureAppearance()
    }

    private func configureAppearance() {
        switch view.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) {
        case .darkAqua?:
            view.layer?.backgroundColor = NSColor(named: "Dark")?.cgColor
            titleLabel.animator().textColor = NSColor(hex: "#88bec8")
            subtitleLabel.textColor = NSColor(hex: "#7f97a1")
        case .aqua?:
            view.layer?.backgroundColor = .white
            titleLabel.textColor = NSColor(hex: "#43a699")
            subtitleLabel.textColor = NSColor(hex: "#4e5d63")
        default:
            break
        }
    }
}

extension NSColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
