// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mod_nested_res_args_doc}
/// The set of arguments for Res.
/// {@endtemplate}
/// {@macro pulumi_mod_nested_res_args_doc}
class ResArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResArgs].
  /// [value] Required.
  const ResArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResArgs.fromMap(Map<String, dynamic> map) {
    return ResArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
