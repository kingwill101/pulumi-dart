import 'package:pulumi_dart/src/input.dart';

import 'output.dart';
import 'union.dart';

class _Input<T> implements Input<T> {
  final Output<T> _output;

  _Input(this._output);

  @override
  Output<T> toOutput() => _output;
}

class InputUnion<T0, T1> extends _Input<Union<T0, T1>> {
  InputUnion._(super._output);

  static InputUnion<T0, T1> fromT0<T0, T1>(T0 value) =>
      InputUnion._(Output.create(Union<T0, T1>.fromT0(value)));

  static InputUnion<T0, T1> fromT1<T0, T1>(T1 value) =>
      InputUnion._(Output.create(Union<T0, T1>.fromT1(value)));

  @override
  Output<Union<T0, T1>> toOutput() => _output;
}

extension OutputToInput<T> on Output<T> {
  Input<T> toInput() => Input.fromOutput(this);
}

extension ValueToInputUnion<T0, T1> on T0 {
  InputUnion<T0, T1> toInputUnion() => InputUnion.fromT0(this);
}

extension ValueToInputUnionOnT1<T0, T1> on T1 {
  InputUnion<T0, T1> toInputUnion() => InputUnion.fromT1(this);
}
