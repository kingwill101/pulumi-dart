// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mod_nested_concat_world_concat_world_args_doc}
/// Arguments for concatWorld.
/// {@endtemplate}
/// {@macro pulumi_mod_nested_concat_world_concat_world_args_doc}
class ConcatWorldArgs {
  final pulumi.Input<String> value;

  /// Creates a new [ConcatWorldArgs].
  /// [value] Required.
  const ConcatWorldArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ConcatWorldArgs.fromMap(Map<String, dynamic> map) {
    return ConcatWorldArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
