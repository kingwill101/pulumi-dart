// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigEphemeralDirectoryGcePd {
  /// Type of the disk to use. Defaults to `"pd-standard"`.
  final pulumi.Input<String>? diskType;
  /// Whether the disk is read only. If true, the disk may be shared by multiple VMs and `sourceSnapshot` must be set.
  final pulumi.Input<bool>? readOnly;
  /// Name of the disk image to use as the source for the disk.
  /// Must be empty `sourceSnapshot` is set.
  /// Updating `sourceImage` will update content in the ephemeral directory after the workstation is restarted.
  final pulumi.Input<String>? sourceImage;
  /// Name of the snapshot to use as the source for the disk.
  /// Must be empty if `sourceImage` is set.
  /// Must be empty if `readOnly` is false.
  /// Updating `sourceSnapshot` will update content in the ephemeral directory after the workstation is restarted.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [WorkstationConfigEphemeralDirectoryGcePd].
  /// [diskType] Type of the disk to use. Defaults to `"pd-standard"`.
  /// [readOnly] Whether the disk is read only. If true, the disk may be shared by multiple VMs and `sourceSnapshot` must be set.
  /// [sourceImage] Name of the disk image to use as the source for the disk.
  /// [sourceSnapshot] Name of the snapshot to use as the source for the disk.
  const WorkstationConfigEphemeralDirectoryGcePd({
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

  factory WorkstationConfigEphemeralDirectoryGcePd.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigEphemeralDirectoryGcePd(
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceImage: (() { final guardedValue = map['sourceImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
