// ignore_for_file: unused_element, unnecessary_cast


class GetSharedImageVersionsImageTargetRegion {
  /// The Azure Region in which this Image Version exists.
  final String name;
  /// The number of replicas of the Image Version to be created per region.
  final int regionalReplicaCount;
  /// The storage account type for the image version.
  final String storageAccountType;

  /// Creates a new [GetSharedImageVersionsImageTargetRegion].
  /// [name] The Azure Region in which this Image Version exists.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region.
  /// [storageAccountType] The storage account type for the image version.
  GetSharedImageVersionsImageTargetRegion({
    required this.name,
    required this.regionalReplicaCount,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regionalReplicaCount': regionalReplicaCount,
      'storageAccountType': storageAccountType,
    };
  }

  factory GetSharedImageVersionsImageTargetRegion.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsImageTargetRegion(
      name: map['name'] as String,
      regionalReplicaCount: map['regionalReplicaCount'] as int,
      storageAccountType: map['storageAccountType'] as String,
    );
  }
}

