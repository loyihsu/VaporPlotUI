# VaporPlotUI

Use Plot like a SwiftUI with a some little builder pattern :sunglasses:

## Usage

1. Create a `View`.

```swift=
// HelloWorldView.swift
import Plot
import VaporPlotUI

struct HelloWorldView: View {
    var content: HTML {
        HTML(
            head: [
                .title("Hello World")
            ],
            body: {
                Div {
                    H1("Hello World")
                }
            }
        )
    }
}
```

2. Render it to `Response`.

```swift=
// routes.swift
func routes(_ app: Application) throws {
    app.get("hello") { req async -> Response in
        HelloWorldView()
            .render()
    }
}
```

3. Enjoy :rocket:
