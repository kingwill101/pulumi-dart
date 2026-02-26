import 'output.dart';

typedef Inputs = Map<String, Input<dynamic>>;

abstract class Input<T> {
  Output<T> toOutput();

  factory Input.fromOutput(Output<T> output) {
    return _OutputInput(output);
  }

  factory Input.fromValue(T value) {
    return _ValueInput(value);
  }

  static Input<T> asInput<T>(dynamic value) {
    if (value is Input<T>) {
      return value;
    }
    return Input.fromValue(value as T);
  }

  static Input<T>? asOptionalInput<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is Input<T>) {
      return value;
    }
    return Input.fromValue(value as T);
  }

  static Input<U> mapInputValue<T, U>(
    Input<T> input,
    U Function(T value) mapper,
  ) {
    return Input.fromOutput(input.toOutput().apply((value) => mapper(value)));
  }

  static Input<U>? mapOptionalInputValue<T, U>(
    Input<T>? input,
    U Function(T value) mapper,
  ) {
    if (input == null) {
      return null;
    }
    return mapInputValue<T, U>(input, mapper);
  }

  static List<T> decodeList<T>(
    dynamic value,
    T Function(dynamic value) decoder,
  ) {
    return (value as List).map((item) => decoder(item)).toList(growable: false);
  }

  static Map<String, T> decodeMapValues<T>(
    dynamic value,
    T Function(dynamic value) decoder,
  ) {
    final map = (value as Map).cast<String, dynamic>();
    return map.map((key, item) => MapEntry(key, decoder(item)));
  }

  static List<U> encodeList<T, U>(List<T> value, U Function(T value) encoder) {
    return value.map((item) => encoder(item)).toList(growable: false);
  }

  static Map<String, U> encodeMapValues<T, U>(
    Map<String, T> value,
    U Function(T value) encoder,
  ) {
    return value.map((key, item) => MapEntry(key, encoder(item)));
  }

  static Inputs mapToInputs(Map<String, dynamic> args) {
    final mapped = <String, Input<dynamic>>{};
    for (final entry in args.entries) {
      final value = entry.value;
      if (value is Input<dynamic>) {
        mapped[entry.key] = value;
      } else {
        mapped[entry.key] = Input.fromValue(value);
      }
    }
    return mapped;
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
