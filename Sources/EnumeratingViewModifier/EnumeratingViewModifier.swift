import SwiftUI

public protocol EnumeratingViewModifier {
  associatedtype Body: View
  typealias Content = _ViewModifier_Content<EnumeratedContentModifier<Self>>
  @ViewBuilder func body(n: Int, content: Self.Content) -> Self.Body
}

public struct EnumeratedContentModifier<Modifier>: ViewModifier where Modifier: EnumeratingViewModifier {
  var n: Int
  var modifier: Modifier

  public func body(content: Content) -> some View {
    modifier.body(n: n, content: content)
  }
}

public typealias ModifiedEnumeratedContent<Content, Modifier> = ModifiedContent<
  Content,
  EnumeratedContentModifier<Modifier>
> where Modifier: EnumeratingViewModifier

extension View {
  func enumeratedModifier<T>(_ n: Int, _ modifier: T) -> ModifiedEnumeratedContent<Self, T>
    where T: EnumeratingViewModifier
  {
    self.modifier(EnumeratedContentModifier(n: n, modifier: modifier))
  }
}
