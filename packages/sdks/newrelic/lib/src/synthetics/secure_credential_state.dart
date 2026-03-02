// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecureCredential resources.
class SecureCredentialState {
  /// Determines the New Relic account where the secure credential will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// The secure credential's description.
  final pulumi.Input<String>? description;
  /// The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  final pulumi.Input<String>? key;
  /// The time the secure credential was last updated.
  final pulumi.Input<String>? lastUpdated;
  /// The secure credential's value.
  final pulumi.Input<String>? value;

  /// Creates a new [SecureCredentialState].
  /// [accountId] Determines the New Relic account where the secure credential will be created. Defaults to the account associated with the API key used.
  /// [description] The secure credential's description.
  /// [key] The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  /// [lastUpdated] The time the secure credential was last updated.
  /// [value] The secure credential's value.
  SecureCredentialState({
    this.accountId,
    this.description,
    this.key,
    this.lastUpdated,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'key': ?key,
      'lastUpdated': ?lastUpdated,
      'value': ?value,
    };
  }

  factory SecureCredentialState.fromMap(Map<String, dynamic> map) {
    return SecureCredentialState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      lastUpdated: map['lastUpdated'] == null ? null : (map['lastUpdated'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

