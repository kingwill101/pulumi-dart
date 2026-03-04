// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_secure_credential_secure_credential_args_doc}
/// The set of arguments for SecureCredential.
/// {@endtemplate}
/// {@macro pulumi_synthetics_secure_credential_secure_credential_args_doc}
class SecureCredentialArgs {
  /// Determines the New Relic account where the secure credential will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;

  /// The secure credential's description.
  final pulumi.Input<String>? description;

  /// The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  final pulumi.Input<String> key;

  /// The time the secure credential was last updated.
  final pulumi.Input<String>? lastUpdated;

  /// The secure credential's value.
  final pulumi.Input<String> value;

  /// Creates a new [SecureCredentialArgs].
  /// [accountId] Determines the New Relic account where the secure credential will be created. Defaults to the account associated with the API key used.
  /// [description] The secure credential's description.
  /// [key] The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  /// [lastUpdated] The time the secure credential was last updated.
  /// [value] The secure credential's value.
  SecureCredentialArgs({
    this.accountId,
    this.description,
    required this.key,
    this.lastUpdated,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'key': key,
      'lastUpdated': ?lastUpdated,
      'value': value,
    };
  }

  factory SecureCredentialArgs.fromMap(Map<String, dynamic> map) {
    return SecureCredentialArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      lastUpdated: (() {
        final guardedValue = map['lastUpdated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
