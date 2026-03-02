// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTargetFormat {
  /// Specifies the type of the backing store format used for the storage volume.
  final pulumi.Input<String> type;

  /// Creates a new [VolumeTargetFormat].
  /// [type] Specifies the type of the backing store format used for the storage volume.
  VolumeTargetFormat({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory VolumeTargetFormat.fromMap(Map<String, dynamic> map) {
    return VolumeTargetFormat(
      type: (map['type'] as String).input(),
    );
  }
}

