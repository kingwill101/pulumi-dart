// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CredentialServicePrincipalServicePrincipalKey {
  /// The name of the Linked Service to use for the Service Principal Key.
  final pulumi.Input<String> linkedServiceName;
  /// The name of the Secret in the Key Vault.
  final pulumi.Input<String> secretName;
  /// The version of the Secret in the Key Vault.
  final pulumi.Input<String>? secretVersion;

  /// Creates a new [CredentialServicePrincipalServicePrincipalKey].
  /// [linkedServiceName] The name of the Linked Service to use for the Service Principal Key.
  /// [secretName] The name of the Secret in the Key Vault.
  /// [secretVersion] The version of the Secret in the Key Vault.
  const CredentialServicePrincipalServicePrincipalKey({
    required this.linkedServiceName,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory CredentialServicePrincipalServicePrincipalKey.fromMap(Map<String, dynamic> map) {
    return CredentialServicePrincipalServicePrincipalKey(
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

