// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretArchiveReferenceResponse {
  /// The resource ID of the key vault containing the secret.
  final pulumi.Input<String> keyVaultId;
  /// The name of the secret in the key vault.
  final pulumi.Input<String> secretName;
  /// The version of the secret in the key vault.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [SecretArchiveReferenceResponse].
  /// [keyVaultId] The resource ID of the key vault containing the secret.
  /// [secretName] The name of the secret in the key vault.
  /// [secretVersion] The version of the secret in the key vault.
  const SecretArchiveReferenceResponse({
    required this.keyVaultId,
    required this.secretName,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'secretName': secretName,
      'secretVersion': secretVersion,
    };
  }

  factory SecretArchiveReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecretArchiveReferenceResponse(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

