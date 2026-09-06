// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret info when type is keyVaultSecretUri. It's for scenario that user provides a secret stored in user's keyvault and source is Web App, Spring Cloud or Container App.
class KeyVaultSecretUriSecretInfo {
  /// The secret type.
  /// Expected value is 'keyVaultSecretUri'.
  final pulumi.Input<String> secretType;
  /// URI to the keyvault secret
  final pulumi.Input<String?>? value;

  /// Creates a new [KeyVaultSecretUriSecretInfo].
  /// [secretType] The secret type.
  /// [value] URI to the keyvault secret
  const KeyVaultSecretUriSecretInfo({
    required this.secretType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretType': secretType,
      'value': ?value,
    };
  }

  factory KeyVaultSecretUriSecretInfo.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretUriSecretInfo(
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
