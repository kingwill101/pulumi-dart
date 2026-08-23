// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Key Vault reference.
class KeyVaultReference {
  /// Azure Key Vault resourceId.
  final pulumi.Input<String> id;

  /// Creates a new [KeyVaultReference].
  /// [id] Azure Key Vault resourceId.
  const KeyVaultReference({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
