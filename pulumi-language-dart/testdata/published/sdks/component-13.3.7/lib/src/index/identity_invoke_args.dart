// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_identity_invoke_args_doc}
/// Arguments for identity.
/// {@endtemplate}
/// {@macro pulumi_index_identity_invoke_args_doc}
class IdentityInvokeArgs {
  final pulumi.Input<String> input;

  /// Creates a new [IdentityInvokeArgs].
  /// [input] Required.
  const IdentityInvokeArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory IdentityInvokeArgs.fromMap(Map<String, dynamic> map) {
    return IdentityInvokeArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
