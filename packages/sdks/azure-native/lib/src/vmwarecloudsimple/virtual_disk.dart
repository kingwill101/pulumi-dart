// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_independence_mode.dart';

/// Virtual disk model
class VirtualDisk {
  /// Disk's Controller id
  final pulumi.Input<String> controllerId;
  /// Disk's independence mode type
  final pulumi.Input<DiskIndependenceMode> independenceMode;
  /// Disk's total size
  final pulumi.Input<int> totalSize;
  /// Disk's id
  final pulumi.Input<String>? virtualDiskId;

  /// Creates a new [VirtualDisk].
  /// [controllerId] Disk's Controller id
  /// [independenceMode] Disk's independence mode type
  /// [totalSize] Disk's total size
  /// [virtualDiskId] Disk's id
  VirtualDisk({
    required this.controllerId,
    required this.independenceMode,
    required this.totalSize,
    this.virtualDiskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerId': controllerId,
      'independenceMode': pulumi.Input.mapInputValue<DiskIndependenceMode, String>(independenceMode, (value) => value.value),
      'totalSize': totalSize,
      'virtualDiskId': ?virtualDiskId,
    };
  }

  factory VirtualDisk.fromMap(Map<String, dynamic> map) {
    return VirtualDisk(
      controllerId: (map['controllerId'] as String).input(),
      independenceMode: (DiskIndependenceMode.fromValue(map['independenceMode'] as String)).input(),
      totalSize: (map['totalSize'] as int).input(),
      virtualDiskId: map['virtualDiskId'] == null ? null : (map['virtualDiskId']! as String).input(),
    );
  }
}

