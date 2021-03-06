# Custom Animations

> Build a custom animations using Lottie iOS with SwiftUI.

![Custom Animations 1](./CustomAnimations_1.png "Custom Animations 1")

![Custom Animations 2](./CustomAnimations_2.png "Custom Animations 2")

![Custom Animations 3](./CustomAnimations_3.png "Custom Animations 3")

![Custom Animations 4](./CustomAnimations_4.png "Custom Animations 4")

![Custom Animations 5](./CustomAnimations_5.png "Custom Animations 5")

![Custom Animations 6](./CustomAnimations_6.png "Custom Animations 6")

![Custom Animations 7](./CustomAnimations_7.png "Custom Animations 7")

![Custom Animations 8](./CustomAnimations_8.png "Custom Animations 8")

![Custom Animations 9](./CustomAnimations_9.png "Custom Animations 9")

![Custom Animations 10](./CustomAnimations_10.png "Custom Animations 10")

![Custom Animations 11](./CustomAnimations_11.png "Custom Animations 11")

---

[lottie-ios](https://github.com/airbnb/lottie-ios)

> An iOS library to natively render After Effects vector animations

---

[Custom Animations Demo on Streamable](https://streamable.com/efmpv0)

---

```swift
import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    let animationView = AnimationView()
    var filename = "LottieLogo2"

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView()

        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {

    }
}
```

```swift
struct ContentView: View {
    // MARK: - BODY
    var body: some View {
        ZStack {
            LottieView(filename: "LottieLogo2")
        }
        .frame(width: 360, height: 360, alignment: .center)
    }
}
```
