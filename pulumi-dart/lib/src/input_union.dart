import 'package:pulumi/src/input.dart';

import 'output.dart';
import 'union.dart';

/// An [Input] over a two-way union.
class _Input<T> implements Input<T> {
  final Output<T> _output;

  _Input(this._output);

  @override
  Output<T> toOutput() => _output;
}

/// {@template pulumi.input_union.summary}
/// An [Input] that accepts either `T0` or `T1`.
///
/// Useful for schema unions like `string | number`.
/// {@endtemplate}
///
class InputUnion<T0, T1> extends _Input<Union<T0, T1>> {
  InputUnion._(super._output);

  static InputUnion<T0, T1> fromT0<T0, T1>(T0 value) =>
      InputUnion._(Output.create(Union<T0, T1>.fromT0(value)));

  static InputUnion<T0, T1> fromT1<T0, T1>(T1 value) =>
      InputUnion._(Output.create(Union<T0, T1>.fromT1(value)));
}

/// Converts outputs into inputs.
extension OutputToInput<T> on Output<T> {
  /// Wraps this output as an [Input].
  Input<T> toInput() => Input.fromOutput(this);
}

/// Converts a `T0` value into an [InputUnion].
extension ValueToInputUnion<T0, T1> on T0 {
  /// Creates an [InputUnion] carrying the `T0` branch.
  InputUnion<T0, T1> toInputUnion() => InputUnion.fromT0(this);
}

/// Converts a `T1` value into an [InputUnion].
extension ValueToInputUnionOnT1<T0, T1> on T1 {
  /// Creates an [InputUnion] carrying the `T1` branch.
  InputUnion<T0, T1> toInputUnion() => InputUnion.fromT1(this);
}
