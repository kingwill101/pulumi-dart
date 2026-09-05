// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_volume_status.dart';

/// VolumeStatus represents the status of a mounted volume. At most one of its members must be specified.
class VolumeStatus {
  /// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine.
  final pulumi.Input<ImageVolumeStatus?>? image;

  /// Creates a new [VolumeStatus].
  /// [image] image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine.
  const VolumeStatus({
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?pulumi.Input.mapOptionalInputValue<ImageVolumeStatus, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory VolumeStatus.fromMap(Map<String, dynamic> map) {
    return VolumeStatus(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVolumeStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
