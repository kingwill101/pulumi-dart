// ignore_for_file: unused_element, unnecessary_cast


/// Storage mapping input properties.
class StorageMappingInputProperties {
  /// The ID of the storage object.
  final String? targetStorageClassificationId;

  /// Creates a new [StorageMappingInputProperties].
  /// [targetStorageClassificationId] The ID of the storage object.
  StorageMappingInputProperties({
    this.targetStorageClassificationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClassificationId': ?targetStorageClassificationId,
    };
  }

  factory StorageMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return StorageMappingInputProperties(
      targetStorageClassificationId: map['targetStorageClassificationId'] == null ? null : map['targetStorageClassificationId'] as String,
    );
  }
}

