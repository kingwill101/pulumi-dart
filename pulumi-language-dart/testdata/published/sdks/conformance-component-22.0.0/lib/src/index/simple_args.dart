// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_simple_args_doc}
/// The set of arguments for Simple.
/// {@endtemplate}
/// {@macro pulumi_index_simple_args_doc}
class SimpleArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [SimpleArgs].
  /// [value] Required.
  const SimpleArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory SimpleArgs.fromMap(Map<String, dynamic> map) {
    return SimpleArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
