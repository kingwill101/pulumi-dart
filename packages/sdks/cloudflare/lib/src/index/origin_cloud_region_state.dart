// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginCloudRegion resources.
class OriginCloudRegionState {
  /// Time this mapping was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Origin IP address (IPv4 or IPv6). For the single PUT endpoint (`PUT /origin/cloud_regions/{origin_ip}`), this field must match the path parameter or the request will be rejected with a 400 error. For the batch PUT endpoint, this field identifies which mapping to upsert.
  final pulumi.Input<String?>? originIp;
  /// Cloud vendor region identifier. Must be a valid region for the specified vendor as returned by the supportedRegions endpoint.
  final pulumi.Input<String?>? region;
  /// Cloud vendor hosting the origin. Must be one of the supported vendors.
  /// Available values: "aws", "azure", "gcp", "oci".
  final pulumi.Input<String?>? vendor;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [OriginCloudRegionState].
  /// [modifiedOn] Time this mapping was last modified.
  /// [originIp] Origin IP address (IPv4 or IPv6). For the single PUT endpoint (`PUT /origin/cloud_regions/{origin_ip}`), this field must match the path parameter or the request will be rejected with a 400 error. For the batch PUT endpoint, this field identifies which mapping to upsert.
  /// [region] Cloud vendor region identifier. Must be a valid region for the specified vendor as returned by the supportedRegions endpoint.
  /// [vendor] Cloud vendor hosting the origin. Must be one of the supported vendors.
  /// [zoneId] Identifier.
  const OriginCloudRegionState({
    this.modifiedOn,
    this.originIp,
    this.region,
    this.vendor,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedOn': ?modifiedOn,
      'originIp': ?originIp,
      'region': ?region,
      'vendor': ?vendor,
      'zoneId': ?zoneId,
    };
  }

  factory OriginCloudRegionState.fromMap(Map<String, dynamic> map) {
    return OriginCloudRegionState(
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originIp: (() { final guardedValue = map['originIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
