// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_invoke_array_args_doc}
/// Arguments for invokeArray.
/// {@endtemplate}
/// {@macro pulumi_index_invoke_array_args_doc}
class InvokeArrayArgs {
  final pulumi.Input<String> value;

  /// Creates a new [InvokeArrayArgs].
  /// [value] Required.
  const InvokeArrayArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory InvokeArrayArgs.fromMap(Map<String, dynamic> map) {
    return InvokeArrayArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
