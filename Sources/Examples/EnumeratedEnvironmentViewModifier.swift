import EnumeratingViewModifier
import SwiftUI

struct HighlightOddRow: EnumeratedViewModifier {
  @Environment(\.enumeratedValue) var enumeratedValue

  var shouldHighlight: Bool { !enumeratedValue.isMultiple(of: 2) }

  func body(content: Content) -> some View {
    content.background(Color.orange.opacity(shouldHighlight ? 0.3 : 0))
  }
}

struct EmphasizeThird: EnumeratedViewModifier {
  @Environment(\.enumeratedValue) var enumeratedValue

  var shouldEmphasize: Bool { enumeratedValue == 2 }

  func body(content: Content) -> some View {
    content.font(shouldEmphasize ? .title : .body)
  }
}

struct EnvironmentValueView: View {
  var fruit = ["apple", "mango", "banana", "orange", "strawberry", "watermelon"]

  var body: some View {
    VStack {
      ForEach(
        fruit,
        id: \.self,
        modifier: .inject(HighlightOddRow().concat(EmphasizeThird()))
      ) { fruit in
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
