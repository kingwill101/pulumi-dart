// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceScratchDisk {
  /// Name with which the attached disk is accessible under /dev/disk/by-id/
  final pulumi.Input<String?>? deviceName;
  /// The disk interface to use for attaching this disk; either SCSI or NVME.
  final pulumi.Input<String> interface;
  /// The size of the disk in gigabytes. One of 375 or 3000.
  final pulumi.Input<int?>? size;

  /// Creates a new [InstanceScratchDisk].
  /// [deviceName] Name with which the attached disk is accessible under /dev/disk/by-id/
  /// [interface] The disk interface to use for attaching this disk; either SCSI or NVME.
  /// [size] The size of the disk in gigabytes. One of 375 or 3000.
  const InstanceScratchDisk({
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

  factory InstanceScratchDisk.fromMap(Map<String, dynamic> map) {
    return InstanceScratchDisk(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
