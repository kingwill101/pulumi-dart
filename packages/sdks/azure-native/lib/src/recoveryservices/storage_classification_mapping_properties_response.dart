// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage mapping properties.
class StorageClassificationMappingPropertiesResponse {
  /// Target storage object Id.
  final pulumi.Input<String?>? targetStorageClassificationId;

  /// Creates a new [StorageClassificationMappingPropertiesResponse].
  /// [targetStorageClassificationId] Target storage object Id.
  const StorageClassificationMappingPropertiesResponse({
    this.targetStorageClassificationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClassificationId': ?targetStorageClassificationId,
    };
  }

  factory StorageClassificationMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageClassificationMappingPropertiesResponse(
      targetStorageClassificationId: (() { final guardedValue = map['targetStorageClassificationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
