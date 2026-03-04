// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionArg {
  /// An expression to be used as default value if the parameter is not specified.
  final pulumi.Input<String>? default_;

  /// Can be one of IN, INOUT, OUT, or VARIADIC. Default is IN.
  final pulumi.Input<String>? mode;

  /// The name of the argument.
  final pulumi.Input<String>? name;

  /// The type of the argument.
  final pulumi.Input<String> type;

  /// Creates a new [FunctionArg].
  /// [default_] An expression to be used as default value if the parameter is not specified.
  /// [mode] Can be one of IN, INOUT, OUT, or VARIADIC. Default is IN.
  /// [name] The name of the argument.
  /// [type] The type of the argument.
  FunctionArg({this.default_, this.mode, this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'mode': ?mode,
      'name': ?name,
      'type': type,
    };
  }

  factory FunctionArg.fromMap(Map<String, dynamic> map) {
    return FunctionArg(
      default_: (() {
        final guardedValue = map['default'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
