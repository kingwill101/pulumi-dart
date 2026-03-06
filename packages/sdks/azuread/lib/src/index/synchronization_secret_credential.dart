// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SynchronizationSecretCredential {
  /// The key of the secret.
  final pulumi.Input<String> key;
  /// The value of the secret.
  final pulumi.Input<String> value;

  /// Creates a new [SynchronizationSecretCredential].
  /// [key] The key of the secret.
  /// [value] The value of the secret.
  const SynchronizationSecretCredential({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SynchronizationSecretCredential.fromMap(Map<String, dynamic> map) {
    return SynchronizationSecretCredential(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

