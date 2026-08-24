// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_res_list_args_doc}
/// The set of arguments for ResList.
/// {@endtemplate}
/// {@macro pulumi_index_res_list_args_doc}
class ResListArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResListArgs].
  /// [value] Required.
  const ResListArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResListArgs.fromMap(Map<String, dynamic> map) {
    return ResListArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
