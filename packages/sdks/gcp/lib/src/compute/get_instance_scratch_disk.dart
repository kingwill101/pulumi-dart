// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceScratchDisk {
  /// Name with which the attached disk is accessible
  /// under `/dev/disk/by-id/`
  final pulumi.Input<String> deviceName;
  /// The disk interface used for attaching this disk. One of `SCSI` or `NVME`.
  final pulumi.Input<String> interface;
  /// The size of the image in gigabytes.
  final pulumi.Input<int> size;

  /// Creates a new [GetInstanceScratchDisk].
  /// [deviceName] Name with which the attached disk is accessible
  /// [interface] The disk interface used for attaching this disk. One of `SCSI` or `NVME`.
  /// [size] The size of the image in gigabytes.
  GetInstanceScratchDisk({
    required this.deviceName,
    required this.interface,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'interface': interface,
      'size': size,
    };
  }

  factory GetInstanceScratchDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceScratchDisk(
      deviceName: (map['deviceName'] as String).input(),
      interface: (map['interface'] as String).input(),
      size: (map['size'] as int).input(),
    );
  }
}

