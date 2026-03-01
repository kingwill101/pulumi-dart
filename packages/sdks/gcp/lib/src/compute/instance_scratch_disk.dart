// ignore_for_file: unused_element, unnecessary_cast


class InstanceScratchDisk {
  /// Name with which the attached disk is accessible under /dev/disk/by-id/
  final String? deviceName;
  /// The disk interface to use for attaching this disk; either SCSI or NVME.
  final String interface;
  /// The size of the disk in gigabytes. One of 375 or 3000.
  final int? size;

  /// Creates a new [InstanceScratchDisk].
  /// [deviceName] Name with which the attached disk is accessible under /dev/disk/by-id/
  /// [interface] The disk interface to use for attaching this disk; either SCSI or NVME.
  /// [size] The size of the disk in gigabytes. One of 375 or 3000.
  InstanceScratchDisk({
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
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      interface: map['interface'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

