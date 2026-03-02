// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_sku_response.dart';

/// The supported disk size details for a disk type.
class DiskDetailsResponse {
  /// The disk tier, e.g. P10, E10.
  final pulumi.Input<String>? diskTier;
  /// The disk Iops.
  final pulumi.Input<double>? iopsReadWrite;
  /// The maximum supported disk count.
  final pulumi.Input<double>? maximumSupportedDiskCount;
  /// The disk provisioned throughput in MBps.
  final pulumi.Input<double>? mbpsReadWrite;
  /// The minimum supported disk count.
  final pulumi.Input<double>? minimumSupportedDiskCount;
  /// The disk size in GB.
  final pulumi.Input<double>? sizeGB;
  /// The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
  final pulumi.Input<DiskSkuResponse>? sku;

  /// Creates a new [DiskDetailsResponse].
  /// [diskTier] The disk tier, e.g. P10, E10.
  /// [iopsReadWrite] The disk Iops.
  /// [maximumSupportedDiskCount] The maximum supported disk count.
  /// [mbpsReadWrite] The disk provisioned throughput in MBps.
  /// [minimumSupportedDiskCount] The minimum supported disk count.
  /// [sizeGB] The disk size in GB.
  /// [sku] The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
  DiskDetailsResponse({
    this.diskTier,
    this.iopsReadWrite,
    this.maximumSupportedDiskCount,
    this.mbpsReadWrite,
    this.minimumSupportedDiskCount,
    this.sizeGB,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskTier': ?diskTier,
      'iopsReadWrite': ?iopsReadWrite,
      'maximumSupportedDiskCount': ?maximumSupportedDiskCount,
      'mbpsReadWrite': ?mbpsReadWrite,
      'minimumSupportedDiskCount': ?minimumSupportedDiskCount,
      'sizeGB': ?sizeGB,
      'sku': ?pulumi.Input.mapOptionalInputValue<DiskSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory DiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DiskDetailsResponse(
      diskTier: map['diskTier'] == null ? null : (map['diskTier'] as String).input(),
      iopsReadWrite: map['iopsReadWrite'] == null ? null : (map['iopsReadWrite'] as double).input(),
      maximumSupportedDiskCount: map['maximumSupportedDiskCount'] == null ? null : (map['maximumSupportedDiskCount'] as double).input(),
      mbpsReadWrite: map['mbpsReadWrite'] == null ? null : (map['mbpsReadWrite'] as double).input(),
      minimumSupportedDiskCount: map['minimumSupportedDiskCount'] == null ? null : (map['minimumSupportedDiskCount'] as double).input(),
      sizeGB: map['sizeGB'] == null ? null : (map['sizeGB'] as double).input(),
      sku: map['sku'] == null ? null : (DiskSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

