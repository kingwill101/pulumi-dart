import 'output.dart';

abstract class Input<T> {
  Output<T> toOutput();

  factory Input.fromOutput(Output<T> output) {
    return _OutputInput(output);
  }

  factory Input.fromValue(T value) {
    return _ValueInput(value);
  }
}

class _OutputInput<T> implements Input<T> {
  final Output<T> _output;

  _OutputInput(this._output);

  @override
  Output<T> toOutput() => _output;
}

class _ValueInput<T> implements Input<T> {
  final T _value;

  _ValueInput(this._value);

  @override
  Output<T> toOutput() => Output.create(_value);
}
