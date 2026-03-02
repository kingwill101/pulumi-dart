// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_sku.dart';

/// The disk configuration required for the selected volume.
class DiskVolumeConfiguration {
  /// The total number of disks required for the concerned volume.
  final pulumi.Input<double>? count;
  /// The disk size in GB.
  final pulumi.Input<double>? sizeGB;
  /// The disk SKU details.
  final pulumi.Input<DiskSku>? sku;

  /// Creates a new [DiskVolumeConfiguration].
  /// [count] The total number of disks required for the concerned volume.
  /// [sizeGB] The disk size in GB.
  /// [sku] The disk SKU details.
  DiskVolumeConfiguration({
    this.count,
    this.sizeGB,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'sizeGB': ?sizeGB,
      'sku': ?pulumi.Input.mapOptionalInputValue<DiskSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory DiskVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskVolumeConfiguration(
      count: map['count'] == null ? null : (map['count'] as double).input(),
      sizeGB: map['sizeGB'] == null ? null : (map['sizeGB'] as double).input(),
      sku: map['sku'] == null ? null : (DiskSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

