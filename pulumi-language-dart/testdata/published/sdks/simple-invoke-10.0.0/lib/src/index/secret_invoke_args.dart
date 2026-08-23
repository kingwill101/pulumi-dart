// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_secret_invoke_args_doc}
/// Arguments for secretInvoke.
/// {@endtemplate}
/// {@macro pulumi_index_secret_invoke_args_doc}
class SecretInvokeArgs {
  final pulumi.Input<bool> secretResponse;
  final pulumi.Input<String> value;

  /// Creates a new [SecretInvokeArgs].
  /// [secretResponse] Required.
  /// [value] Required.
  const SecretInvokeArgs({
    required this.secretResponse,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretResponse': secretResponse,
      'value': value,
    };
  }

  factory SecretInvokeArgs.fromMap(Map<String, dynamic> map) {
    return SecretInvokeArgs(
      secretResponse: pulumi.Input.fromValue(map['secretResponse'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
