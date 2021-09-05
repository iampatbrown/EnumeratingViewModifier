import SwiftUI

extension ViewBuilder {
  public static func buildBlock<T, Content>(
    _ modifier: T,
    _ content: Content
  ) -> ModifiedEnumeratedContent<Content, T>
    where T: EnumeratingViewModifier, Content: View
  {
    Self.buildBlock(content).enumeratedModifier(0, modifier)
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4, C5>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4,
    _ c5: C5
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>,
    ModifiedEnumeratedContent<C5, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier),
        Self.buildBlock(c5).enumeratedModifier(5, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4, C5, C6>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4,
    _ c5: C5,
    _ c6: C6
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>,
    ModifiedEnumeratedContent<C5, T>,
    ModifiedEnumeratedContent<C6, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier),
        Self.buildBlock(c5).enumeratedModifier(5, modifier),
        Self.buildBlock(c6).enumeratedModifier(6, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4, C5, C6, C7>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4,
    _ c5: C5,
    _ c6: C6,
    _ c7: C7
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>,
    ModifiedEnumeratedContent<C5, T>,
    ModifiedEnumeratedContent<C6, T>,
    ModifiedEnumeratedContent<C7, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier),
        Self.buildBlock(c5).enumeratedModifier(5, modifier),
        Self.buildBlock(c6).enumeratedModifier(6, modifier),
        Self.buildBlock(c7).enumeratedModifier(7, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4, C5, C6, C7, C8>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4,
    _ c5: C5,
    _ c6: C6,
    _ c7: C7,
    _ c8: C8
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>,
    ModifiedEnumeratedContent<C5, T>,
    ModifiedEnumeratedContent<C6, T>,
    ModifiedEnumeratedContent<C7, T>,
    ModifiedEnumeratedContent<C8, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View,
    C8: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier),
        Self.buildBlock(c5).enumeratedModifier(5, modifier),
        Self.buildBlock(c6).enumeratedModifier(6, modifier),
        Self.buildBlock(c7).enumeratedModifier(7, modifier),
        Self.buildBlock(c8).enumeratedModifier(8, modifier)
      )
    )
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1,
    _ c2: C2,
    _ c3: C3,
    _ c4: C4,
    _ c5: C5,
    _ c6: C6,
    _ c7: C7,
    _ c8: C8,
    _ c9: C9
  ) -> TupleView<(
    ModifiedEnumeratedContent<C0, T>,
    ModifiedEnumeratedContent<C1, T>,
    ModifiedEnumeratedContent<C2, T>,
    ModifiedEnumeratedContent<C3, T>,
    ModifiedEnumeratedContent<C4, T>,
    ModifiedEnumeratedContent<C5, T>,
    ModifiedEnumeratedContent<C6, T>,
    ModifiedEnumeratedContent<C7, T>,
    ModifiedEnumeratedContent<C8, T>,
    ModifiedEnumeratedContent<C9, T>
  )>
    where T: EnumeratingViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View,
    C8: View, C9: View
  {
    TupleView(
      (
        Self.buildBlock(c0).enumeratedModifier(0, modifier),
        Self.buildBlock(c1).enumeratedModifier(1, modifier),
        Self.buildBlock(c2).enumeratedModifier(2, modifier),
        Self.buildBlock(c3).enumeratedModifier(3, modifier),
        Self.buildBlock(c4).enumeratedModifier(4, modifier),
        Self.buildBlock(c5).enumeratedModifier(5, modifier),
        Self.buildBlock(c6).enumeratedModifier(6, modifier),
        Self.buildBlock(c7).enumeratedModifier(7, modifier),
        Self.buildBlock(c8).enumeratedModifier(8, modifier),
        Self.buildBlock(c9).enumeratedModifier(9, modifier)
      )
    )
  }
}
