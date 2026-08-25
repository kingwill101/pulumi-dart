// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigSecondaryBootDisk {
  /// Path to disk image to create the secondary boot disk from. After using the [gke-disk-image-builder](https://github.com/GoogleCloudPlatform/ai-on-gke/tree/main/tools/gke-disk-image-builder), this argument should be `global/images/DISK_IMAGE_NAME`.
  final pulumi.Input<String> diskImage;
  /// Mode for how the secondary boot disk is used. An example mode is `CONTAINER_IMAGE_CACHE`.
  final pulumi.Input<String?>? mode;

  /// Creates a new [ClusterNodeConfigSecondaryBootDisk].
  /// [diskImage] Path to disk image to create the secondary boot disk from. After using the [gke-disk-image-builder](https://github.com/GoogleCloudPlatform/ai-on-gke/tree/main/tools/gke-disk-image-builder), this argument should be `global/images/DISK_IMAGE_NAME`.
  /// [mode] Mode for how the secondary boot disk is used. An example mode is `CONTAINER_IMAGE_CACHE`.
  const ClusterNodeConfigSecondaryBootDisk({
    required this.diskImage,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskImage': diskImage,
      'mode': ?mode,
    };
  }

  factory ClusterNodeConfigSecondaryBootDisk.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSecondaryBootDisk(
      diskImage: pulumi.Input.fromValue(map['diskImage'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
