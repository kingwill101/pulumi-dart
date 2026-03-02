// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateScratchDisk {
  /// Name with which the attached disk is accessible under /dev/disk/by-id/
  final pulumi.Input<String>? deviceName;
  /// The disk interface used for attaching this disk. One of SCSI or NVME.
  final pulumi.Input<String> interface;
  /// The size of the disk in gigabytes. One of 375 or 3000.
  final pulumi.Input<int>? size;

  /// Creates a new [InstanceFromTemplateScratchDisk].
  /// [deviceName] Name with which the attached disk is accessible under /dev/disk/by-id/
  /// [interface] The disk interface used for attaching this disk. One of SCSI or NVME.
  /// [size] The size of the disk in gigabytes. One of 375 or 3000.
  InstanceFromTemplateScratchDisk({
    this.deviceName,
    required this.interface,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'interface': interface,
      'size': ?size,
    };
  }

  factory InstanceFromTemplateScratchDisk.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateScratchDisk(
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      interface: (map['interface'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

