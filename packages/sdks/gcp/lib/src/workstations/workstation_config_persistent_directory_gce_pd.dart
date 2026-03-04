// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigPersistentDirectoryGcePd {
  /// Type of the disk to use. Defaults to `"pd-standard"`.
  final pulumi.Input<String>? diskType;

  /// Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if `sourceSnapshot` is set. Defaults to `ext4`.
  final pulumi.Input<String>? fsType;

  /// Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  /// Possible values are: `DELETE`, `RETAIN`.
  final pulumi.Input<String>? reclaimPolicy;

  /// The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if `sourceSnapshot` is set.
  /// Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the `diskType` must be `pd-balanced` or `pd-ssd`.
  final pulumi.Input<int>? sizeGb;

  /// Name of the snapshot to use as the source for the disk.
  /// Must be empty if `sourceImage` is set.
  /// Must be empty if `read_only` is false.
  /// Updating `source_snapshot` will update content in the ephemeral directory after the workstation is restarted.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [WorkstationConfigPersistentDirectoryGcePd].
  /// [diskType] Type of the disk to use. Defaults to `"pd-standard"`.
  /// [fsType] Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if `sourceSnapshot` is set. Defaults to `ext4`.
  /// [reclaimPolicy] Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  /// [sizeGb] The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if `sourceSnapshot` is set.
  /// [sourceSnapshot] Name of the snapshot to use as the source for the disk.
  WorkstationConfigPersistentDirectoryGcePd({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'fsType': ?fsType,
      'reclaimPolicy': ?reclaimPolicy,
      'sizeGb': ?sizeGb,
      'sourceSnapshot': ?sourceSnapshot,
    };
  }

  factory WorkstationConfigPersistentDirectoryGcePd.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkstationConfigPersistentDirectoryGcePd(
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fsType: (() {
        final guardedValue = map['fsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reclaimPolicy: (() {
        final guardedValue = map['reclaimPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeGb: (() {
        final guardedValue = map['sizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sourceSnapshot: (() {
        final guardedValue = map['sourceSnapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
