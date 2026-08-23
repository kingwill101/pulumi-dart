// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBackingStoreFormat {
  /// Specifies the type of the backing store format used for the storage volume.
  final pulumi.Input<String> type;

  /// Creates a new [VolumeBackingStoreFormat].
  /// [type] Specifies the type of the backing store format used for the storage volume.
  const VolumeBackingStoreFormat({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory VolumeBackingStoreFormat.fromMap(Map<String, dynamic> map) {
    return VolumeBackingStoreFormat(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
