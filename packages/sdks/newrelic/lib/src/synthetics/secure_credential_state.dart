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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? key,
    pulumi.Output<String>? lastUpdated,
    pulumi.Output<String>? value,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      key = pulumi.Input.asOptionalInput<String>(key),
      lastUpdated = pulumi.Input.asOptionalInput<String>(lastUpdated),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      lastUpdated: map['lastUpdated'] == null ? null : pulumi.Output.create<String>(map['lastUpdated'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

