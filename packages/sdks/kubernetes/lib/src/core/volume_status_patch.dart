// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_volume_status_patch.dart';

/// VolumeStatus represents the status of a mounted volume. At most one of its members must be specified.
class VolumeStatusPatch {
  /// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine.
  final pulumi.Input<ImageVolumeStatusPatch?>? image;

  /// Creates a new [VolumeStatusPatch].
  /// [image] image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine.
  const VolumeStatusPatch({
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?pulumi.Input.mapOptionalInputValue<ImageVolumeStatusPatch, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory VolumeStatusPatch.fromMap(Map<String, dynamic> map) {
    return VolumeStatusPatch(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVolumeStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
