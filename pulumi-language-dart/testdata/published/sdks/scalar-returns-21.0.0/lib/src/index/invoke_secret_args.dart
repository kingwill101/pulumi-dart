// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_invoke_secret_args_doc}
/// Arguments for invokeSecret.
/// {@endtemplate}
/// {@macro pulumi_index_invoke_secret_args_doc}
class InvokeSecretArgs {
  final pulumi.Input<String> value;

  /// Creates a new [InvokeSecretArgs].
  /// [value] Required.
  const InvokeSecretArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory InvokeSecretArgs.fromMap(Map<String, dynamic> map) {
    return InvokeSecretArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
