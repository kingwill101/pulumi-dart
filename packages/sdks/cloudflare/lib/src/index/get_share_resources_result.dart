// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareResourcesResult {
  /// When the share was created.
  final pulumi.Input<String> created;
  /// Share Resource identifier.
  final pulumi.Input<String> id;
  /// Resource Metadata.
  final pulumi.Input<String> meta;
  /// When the share was modified.
  final pulumi.Input<String> modified;
  /// Account identifier.
  final pulumi.Input<String> resourceAccountId;
  /// Share Resource identifier.
  final pulumi.Input<String> resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final pulumi.Input<String> resourceType;
  /// Resource Version.
  final pulumi.Input<int> resourceVersion;
  /// Resource Status.
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String> status;

  /// Creates a new [GetShareResourcesResult].
  /// [created] When the share was created.
  /// [id] Share Resource identifier.
  /// [meta] Resource Metadata.
  /// [modified] When the share was modified.
  /// [resourceAccountId] Account identifier.
  /// [resourceId] Share Resource identifier.
  /// [resourceType] Resource Type.
  /// [resourceVersion] Resource Version.
  /// [status] Resource Status.
  const GetShareResourcesResult({
    required this.created,
    required this.id,
    required this.meta,
    required this.modified,
    required this.resourceAccountId,
    required this.resourceId,
    required this.resourceType,
    required this.resourceVersion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'meta': meta,
      'modified': modified,
      'resourceAccountId': resourceAccountId,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'resourceVersion': resourceVersion,
      'status': status,
    };
  }

  factory GetShareResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetShareResourcesResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(map['meta'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      resourceAccountId: pulumi.Input.fromValue(map['resourceAccountId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      resourceVersion: pulumi.Input.fromValue((map['resourceVersion'] as num).toInt()),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
