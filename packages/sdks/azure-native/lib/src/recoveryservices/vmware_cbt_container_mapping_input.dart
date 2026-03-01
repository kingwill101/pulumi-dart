// ignore_for_file: unused_element, unnecessary_cast


/// VMwareCbt container mapping input.
class VMwareCbtContainerMappingInput {
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final String instanceType;
  /// The target key vault ARM Id.
  final String? keyVaultId;
  /// The target key vault URL.
  final String? keyVaultUri;
  /// The secret name of the service bus connection string.
  final String? serviceBusConnectionStringSecretName;
  /// The storage account ARM Id.
  final String storageAccountId;
  /// The secret name of the storage account.
  final String? storageAccountSasSecretName;
  /// The target location.
  final String targetLocation;

  /// Creates a new [VMwareCbtContainerMappingInput].
  /// [instanceType] The class type.
  /// [keyVaultId] The target key vault ARM Id.
  /// [keyVaultUri] The target key vault URL.
  /// [serviceBusConnectionStringSecretName] The secret name of the service bus connection string.
  /// [storageAccountId] The storage account ARM Id.
  /// [storageAccountSasSecretName] The secret name of the storage account.
  /// [targetLocation] The target location.
  VMwareCbtContainerMappingInput({
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
      instanceType: map['instanceType'] as String,
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      serviceBusConnectionStringSecretName: map['serviceBusConnectionStringSecretName'] == null ? null : map['serviceBusConnectionStringSecretName'] as String,
      storageAccountId: map['storageAccountId'] as String,
      storageAccountSasSecretName: map['storageAccountSasSecretName'] == null ? null : map['storageAccountSasSecretName'] as String,
      targetLocation: map['targetLocation'] as String,
    );
  }
}

