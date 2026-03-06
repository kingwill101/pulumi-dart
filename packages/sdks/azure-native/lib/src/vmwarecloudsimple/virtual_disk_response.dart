// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual disk model
class VirtualDiskResponse {
  /// Disk's Controller id
  final pulumi.Input<String> controllerId;
  /// Disk's independence mode type
  final pulumi.Input<String> independenceMode;
  /// Disk's total size
  final pulumi.Input<int> totalSize;
  /// Disk's id
  final pulumi.Input<String>? virtualDiskId;
  /// Disk's display name
  final pulumi.Input<String> virtualDiskName;

  /// Creates a new [VirtualDiskResponse].
  /// [controllerId] Disk's Controller id
  /// [independenceMode] Disk's independence mode type
  /// [totalSize] Disk's total size
  /// [virtualDiskId] Disk's id
  /// [virtualDiskName] Disk's display name
  const VirtualDiskResponse({
    required this.controllerId,
    required this.independenceMode,
    required this.totalSize,
    this.virtualDiskId,
    required this.virtualDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerId': controllerId,
      'independenceMode': independenceMode,
      'totalSize': totalSize,
      'virtualDiskId': ?virtualDiskId,
      'virtualDiskName': virtualDiskName,
    };
  }

  factory VirtualDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDiskResponse(
      controllerId: pulumi.Input.fromValue(map['controllerId'] as String),
      independenceMode: pulumi.Input.fromValue(map['independenceMode'] as String),
      totalSize: pulumi.Input.fromValue(map['totalSize'] as int),
      virtualDiskId: (() { final guardedValue = map['virtualDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualDiskName: pulumi.Input.fromValue(map['virtualDiskName'] as String),
    );
  }
}

