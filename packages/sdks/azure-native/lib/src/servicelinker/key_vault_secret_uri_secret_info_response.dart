// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret info when type is keyVaultSecretUri. It's for scenario that user provides a secret stored in user's keyvault and source is Web App, Spring Cloud or Container App.
class KeyVaultSecretUriSecretInfoResponse {
  /// The secret type.
  /// Expected value is 'keyVaultSecretUri'.
  final pulumi.Input<String> secretType;
  /// URI to the keyvault secret
  final pulumi.Input<String?>? value;

  /// Creates a new [KeyVaultSecretUriSecretInfoResponse].
  /// [secretType] The secret type.
  /// [value] URI to the keyvault secret
  const KeyVaultSecretUriSecretInfoResponse({
    required this.secretType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretType': secretType,
      'value': ?value,
    };
  }

  factory KeyVaultSecretUriSecretInfoResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretUriSecretInfoResponse(
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
