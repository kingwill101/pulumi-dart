// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_sku_response.dart';

/// The disk configuration required for the selected volume.
class DiskVolumeConfigurationResponse {
  /// The total number of disks required for the concerned volume.
  final pulumi.Input<double>? count;

  /// The disk size in GB.
  final pulumi.Input<double>? sizeGB;

  /// The disk SKU details.
  final pulumi.Input<DiskSkuResponse>? sku;

  /// Creates a new [DiskVolumeConfigurationResponse].
  /// [count] The total number of disks required for the concerned volume.
  /// [sizeGB] The disk size in GB.
  /// [sku] The disk SKU details.
  DiskVolumeConfigurationResponse({this.count, this.sizeGB, this.sku});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'sizeGB': ?sizeGB,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            DiskSkuResponse,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
    };
  }

  factory DiskVolumeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DiskVolumeConfigurationResponse(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sizeGB: (() {
        final guardedValue = map['sizeGB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiskSkuResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
