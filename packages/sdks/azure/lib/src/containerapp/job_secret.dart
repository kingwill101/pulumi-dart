// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobSecret {
  /// The identity to use for accessing the Key Vault secret reference. This can either be the Resource ID of a User Assigned Identity, or `System` for the System Assigned Identity.
  ///
  /// !&gt; **Note:** `identity` must be used together with `key_vault_secret_id`
  final pulumi.Input<String>? identity;

  /// The ID of a Key Vault secret. This can be a versioned or version-less ID.
  ///
  /// !&gt; **Note:** When using `key_vault_secret_id`, `ignore_changes` should be used to ignore any changes to `value`.
  final pulumi.Input<String>? keyVaultSecretId;

  /// The secret name.
  final pulumi.Input<String> name;

  /// The value for this secret.
  ///
  /// !&gt; **Note:** `value` will be ignored if `key_vault_secret_id` and `identity` are provided.
  final pulumi.Input<String>? value;

  /// Creates a new [JobSecret].
  /// [identity] The identity to use for accessing the Key Vault secret reference. This can either be the Resource ID of a User Assigned Identity, or `System` for the System Assigned Identity.
  /// [keyVaultSecretId] The ID of a Key Vault secret. This can be a versioned or version-less ID.
  /// [name] The secret name.
  /// [value] The value for this secret.
  JobSecret({
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

  factory JobSecret.fromMap(Map<String, dynamic> map) {
    return JobSecret(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultSecretId: (() {
        final guardedValue = map['keyVaultSecretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
