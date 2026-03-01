// ignore_for_file: unused_element, unnecessary_cast


class VolumeBackingStoreFormat {
  /// Specifies the type of the backing store format used for the storage volume.
  final String type;

  /// Creates a new [VolumeBackingStoreFormat].
  /// [type] Specifies the type of the backing store format used for the storage volume.
  VolumeBackingStoreFormat({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory VolumeBackingStoreFormat.fromMap(Map<String, dynamic> map) {
    return VolumeBackingStoreFormat(
      type: map['type'] as String,
    );
  }
}

