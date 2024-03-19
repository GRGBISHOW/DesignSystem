# DesignSystem

In large development teams, maintaining consistency across user interfaces can be a daunting challenge. With developers utilizing varying measurements, styles, colors, and UI elements, the result is often a chaotic and disjointed user experience.

This is an idea for design system which provides a centralized repository of predefined components, styles, and UI elements. By establishing a set of standardized guidelines and best practices, developers can easily access and implement consistent UI components, ensuring uniformity across all applications.

With the Design System Module, developers no longer need to reinvent the wheel with each UI component. Instead, they can leverage a comprehensive collection of pre-designed elements, including buttons, lists, forms, and more. This not only streamlines the development process but also guarantees a cohesive and polished user interface.

Say goodbye to version discrepancies and inconsistencies in UI components. With the Design System Module, your development team can work efficiently and collaboratively, delivering exceptional user experiences with ease.


At the heart of this workflow lies the generation of design tokens by our esteemed UI/UX team. These tokens serve as the foundational elements for defining colors, typography, spacing, and other design attributes. Leveraging these tokens, our Design System Team collaborates to produce core files in Swift, Kotlin, and CSS, tailored to the respective platforms of iOS, Android, and web.

These core files, embodying the essence of our design system, are then systematically pushed to a centralized token repository. Here, they serve as the authoritative source of truth, ensuring uniformity and coherence across all platforms.

Empowered by these core files, each development team - iOS, Android, and web - embarks on the creation of higher-level UI components. From ubiquitous elements such as buttons and text fields to more complex structures like lists and card views, these components are meticulously crafted to embody our design principles and guidelines.


![Screenshot 2024-03-19 at 9 20 37 pm](https://github.com/GRGBISHOW/DesignSystem/assets/20558114/fbb4f69f-8ff4-44cc-aca0-932678f847c5)


Subsequently, each development team meticulously pushes their platform-specific design system repositories. By doing so, they contribute to the collective knowledge and expertise of our organization, fostering collaboration and synergy across teams.

Finally, these design system repositories become invaluable resources for all developers within our organization. Empowered by a wealth of standardized UI components, developers across teams can seamlessly integrate these elements into their projects, fostering consistency, efficiency, and excellence in our applications.


Some of the examples of the Tokens .swift generated from from figma tokens are shown below.

### Dimension.swift
```swift
public enum Dimension {
    public static let points4 = 4.0
    public static let points8 = 8.0
    public static let points12 = 12.0
    public static let points16 = 16.0
    public static let points20 = 20.0
    public static let points24 = 24.0
    public static let points28 = 28.0
    public static let points32 = 32.0
    public static let points64 = 64.0
    public static let points82 = 82.0
    public static let points120 = 120.0
}
```
### ColorToken.swift
```swift
enum ColorToken {
    static let grey10 = SwiftUI.Color(red: 249/255, green: 245/255, blue: 251/255)
    static let grey20 = SwiftUI.Color(red: 238/255,green: 234/255,blue: 244/255)
    static let grey30 = SwiftUI.Color(red: 219/255,green: 213/255,blue: 232/255)
    
    static let purple10 = SwiftUI.Color(red: 184/255,green: 184/255,blue: 220/255)
    static let purple20 = SwiftUI.Color(red: 160/255,green: 147/255,blue: 188/255)
    static let purple30 = SwiftUI.Color(red: 161/255,green: 124/255,blue: 184/255)
    static let purple40 = SwiftUI.Color(red: 149/255,green: 108/255,blue: 174/255)
    static let purple50 = SwiftUI.Color(red: 135/255,green: 91/255,blue: 168/255)
    static let purple60 = SwiftUI.Color(red: 114/255,green: 78/255,blue: 158/255)
    
    static let purple70 = SwiftUI.Color(red: 95/255,green: 64/255,blue: 153/255)
    static let purple80 = SwiftUI.Color(red: 74/255,green: 42/255,blue: 151/255)
    static let purple90 = SwiftUI.Color(red: 43/255,green: 27/255,blue: 83/255)
    static let purple100 = SwiftUI.Color(red: 22/255, green: 14/255, blue: 45/255)
    
    static let yellow10 = SwiftUI.Color(red: 254/255, green: 250/255, blue: 216/255)
    static let yellow20 = SwiftUI.Color(red: 253/255,green: 247/255,blue: 174/255)
    static let yellow30 = SwiftUI.Color(red: 252/255,green: 240/255,blue: 135/255)
    static let yellow40 = SwiftUI.Color(red: 251/255,green: 235/255,blue: 103/255)
    static let yellow50 = SwiftUI.Color(red: 251/255,green: 228/255,blue: 51/255)
    static let yellow60 = SwiftUI.Color(red: 250/255,green: 215/255,blue: 108/255)
    static let yellow70 = SwiftUI.Color(red: 225/255,green: 168/255,blue: 57/255)
    
    
    static let orange10 = SwiftUI.Color(red: 244/255,green: 126/255,blue: 40/255)
    static let orange20 = SwiftUI.Color(red: 233/255,green: 100/255,blue: 9/255)
    static let orange30 = SwiftUI.Color(red: 191/255, green: 77/255, blue: 0/255)
}
```



![demo](https://github.com/GRGBISHOW/DesignSystem/assets/20558114/1131ab4a-d7d8-4dad-9dc4-d0d9f6610584)
