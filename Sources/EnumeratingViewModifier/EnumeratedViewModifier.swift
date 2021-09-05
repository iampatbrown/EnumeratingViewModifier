//
//  SwiftUIView.swift
//  SwiftUIView
//
//  Created by Pat Brown on 5/9/21.
//

import SwiftUI

private struct EnumeratedValueKey: EnvironmentKey {
  static let defaultValue: Int = 0
}

extension EnvironmentValues {
  public var enumeratedValue: Int {
    get { self[EnumeratedValueKey.self] }
    set { self[EnumeratedValueKey.self] = newValue }
  }
}

public protocol EnumeratedViewModifier: ViewModifier {
  var enumeratedValue: Int { get }
}

extension EnumeratingViewModifier {
  public static func inject<T>(_ modifier: T) -> InjectedViewModifier<T> where T: ViewModifier, Self == InjectedViewModifier<T> {
    InjectedViewModifier(modifier)
  }
}

public struct InjectedViewModifier<T>: EnumeratingViewModifier where T: ViewModifier {
  var modifier: T

  public init(_ modifier: T) {
    self.modifier = modifier
  }

  public func body(n: Int, content: Content) -> some View {
    content.modifier(modifier).environment(\.enumeratedValue, n)
  }
}
