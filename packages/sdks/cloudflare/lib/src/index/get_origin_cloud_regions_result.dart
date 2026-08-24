// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginCloudRegionsResult {
  /// The origin IP address (IPv4 or IPv6). Normalized to canonical form (RFC 5952 for IPv6).
  final pulumi.Input<String> id;
  /// Time this mapping was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The origin IP address (IPv4 or IPv6). Normalized to canonical form (RFC 5952 for IPv6).
  final pulumi.Input<String> originIp;
  /// Cloud vendor region identifier.
  final pulumi.Input<String> region;
  /// Cloud vendor hosting the origin.
  /// Available values: "aws", "azure", "gcp", "oci".
  final pulumi.Input<String> vendor;

  /// Creates a new [GetOriginCloudRegionsResult].
  /// [id] The origin IP address (IPv4 or IPv6). Normalized to canonical form (RFC 5952 for IPv6).
  /// [modifiedOn] Time this mapping was last modified.
  /// [originIp] The origin IP address (IPv4 or IPv6). Normalized to canonical form (RFC 5952 for IPv6).
  /// [region] Cloud vendor region identifier.
  /// [vendor] Cloud vendor hosting the origin.
  const GetOriginCloudRegionsResult({
    required this.id,
    required this.modifiedOn,
    required this.originIp,
    required this.region,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'modifiedOn': modifiedOn,
      'originIp': originIp,
      'region': region,
      'vendor': vendor,
    };
  }

  factory GetOriginCloudRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetOriginCloudRegionsResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      originIp: pulumi.Input.fromValue(map['originIp'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
    );
  }
}
