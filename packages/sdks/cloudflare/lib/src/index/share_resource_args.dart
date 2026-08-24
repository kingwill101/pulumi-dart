// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_share_resource_share_resource_args_doc}
/// The set of arguments for ShareResource.
/// {@endtemplate}
/// {@macro pulumi_index_share_resource_share_resource_args_doc}
class ShareResourceArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Resource Metadata.
  final pulumi.Input<String> meta;
  /// Account identifier.
  final pulumi.Input<String> resourceAccountId;
  /// Share Resource identifier.
  final pulumi.Input<String> resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final pulumi.Input<String> resourceType;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;

  /// Creates a new [ShareResourceArgs].
  /// [accountId] Account identifier.
  /// [meta] Resource Metadata.
  /// [resourceAccountId] Account identifier.
  /// [resourceId] Share Resource identifier.
  /// [resourceType] Resource Type.
  /// [shareId] Share identifier tag.
  const ShareResourceArgs({
    required this.accountId,
    required this.meta,
    required this.resourceAccountId,
    required this.resourceId,
    required this.resourceType,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'meta': meta,
      'resourceAccountId': resourceAccountId,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'shareId': shareId,
    };
  }

  factory ShareResourceArgs.fromMap(Map<String, dynamic> map) {
    return ShareResourceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      meta: pulumi.Input.fromValue(map['meta'] as String),
      resourceAccountId: pulumi.Input.fromValue(map['resourceAccountId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
