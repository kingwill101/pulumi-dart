// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_share_resources_get_share_resources_args_doc}
/// Arguments for getShareResources.
/// {@endtemplate}
/// {@macro pulumi_index_get_share_resources_get_share_resources_args_doc}
class GetShareResourcesArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter share resources by resource_type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final pulumi.Input<String?>? resourceType;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;
  /// Filter share resources by status.
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetShareResourcesArgs].
  /// [accountId] Account identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [resourceType] Filter share resources by resource_type.
  /// [shareId] Share identifier tag.
  /// [status] Filter share resources by status.
  const GetShareResourcesArgs({
    required this.accountId,
    this.maxItems,
    this.resourceType,
    required this.shareId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
      'resourceType': ?resourceType,
      'shareId': shareId,
      'status': ?status,
    };
  }

  factory GetShareResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetShareResourcesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
