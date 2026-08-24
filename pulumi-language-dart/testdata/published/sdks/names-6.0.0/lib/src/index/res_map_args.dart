// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_res_map_args_doc}
/// The set of arguments for ResMap.
/// {@endtemplate}
/// {@macro pulumi_index_res_map_args_doc}
class ResMapArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResMapArgs].
  /// [value] Required.
  const ResMapArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResMapArgs.fromMap(Map<String, dynamic> map) {
    return ResMapArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
