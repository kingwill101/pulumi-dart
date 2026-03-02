// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_source_device_free_extent.dart';

class PoolSourceDevice {
  /// Controls the free extents available for allocation within the source device.
  final pulumi.Input<List<PoolSourceDeviceFreeExtent>>? freeExtents;
  /// Configures the separator character used for partitioning in the device path.
  final pulumi.Input<String>? partSeparator;
  /// Specifies the physical path to the device used as the source for the storage pool.
  final pulumi.Input<String> path;

  /// Creates a new [PoolSourceDevice].
  /// [freeExtents] Controls the free extents available for allocation within the source device.
  /// [partSeparator] Configures the separator character used for partitioning in the device path.
  /// [path] Specifies the physical path to the device used as the source for the storage pool.
  PoolSourceDevice({
    this.freeExtents,
    this.partSeparator,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'freeExtents': ?pulumi.Input.mapOptionalInputValue<List<PoolSourceDeviceFreeExtent>, List<Map<String, dynamic>>>(freeExtents, (value) => pulumi.Input.encodeList<PoolSourceDeviceFreeExtent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partSeparator': ?partSeparator,
      'path': path,
    };
  }

  factory PoolSourceDevice.fromMap(Map<String, dynamic> map) {
    return PoolSourceDevice(
      freeExtents: map['freeExtents'] == null ? null : (pulumi.Input.decodeList<PoolSourceDeviceFreeExtent>(map['freeExtents'], (value) => PoolSourceDeviceFreeExtent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partSeparator: map['partSeparator'] == null ? null : (map['partSeparator'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

