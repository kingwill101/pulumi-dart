// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultId;

  /// List containing names of secrets that exist in this Key Vault.
  final List<String> names;

  /// One or more `secrets` blocks as defined below.
  final List<GetSecretsSecret> secrets;

  /// Creates a new [GetSecretsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Required.
  /// [names] List containing names of secrets that exist in this Key Vault.
  /// [secrets] One or more `secrets` blocks as defined below.
  GetSecretsResult({
    required this.id,
    required this.keyVaultId,
    required this.names,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultId': keyVaultId,
      'names': names,
      'secrets':
          pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
            secrets,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] as String,
      names: (map['names'] as List).cast<String>(),
      secrets: pulumi.Input.decodeList<GetSecretsSecret>(
        map['secrets']!,
        (value) =>
            GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
