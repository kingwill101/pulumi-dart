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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> key,
    pulumi.Output<String>? lastUpdated,
    required pulumi.Output<String> value,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      key = pulumi.Input.asInput<String>(key),
      lastUpdated = pulumi.Input.asOptionalInput<String>(lastUpdated),
      value = pulumi.Input.asInput<String>(value);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      key: pulumi.Output.create<String>(map['key'] as String),
      lastUpdated: map['lastUpdated'] == null ? null : pulumi.Output.create<String>(map['lastUpdated'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

