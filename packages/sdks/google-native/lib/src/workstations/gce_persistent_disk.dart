// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An EphemeralDirectory is backed by a Compute Engine persistent disk.
class GcePersistentDisk {
  /// Optional. Type of the disk to use. Defaults to `"pd-standard"`.
  final pulumi.Input<String>? diskType;

  /// Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and source_snapshot must be set.
  final pulumi.Input<bool>? readOnly;

  /// Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snapshot is set. Updating source_image will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final pulumi.Input<String>? sourceImage;

  /// Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image is set. Must be empty if read_only is false. Updating source_snapshot will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [GcePersistentDisk].
  /// [diskType] Optional. Type of the disk to use. Defaults to `"pd-standard"`.
  /// [readOnly] Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and source_snapshot must be set.
  /// [sourceImage] Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snapshot is set. Updating source_image will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  /// [sourceSnapshot] Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image is set. Must be empty if read_only is false. Updating source_snapshot will update content in the ephemeral directory after the workstation is restarted. This field is mutable.
  GcePersistentDisk({
    this.diskType,
    this.readOnly,
    this.sourceImage,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'readOnly': ?readOnly,
      'sourceImage': ?sourceImage,
      'sourceSnapshot': ?sourceSnapshot,
    };
  }

  factory GcePersistentDisk.fromMap(Map<String, dynamic> map) {
    return GcePersistentDisk(
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceImage: (() {
        final guardedValue = map['sourceImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceSnapshot: (() {
        final guardedValue = map['sourceSnapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
