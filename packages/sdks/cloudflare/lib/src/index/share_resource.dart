// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareResource {
  /// Resource Metadata.
  final pulumi.Input<String> meta;
  /// Account identifier.
  final pulumi.Input<String> resourceAccountId;
  /// Share Resource identifier.
  final pulumi.Input<String> resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final pulumi.Input<String> resourceType;

  /// Creates a new [ShareResource].
  /// [meta] Resource Metadata.
  /// [resourceAccountId] Account identifier.
  /// [resourceId] Share Resource identifier.
  /// [resourceType] Resource Type.
  const ShareResource({
    required this.meta,
    required this.resourceAccountId,
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meta': meta,
      'resourceAccountId': resourceAccountId,
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory ShareResource.fromMap(Map<String, dynamic> map) {
    return ShareResource(
      meta: pulumi.Input.fromValue(map['meta'] as String),
      resourceAccountId: pulumi.Input.fromValue(map['resourceAccountId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
