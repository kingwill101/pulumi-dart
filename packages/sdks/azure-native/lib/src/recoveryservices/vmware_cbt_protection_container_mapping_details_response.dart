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
  VMwareCbtProtectionContainerMappingDetailsResponse({
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
      excludedSkus: map['excludedSkus'] == null ? null : ((map['excludedSkus']! as List).cast<String>()).input(),
      instanceType: (map['instanceType'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      roleSizeToNicCountMap: ((map['roleSizeToNicCountMap'] as Map).cast<String, int>()).input(),
      serviceBusConnectionStringSecretName: (map['serviceBusConnectionStringSecretName'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      storageAccountSasSecretName: (map['storageAccountSasSecretName'] as String).input(),
      targetLocation: (map['targetLocation'] as String).input(),
    );
  }
}

