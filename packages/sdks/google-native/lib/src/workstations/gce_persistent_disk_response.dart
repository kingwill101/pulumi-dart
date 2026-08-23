// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An EphemeralDirectory is backed by a Compute Engine persistent disk.
class GcePersistentDiskResponse {
  /// Optional. Type of the disk to use. Defaults to `"pd-standard"`.
  final pulumi.Input<String> diskType;
  /// Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and source_snapshot must be set.
  final pulumi.Input<bool> readOnly;
  /// Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snapshot is set. Updating source_image will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final pulumi.Input<String> sourceImage;
  /// Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image is set. Must be empty if read_only is false. Updating source_snapshot will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final pulumi.Input<String> sourceSnapshot;

  /// Creates a new [GcePersistentDiskResponse].
  /// [diskType] Optional. Type of the disk to use. Defaults to `"pd-standard"`.
  /// [readOnly] Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and source_snapshot must be set.
  /// [sourceImage] Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snapshot is set. Updating source_image will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  /// [sourceSnapshot] Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image is set. Must be empty if read_only is false. Updating source_snapshot will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  const GcePersistentDiskResponse({
    required this.diskType,
    required this.readOnly,
    required this.sourceImage,
    required this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': diskType,
      'readOnly': readOnly,
      'sourceImage': sourceImage,
      'sourceSnapshot': sourceSnapshot,
    };
  }

  factory GcePersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskResponse(
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      sourceImage: pulumi.Input.fromValue(map['sourceImage'] as String),
      sourceSnapshot: pulumi.Input.fromValue(map['sourceSnapshot'] as String),
    );
  }
}
