// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBlockIo {
  /// Sets the granularity for discard operations performed by the disk.
  final pulumi.Input<double>? discardGranularity;
  /// Specifies the logical block size of the disk, affecting read/write operations.
  final pulumi.Input<double>? logicalBlockSize;
  /// Configures the physical block size of the disk.
  final pulumi.Input<double>? physicalBlockSize;

  /// Creates a new [DomainDevicesDiskBlockIo].
  /// [discardGranularity] Sets the granularity for discard operations performed by the disk.
  /// [logicalBlockSize] Specifies the logical block size of the disk, affecting read/write operations.
  /// [physicalBlockSize] Configures the physical block size of the disk.
  DomainDevicesDiskBlockIo({
    this.discardGranularity,
    this.logicalBlockSize,
    this.physicalBlockSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardGranularity': ?discardGranularity,
      'logicalBlockSize': ?logicalBlockSize,
      'physicalBlockSize': ?physicalBlockSize,
    };
  }

  factory DomainDevicesDiskBlockIo.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBlockIo(
      discardGranularity: map['discardGranularity'] == null ? null : (map['discardGranularity']! as double).input(),
      logicalBlockSize: map['logicalBlockSize'] == null ? null : (map['logicalBlockSize']! as double).input(),
      physicalBlockSize: map['physicalBlockSize'] == null ? null : (map['physicalBlockSize']! as double).input(),
    );
  }
}

