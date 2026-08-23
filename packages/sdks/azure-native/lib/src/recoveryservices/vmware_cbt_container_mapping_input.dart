// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt container mapping input.
class VMwareCbtContainerMappingInput {
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final pulumi.Input<String> instanceType;
  /// The target key vault ARM Id.
  final pulumi.Input<String>? keyVaultId;
  /// The target key vault URL.
  final pulumi.Input<String>? keyVaultUri;
  /// The secret name of the service bus connection string.
  final pulumi.Input<String>? serviceBusConnectionStringSecretName;
  /// The storage account ARM Id.
  final pulumi.Input<String> storageAccountId;
  /// The secret name of the storage account.
  final pulumi.Input<String>? storageAccountSasSecretName;
  /// The target location.
  final pulumi.Input<String> targetLocation;

  /// Creates a new [VMwareCbtContainerMappingInput].
  /// [instanceType] The class type.
  /// [keyVaultId] The target key vault ARM Id.
  /// [keyVaultUri] The target key vault URL.
  /// [serviceBusConnectionStringSecretName] The secret name of the service bus connection string.
  /// [storageAccountId] The storage account ARM Id.
  /// [storageAccountSasSecretName] The secret name of the storage account.
  /// [targetLocation] The target location.
  const VMwareCbtContainerMappingInput({
    required this.instanceType,
    this.keyVaultId,
    this.keyVaultUri,
    this.serviceBusConnectionStringSecretName,
    required this.storageAccountId,
    this.storageAccountSasSecretName,
    required this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
      'serviceBusConnectionStringSecretName': ?serviceBusConnectionStringSecretName,
      'storageAccountId': storageAccountId,
      'storageAccountSasSecretName': ?storageAccountSasSecretName,
      'targetLocation': targetLocation,
    };
  }

  factory VMwareCbtContainerMappingInput.fromMap(Map<String, dynamic> map) {
    return VMwareCbtContainerMappingInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusConnectionStringSecretName: (() { final guardedValue = map['serviceBusConnectionStringSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageAccountSasSecretName: (() { final guardedValue = map['storageAccountSasSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLocation: pulumi.Input.fromValue(map['targetLocation'] as String),
    );
  }
}
