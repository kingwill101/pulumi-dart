// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSecret {
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  final pulumi.Input<String> identity;
  /// The ID of a Key Vault secret.
  final pulumi.Input<String> keyVaultSecretId;
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppSecret].
  /// [identity] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [keyVaultSecretId] The ID of a Key Vault secret.
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  const GetAppSecret({
    required this.identity,
    required this.keyVaultSecretId,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'keyVaultSecretId': keyVaultSecretId,
      'name': name,
      'value': value,
    };
  }

  factory GetAppSecret.fromMap(Map<String, dynamic> map) {
    return GetAppSecret(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      keyVaultSecretId: pulumi.Input.fromValue(map['keyVaultSecretId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
