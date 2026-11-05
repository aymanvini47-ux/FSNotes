
import UIKit

final class OpenFilzaButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setTitle("Open Filza", for: .normal)
        setImage(UIImage(systemName: "folder"), for: .normal)

        addTarget(
            self,
            action: #selector(openFilza),
            for: .touchUpInside
        )
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setTitle("Open Filza", for: .normal)
        addTarget(
            self,
            action: #selector(openFilza),
            for: .touchUpInside
        )
    }

    @objc private func openFilza() {
        guard let url = URL(string: "filza://view/var/mobile/") else {
            return
        }

        UIApplication.shared.open(url)
    }
}
