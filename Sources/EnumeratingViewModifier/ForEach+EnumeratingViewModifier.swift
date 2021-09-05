//
//  SwiftUIView.swift
//  SwiftUIView
//
//  Created by Pat Brown on 5/9/21.
//

import SwiftUI

extension ForEach {
  public init<Base, T, BaseContent>(
    _ base: Base,
    modifier: T,
    @ViewBuilder baseContent: @escaping (Base.Element) -> BaseContent
  ) where Base: RandomAccessCollection,
    Base.Element: Identifiable,
    ID == Base.Element.ID,
    Data == [(Int, Base.Element)],
    T: EnumeratingViewModifier,
    BaseContent: View,
    Content == ModifiedEnumeratedContent<BaseContent, T>
  {
    let data = Array(base.enumerated())
    let content = { n, element in baseContent(element).enumeratedModifier(n, modifier) }
    self.init(data, id: \.1.id, content: content)
  }
}

extension ForEach {
  public init<Base, T, BaseContent>(
    _ base: Base,
    id baseId: KeyPath<Base.Element, ID>,
    modifier: T,
    @ViewBuilder baseContent: @escaping (Base.Element) -> BaseContent
  ) where Base: RandomAccessCollection,
    Data == [(Int, Base.Element)],
    T: EnumeratingViewModifier,
    BaseContent: View,
    Content == ModifiedEnumeratedContent<BaseContent, T>
  {
    let data = Array(base.enumerated())
    let id = (\(Int, Base.Element).1).appending(path: baseId)
    let content = { n, element in baseContent(element).enumeratedModifier(n, modifier) }
    self.init(data, id: id, content: content)
  }
}

extension ForEach {
  public init<T, BaseContent>(
    _ base: Range<Int>,
    modifier: T,
    @ViewBuilder baseContent: @escaping (Int) -> BaseContent
  ) where
    Data == [(Int, Int)],
    ID == Int,
    T: EnumeratingViewModifier,
    BaseContent: View,
    Content == ModifiedEnumeratedContent<BaseContent, T>
  {
    let data = Array(base.enumerated())
    let content = { n, i in baseContent(i).enumeratedModifier(n, modifier) }
    self.init(data, id: \.1, content: content)
  }
}
