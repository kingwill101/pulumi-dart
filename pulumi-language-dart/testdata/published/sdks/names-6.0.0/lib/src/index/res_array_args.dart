// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_res_array_args_doc}
/// The set of arguments for ResArray.
/// {@endtemplate}
/// {@macro pulumi_index_res_array_args_doc}
class ResArrayArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResArrayArgs].
  /// [value] Required.
  const ResArrayArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResArrayArgs.fromMap(Map<String, dynamic> map) {
    return ResArrayArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
