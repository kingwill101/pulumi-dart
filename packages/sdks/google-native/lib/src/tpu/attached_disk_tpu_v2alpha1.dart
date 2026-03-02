// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_mode_tpu_v2alpha1.dart';

/// A node-attached disk resource. Next ID: 8;
class AttachedDiskTpuV2alpha1 {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  final pulumi.Input<AttachedDiskModeTpuV2alpha1>? mode;
  /// Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [AttachedDiskTpuV2alpha1].
  /// [mode] The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  /// [sourceDisk] Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  AttachedDiskTpuV2alpha1({
    this.mode,
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<AttachedDiskModeTpuV2alpha1, String>(mode, (value) => value.value),
      'sourceDisk': ?sourceDisk,
    };
  }

  factory AttachedDiskTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AttachedDiskTpuV2alpha1(
      mode: map['mode'] == null ? null : (AttachedDiskModeTpuV2alpha1.fromValue(map['mode']! as String)).input(),
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
    );
  }
}

