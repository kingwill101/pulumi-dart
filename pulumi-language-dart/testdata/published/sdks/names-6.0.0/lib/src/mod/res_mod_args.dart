// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mod_res_mod_args_doc}
/// The set of arguments for Res.
/// {@endtemplate}
/// {@macro pulumi_mod_res_mod_args_doc}
class ResModArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResModArgs].
  /// [value] Required.
  const ResModArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResModArgs.fromMap(Map<String, dynamic> map) {
    return ResModArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
