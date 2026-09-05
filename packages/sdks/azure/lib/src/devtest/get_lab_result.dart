// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLab.
class GetLabResult {
  /// The ID of the Storage Account used for Artifact Storage.
  final String? artifactsStorageAccountId;
  /// The ID of the Default Premium Storage Account for this Dev Test Lab.
  final String? defaultPremiumStorageAccountId;
  /// The ID of the Default Storage Account for this Dev Test Lab.
  final String? defaultStorageAccountId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the Key used for this Dev Test Lab.
  final String? keyVaultId;
  /// The Azure location where the Dev Test Lab exists.
  final String? location;
  final String? name;
  /// The ID of the Storage Account used for Storage of Premium Data Disk.
  final String? premiumDataDiskStorageAccountId;
  final String? resourceGroupName;
  /// The type of storage used by the Dev Test Lab.
  final String? storageType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The unique immutable identifier of the Dev Test Lab.
  final String? uniqueIdentifier;

  /// Creates a new [GetLabResult].
  /// [artifactsStorageAccountId] The ID of the Storage Account used for Artifact Storage.
  /// [defaultPremiumStorageAccountId] The ID of the Default Premium Storage Account for this Dev Test Lab.
  /// [defaultStorageAccountId] The ID of the Default Storage Account for this Dev Test Lab.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] The ID of the Key used for this Dev Test Lab.
  /// [location] The Azure location where the Dev Test Lab exists.
  /// [name] Optional.
  /// [premiumDataDiskStorageAccountId] The ID of the Storage Account used for Storage of Premium Data Disk.
  /// [resourceGroupName] Optional.
  /// [storageType] The type of storage used by the Dev Test Lab.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueIdentifier] The unique immutable identifier of the Dev Test Lab.
  const GetLabResult({
    this.artifactsStorageAccountId,
    this.defaultPremiumStorageAccountId,
    this.defaultStorageAccountId,
    this.id,
    this.keyVaultId,
    this.location,
    this.name,
    this.premiumDataDiskStorageAccountId,
    this.resourceGroupName,
    this.storageType,
    this.tags,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactsStorageAccountId': ?artifactsStorageAccountId,
      'defaultPremiumStorageAccountId': ?defaultPremiumStorageAccountId,
      'defaultStorageAccountId': ?defaultStorageAccountId,
      'id': ?id,
      'keyVaultId': ?keyVaultId,
      'location': ?location,
      'name': ?name,
      'premiumDataDiskStorageAccountId': ?premiumDataDiskStorageAccountId,
      'resourceGroupName': ?resourceGroupName,
      'storageType': ?storageType,
      'tags': ?tags,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory GetLabResult.fromMap(Map<String, dynamic> map) {
    return GetLabResult(
      artifactsStorageAccountId: (() { final guardedValue = map['artifactsStorageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPremiumStorageAccountId: (() { final guardedValue = map['defaultPremiumStorageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultStorageAccountId: (() { final guardedValue = map['defaultStorageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      premiumDataDiskStorageAccountId: (() { final guardedValue = map['premiumDataDiskStorageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
