
# AnimatedCollectionViewLib 🚀

## Overview 📚
**AnimatedCollectionViewLib** enhances `UICollectionViewCell` with interactive and customizable animations, improving user engagement and interface design in iOS applications.

## Features 🔑
- **Shake Animation**: Creates a horizontal shake effect for dynamic feedback.
- **Swing Animation**: Provides a recursive swinging effect for playful interactions.
- **Jiggle Animation**: Adds a rotational jiggle effect for attention-grabbing UI elements.
- **Vertical Shake Animation**: Introduces a vertical shake effect for unique animations.

## Requirements 📋
- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## Installation 🛠️

### Swift Package Manager (SPM)

You can easily integrate **AnimatedCollectionViewLib** into your project using Swift Package Manager:

1. In Xcode, go to **File > Add Packages**.
2. Enter the repository URL:
    ```
    https://github.com/lymanny/iOS-AnimatedCollectionViewLib.git
    ```
3. Select the latest version and add it to your project.

Alternatively, you can add the package manually by including the following line in your `Package.swift` file:
```swift
dependencies: [
    .package(url: "https://github.com/lymanny/iOS-AnimatedCollectionViewLib.git", from: "1.0.0")
]
```

## Usage 💡
Make sure to import the library:
```swift
import AnimatedCollectionView
```

### Available Animations

1. **Shake Animation**
    ```swift
    cell.animateShake {
        print("Shake animation completed!")
    }
    ```

2. **Swing Animation (Recursive Approach)**
    ```swift
    cell.animateSwingRecursively {
        print("Swing animation completed!")
    }
    ```

3. **Jiggle Animation**
    ```swift
    cell.animateJiggle {
        print("Jiggle animation completed!")
    }
    ```

4. **Vertical Shake Animation**
    ```swift
    cell.animateShakeVertical {
        print("Vertical shake animation completed!")
    }
    ```

## Example 🎥
Here’s a simple implementation example:
```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
    // Apply an animation
    cell.animateShake {
        print("Animation done for cell at \(indexPath)")
    }
    
    return cell
}
```

## Contributing 🤝
Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

## License 📄
This project is licensed under the [MIT License](LICENSE).

## Author 👩‍💻
lymanny - iOS Developer  
🌐 [Portfolio](https://lymanny.onrender.com)
