import EnumeratingViewModifier
import SwiftUI

private struct EnumeratedValueKey: EnvironmentKey {
  static let defaultValue: Int = 0
}

extension EnvironmentValues {
  var enumeratedValue: Int {
    get { self[EnumeratedValueKey.self] }
    set { self[EnumeratedValueKey.self] = newValue }
  }
}

struct Inject<T>: EnumeratingViewModifier where T: ViewModifier {
  var modifier: T

  func body(n: Int, content: Content) -> some View {
    content.modifier(modifier).environment(\.enumeratedValue, n)
  }
}

struct HighlightIfOdd: ViewModifier {
  @Environment(\.enumeratedValue) var enumeratedValue

  var shouldHighlight: Bool { !enumeratedValue.isMultiple(of: 2) }

  func body(content: Content) -> some View {
    content.overlay(Color.orange.opacity(shouldHighlight ? 0.3 : 0))
  }
}

struct EnvironmentValueView: View {
  var fruit = ["apple", "mango", "banana", "orange", "strawberry", "watermelon"]

  var body: some View {
    VStack {
      ForEach(fruit, id: \.self, modifier: Inject(modifier: HighlightIfOdd())) { fruit in
        Text(fruit)
          .frame(maxWidth: .infinity)
          .padding()
      }
    }
  }
}

struct EnvironmentValueView_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentValueView()
  }
}
