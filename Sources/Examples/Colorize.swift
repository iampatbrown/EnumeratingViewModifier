import EnumeratingViewModifier
import SwiftUI

struct ColorizeBackground: EnumeratingViewModifier {
  var colors = [Color.green, .yellow, .orange, .red, .purple, .blue]

  func body(n: Int, content: Content) -> some View {
    let color = colors[n % colors.count]
    content.padding().frame(maxWidth: .infinity).background(color)
  }
}

struct ColorizeExampleView: View {
  var body: some View {
    VStack(spacing: 0) {
      ColorizeBackground()
      Text("This")
      Text("is")
      Text("just")
      Text("an")
      Text("Example")
    }.foregroundColor(.black)
  }
}

struct ColorizeExampleView_Previews: PreviewProvider {
  static var previews: some View {
    ColorizeExampleView()
  }
}
