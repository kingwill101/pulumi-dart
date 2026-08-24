// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_origin_cloud_region_origin_cloud_region_args_doc}
/// The set of arguments for OriginCloudRegion.
/// {@endtemplate}
/// {@macro pulumi_index_origin_cloud_region_origin_cloud_region_args_doc}
class OriginCloudRegionArgs {
  /// Origin IP address (IPv4 or IPv6). For the single PUT endpoint (`PUT /origin/cloud_regions/{origin_ip}`), this field must match the path parameter or the request will be rejected with a 400 error. For the batch PUT endpoint, this field identifies which mapping to upsert.
  final pulumi.Input<String> originIp;
  /// Cloud vendor region identifier. Must be a valid region for the specified vendor as returned by the supportedRegions endpoint.
  final pulumi.Input<String> region;
  /// Cloud vendor hosting the origin. Must be one of the supported vendors.
  /// Available values: "aws", "azure", "gcp", "oci".
  final pulumi.Input<String> vendor;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [OriginCloudRegionArgs].
  /// [originIp] Origin IP address (IPv4 or IPv6). For the single PUT endpoint (`PUT /origin/cloud_regions/{origin_ip}`), this field must match the path parameter or the request will be rejected with a 400 error. For the batch PUT endpoint, this field identifies which mapping to upsert.
  /// [region] Cloud vendor region identifier. Must be a valid region for the specified vendor as returned by the supportedRegions endpoint.
  /// [vendor] Cloud vendor hosting the origin. Must be one of the supported vendors.
  /// [zoneId] Identifier.
  const OriginCloudRegionArgs({
    required this.originIp,
    required this.region,
    required this.vendor,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originIp': originIp,
      'region': region,
      'vendor': vendor,
      'zoneId': zoneId,
    };
  }

  factory OriginCloudRegionArgs.fromMap(Map<String, dynamic> map) {
    return OriginCloudRegionArgs(
      originIp: pulumi.Input.fromValue(map['originIp'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
