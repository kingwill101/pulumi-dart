// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage mapping input properties.
class StorageMappingInputProperties {
  /// The ID of the storage object.
  final pulumi.Input<String?>? targetStorageClassificationId;

  /// Creates a new [StorageMappingInputProperties].
  /// [targetStorageClassificationId] The ID of the storage object.
  const StorageMappingInputProperties({
    this.targetStorageClassificationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClassificationId': ?targetStorageClassificationId,
    };
  }

  factory StorageMappingInputProperties.fromMap(Map<String, dynamic> map) {
    return StorageMappingInputProperties(
      targetStorageClassificationId: (() { final guardedValue = map['targetStorageClassificationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
