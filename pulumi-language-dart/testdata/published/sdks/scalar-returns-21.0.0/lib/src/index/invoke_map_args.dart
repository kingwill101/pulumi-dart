// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_invoke_map_args_doc}
/// Arguments for invokeMap.
/// {@endtemplate}
/// {@macro pulumi_index_invoke_map_args_doc}
class InvokeMapArgs {
  final pulumi.Input<String> value;

  /// Creates a new [InvokeMapArgs].
  /// [value] Required.
  const InvokeMapArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory InvokeMapArgs.fromMap(Map<String, dynamic> map) {
    return InvokeMapArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
