// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLab.
class GetLabResult {
  /// The ID of the Storage Account used for Artifact Storage.
  final String artifactsStorageAccountId;
  /// The ID of the Default Premium Storage Account for this Dev Test Lab.
  final String defaultPremiumStorageAccountId;
  /// The ID of the Default Storage Account for this Dev Test Lab.
  final String defaultStorageAccountId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the Key used for this Dev Test Lab.
  final String keyVaultId;
  /// The Azure location where the Dev Test Lab exists.
  final String location;
  final String name;
  /// The ID of the Storage Account used for Storage of Premium Data Disk.
  final String premiumDataDiskStorageAccountId;
  final String resourceGroupName;
  /// The type of storage used by the Dev Test Lab.
  final String storageType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The unique immutable identifier of the Dev Test Lab.
  final String uniqueIdentifier;

  /// Creates a new [GetLabResult].
  /// [artifactsStorageAccountId] The ID of the Storage Account used for Artifact Storage.
  /// [defaultPremiumStorageAccountId] The ID of the Default Premium Storage Account for this Dev Test Lab.
  /// [defaultStorageAccountId] The ID of the Default Storage Account for this Dev Test Lab.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] The ID of the Key used for this Dev Test Lab.
  /// [location] The Azure location where the Dev Test Lab exists.
  /// [name] Required.
  /// [premiumDataDiskStorageAccountId] The ID of the Storage Account used for Storage of Premium Data Disk.
  /// [resourceGroupName] Required.
  /// [storageType] The type of storage used by the Dev Test Lab.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueIdentifier] The unique immutable identifier of the Dev Test Lab.
  const GetLabResult({
    required this.artifactsStorageAccountId,
    required this.defaultPremiumStorageAccountId,
    required this.defaultStorageAccountId,
    required this.id,
    required this.keyVaultId,
    required this.location,
    required this.name,
    required this.premiumDataDiskStorageAccountId,
    required this.resourceGroupName,
    required this.storageType,
    required this.tags,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactsStorageAccountId': artifactsStorageAccountId,
      'defaultPremiumStorageAccountId': defaultPremiumStorageAccountId,
      'defaultStorageAccountId': defaultStorageAccountId,
      'id': id,
      'keyVaultId': keyVaultId,
      'location': location,
      'name': name,
      'premiumDataDiskStorageAccountId': premiumDataDiskStorageAccountId,
      'resourceGroupName': resourceGroupName,
      'storageType': storageType,
      'tags': tags,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetLabResult.fromMap(Map<String, dynamic> map) {
    return GetLabResult(
      artifactsStorageAccountId: map['artifactsStorageAccountId'] as String,
      defaultPremiumStorageAccountId: map['defaultPremiumStorageAccountId'] as String,
      defaultStorageAccountId: map['defaultStorageAccountId'] as String,
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      premiumDataDiskStorageAccountId: map['premiumDataDiskStorageAccountId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageType: map['storageType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
