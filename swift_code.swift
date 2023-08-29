import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - UI Elements
    let darkModeSwitch = UISwitch()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    // MARK: - Setup UI
    private func setupUI() {
        self.view.backgroundColor = .white
        
        // NavBar Setup
        self.title = "Ajustes"
        
        // Dark Mode Switch
        darkModeSwitch.addTarget(self, action: #selector(darkModeToggled(_:)), for: .valueChanged)
        
        let darkModeLabel = UILabel()
        darkModeLabel.text = "Modo oscuro"
        
        let darkModeStackView = UIStackView(arrangedSubviews: [darkModeLabel, darkModeSwitch])
        darkModeStackView.axis = .horizontal
        darkModeStackView.distribution = .equalSpacing
        
        self.view.addSubview(darkModeStackView)
    }
    
    // MARK: - Constraints
    private func setupConstraints() {
        // TODO: Add AutoLayout Constraints for the UI elements
    }
    
    // MARK: - Actions
    @objc private func darkModeToggled(_ sender: UISwitch) {
        if sender.isOn {
            // Enable Dark Mode
            self.view.backgroundColor = .black
        } else {
            // Disable Dark Mode
            self.view.backgroundColor = .white
        }
    }
}
