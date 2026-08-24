// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_origin_cloud_regions_get_origin_cloud_regions_args_doc}
/// Arguments for getOriginCloudRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_origin_cloud_regions_get_origin_cloud_regions_args_doc}
class GetOriginCloudRegionsArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginCloudRegionsArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier.
  const GetOriginCloudRegionsArgs({
    this.maxItems,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': zoneId,
    };
  }

  factory GetOriginCloudRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginCloudRegionsArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
