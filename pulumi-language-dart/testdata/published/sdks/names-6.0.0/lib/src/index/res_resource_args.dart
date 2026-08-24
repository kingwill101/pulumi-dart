// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_res_resource_args_doc}
/// The set of arguments for ResResource.
/// {@endtemplate}
/// {@macro pulumi_index_res_resource_args_doc}
class ResResourceArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResResourceArgs].
  /// [value] Required.
  const ResResourceArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResResourceArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
