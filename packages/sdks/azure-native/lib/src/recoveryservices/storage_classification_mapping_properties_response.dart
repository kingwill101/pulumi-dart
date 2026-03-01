// ignore_for_file: unused_element, unnecessary_cast


/// Storage mapping properties.
class StorageClassificationMappingPropertiesResponse {
  /// Target storage object Id.
  final String? targetStorageClassificationId;

  /// Creates a new [StorageClassificationMappingPropertiesResponse].
  /// [targetStorageClassificationId] Target storage object Id.
  StorageClassificationMappingPropertiesResponse({
    this.targetStorageClassificationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClassificationId': ?targetStorageClassificationId,
    };
  }

  factory StorageClassificationMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageClassificationMappingPropertiesResponse(
      targetStorageClassificationId: map['targetStorageClassificationId'] == null ? null : map['targetStorageClassificationId'] as String,
    );
  }
}

