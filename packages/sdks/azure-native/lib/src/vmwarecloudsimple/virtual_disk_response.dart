// ignore_for_file: unused_element, unnecessary_cast


/// Virtual disk model
class VirtualDiskResponse {
  /// Disk's Controller id
  final String controllerId;
  /// Disk's independence mode type
  final String independenceMode;
  /// Disk's total size
  final int totalSize;
  /// Disk's id
  final String? virtualDiskId;
  /// Disk's display name
  final String virtualDiskName;

  /// Creates a new [VirtualDiskResponse].
  /// [controllerId] Disk's Controller id
  /// [independenceMode] Disk's independence mode type
  /// [totalSize] Disk's total size
  /// [virtualDiskId] Disk's id
  /// [virtualDiskName] Disk's display name
  VirtualDiskResponse({
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
      controllerId: map['controllerId'] as String,
      independenceMode: map['independenceMode'] as String,
      totalSize: map['totalSize'] as int,
      virtualDiskId: map['virtualDiskId'] == null ? null : map['virtualDiskId'] as String,
      virtualDiskName: map['virtualDiskName'] as String,
    );
  }
}

