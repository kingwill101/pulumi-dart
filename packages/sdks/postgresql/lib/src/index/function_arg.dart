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
  FunctionArg({
    this.default_,
    this.mode,
    this.name,
    required this.type,
  });

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
      default_: map['default'] == null ? null : (map['default'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

