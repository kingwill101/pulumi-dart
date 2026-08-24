// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_origin_cloud_region_get_origin_cloud_region_args_doc}
/// Arguments for getOriginCloudRegion.
/// {@endtemplate}
/// {@macro pulumi_index_get_origin_cloud_region_get_origin_cloud_region_args_doc}
class GetOriginCloudRegionArgs {
  final pulumi.Input<String> originIp;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginCloudRegionArgs].
  /// [originIp] Required.
  /// [zoneId] Identifier.
  const GetOriginCloudRegionArgs({
    required this.originIp,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originIp': originIp,
      'zoneId': zoneId,
    };
  }

  factory GetOriginCloudRegionArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginCloudRegionArgs(
      originIp: pulumi.Input.fromValue(map['originIp'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
