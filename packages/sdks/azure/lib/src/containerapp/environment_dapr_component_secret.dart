// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentDaprComponentSecret {
  /// The identity to use for accessing key vault reference. Possible values are the Resource ID of a User Assigned Managed Identity, or `System` to use the System Assigned Managed Identity.
  final pulumi.Input<String>? identity;
  /// The Key Vault Secret ID.
  final pulumi.Input<String>? keyVaultSecretId;
  /// The Secret name.
  final pulumi.Input<String> name;
  /// The value for this secret.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentDaprComponentSecret].
  /// [identity] The identity to use for accessing key vault reference. Possible values are the Resource ID of a User Assigned Managed Identity, or `System` to use the System Assigned Managed Identity.
  /// [keyVaultSecretId] The Key Vault Secret ID.
  /// [name] The Secret name.
  /// [value] The value for this secret.
  EnvironmentDaprComponentSecret({
    this.identity,
    this.keyVaultSecretId,
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': name,
      'value': ?value,
    };
  }

  factory EnvironmentDaprComponentSecret.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentSecret(
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

