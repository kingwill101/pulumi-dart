// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultId;
  /// List containing names of secrets that exist in this Key Vault.
  final List<String>? names;
  /// One or more `secrets` blocks as defined below.
  final List<GetSecretsSecret>? secrets;

  /// Creates a new [GetSecretsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Optional.
  /// [names] List containing names of secrets that exist in this Key Vault.
  /// [secrets] One or more `secrets` blocks as defined below.
  const GetSecretsResult({
    this.id,
    this.keyVaultId,
    this.names,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'keyVaultId': ?keyVaultId,
      'names': ?names,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretsSecret>(guardedValue, (value) => GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
