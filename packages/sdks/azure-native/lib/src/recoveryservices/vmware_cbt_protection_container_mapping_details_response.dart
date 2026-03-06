// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt provider specific container mapping details.
class VMwareCbtProtectionContainerMappingDetailsResponse {
  /// The SKUs to be excluded.
  final pulumi.Input<List<String>>? excludedSkus;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMwareCbt'.
  final pulumi.Input<String> instanceType;
  /// The target key vault ARM Id.
  final pulumi.Input<String> keyVaultId;
  /// The target key vault URI.
  final pulumi.Input<String> keyVaultUri;
  /// The role size to NIC count map.
  final pulumi.Input<Map<String, int>> roleSizeToNicCountMap;
  /// The secret name of the service bus connection string.
  final pulumi.Input<String> serviceBusConnectionStringSecretName;
  /// The storage account ARM Id.
  final pulumi.Input<String> storageAccountId;
  /// The secret name of the storage account.
  final pulumi.Input<String> storageAccountSasSecretName;
  /// The target location.
  final pulumi.Input<String> targetLocation;

  /// Creates a new [VMwareCbtProtectionContainerMappingDetailsResponse].
  /// [excludedSkus] The SKUs to be excluded.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [keyVaultId] The target key vault ARM Id.
  /// [keyVaultUri] The target key vault URI.
  /// [roleSizeToNicCountMap] The role size to NIC count map.
  /// [serviceBusConnectionStringSecretName] The secret name of the service bus connection string.
  /// [storageAccountId] The storage account ARM Id.
  /// [storageAccountSasSecretName] The secret name of the storage account.
  /// [targetLocation] The target location.
  const VMwareCbtProtectionContainerMappingDetailsResponse({
    this.excludedSkus,
    required this.instanceType,
    required this.keyVaultId,
    required this.keyVaultUri,
    required this.roleSizeToNicCountMap,
    required this.serviceBusConnectionStringSecretName,
    required this.storageAccountId,
    required this.storageAccountSasSecretName,
    required this.targetLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedSkus': ?excludedSkus,
      'instanceType': instanceType,
      'keyVaultId': keyVaultId,
      'keyVaultUri': keyVaultUri,
      'roleSizeToNicCountMap': roleSizeToNicCountMap,
      'serviceBusConnectionStringSecretName': serviceBusConnectionStringSecretName,
      'storageAccountId': storageAccountId,
      'storageAccountSasSecretName': storageAccountSasSecretName,
      'targetLocation': targetLocation,
    };
  }

  factory VMwareCbtProtectionContainerMappingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtProtectionContainerMappingDetailsResponse(
      excludedSkus: (() { final guardedValue = map['excludedSkus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      roleSizeToNicCountMap: pulumi.Input.fromValue((map['roleSizeToNicCountMap'] as Map).cast<String, int>()),
      serviceBusConnectionStringSecretName: pulumi.Input.fromValue(map['serviceBusConnectionStringSecretName'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageAccountSasSecretName: pulumi.Input.fromValue(map['storageAccountSasSecretName'] as String),
      targetLocation: pulumi.Input.fromValue(map['targetLocation'] as String),
    );
  }
}

