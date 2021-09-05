import SwiftUI

extension ViewBuilder {
  public static func buildBlock<T, Content>(
    _ modifier: T,
    _ content: Content
  ) -> ModifiedContent<Content, T>
    where T: ViewModifier, Content: View
  {
    Self.buildBlock(content).modifier(modifier)
  }
}

extension ViewBuilder {
  public static func buildBlock<T, C0, C1>(
    _ modifier: T,
    _ c0: C0,
    _ c1: C1
  ) -> TupleView<(
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>
  )>
    where T: ViewModifier, C0: View, C1: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>,
    ModifiedContent<C5, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier),
        Self.buildBlock(c5).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>,
    ModifiedContent<C5, T>,
    ModifiedContent<C6, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier),
        Self.buildBlock(c5).modifier(modifier),
        Self.buildBlock(c6).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>,
    ModifiedContent<C5, T>,
    ModifiedContent<C6, T>,
    ModifiedContent<C7, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier),
        Self.buildBlock(c5).modifier(modifier),
        Self.buildBlock(c6).modifier(modifier),
        Self.buildBlock(c7).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>,
    ModifiedContent<C5, T>,
    ModifiedContent<C6, T>,
    ModifiedContent<C7, T>,
    ModifiedContent<C8, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier),
        Self.buildBlock(c5).modifier(modifier),
        Self.buildBlock(c6).modifier(modifier),
        Self.buildBlock(c7).modifier(modifier),
        Self.buildBlock(c8).modifier(modifier)
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
    ModifiedContent<C0, T>,
    ModifiedContent<C1, T>,
    ModifiedContent<C2, T>,
    ModifiedContent<C3, T>,
    ModifiedContent<C4, T>,
    ModifiedContent<C5, T>,
    ModifiedContent<C6, T>,
    ModifiedContent<C7, T>,
    ModifiedContent<C8, T>,
    ModifiedContent<C9, T>
  )>
    where T: ViewModifier, C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View,
    C9: View
  {
    TupleView(
      (
        Self.buildBlock(c0).modifier(modifier),
        Self.buildBlock(c1).modifier(modifier),
        Self.buildBlock(c2).modifier(modifier),
        Self.buildBlock(c3).modifier(modifier),
        Self.buildBlock(c4).modifier(modifier),
        Self.buildBlock(c5).modifier(modifier),
        Self.buildBlock(c6).modifier(modifier),
        Self.buildBlock(c7).modifier(modifier),
        Self.buildBlock(c8).modifier(modifier),
        Self.buildBlock(c9).modifier(modifier)
      )
    )
  }
}
