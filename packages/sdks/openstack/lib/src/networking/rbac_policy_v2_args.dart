// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_rbac_policy_v2_rbac_policy_v2_args_doc}
/// The set of arguments for RbacPolicyV2.
/// {@endtemplate}
/// {@macro pulumi_networking_rbac_policy_v2_rbac_policy_v2_args_doc}
class RbacPolicyV2Args {
  /// Action for the RBAC policy. Can either be
  /// `access_as_external` or `access_as_shared`.
  final pulumi.Input<String> action;
  /// The ID of the `object_type` resource. An
  /// `object_type` of `network` returns a network ID and an `object_type` of
  /// `qos_policy` returns a QoS ID.
  final pulumi.Input<String> objectId;
  /// The type of the object that the RBAC policy
  /// affects. Can be one of the following: `address_scope`, `address_group`,
  /// `network`, `qos_policy`, `security_group`, `subnetpool` or `bgpvpn`.
  final pulumi.Input<String> objectType;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  final pulumi.Input<String>? region;
  /// The ID of the tenant to which the RBAC policy
  /// will be enforced.
  final pulumi.Input<String> targetTenant;

  /// Creates a new [RbacPolicyV2Args].
  /// [action] Action for the RBAC policy. Can either be
  /// [objectId] The ID of the `object_type` resource. An
  /// [objectType] The type of the object that the RBAC policy
  /// [region] The region in which to obtain the V2 networking client.
  /// [targetTenant] The ID of the tenant to which the RBAC policy
  const RbacPolicyV2Args({
    required this.action,
    required this.objectId,
    required this.objectType,
    this.region,
    required this.targetTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'objectId': objectId,
      'objectType': objectType,
      'region': ?region,
      'targetTenant': targetTenant,
    };
  }

  factory RbacPolicyV2Args.fromMap(Map<String, dynamic> map) {
    return RbacPolicyV2Args(
      action: pulumi.Input.fromValue(map['action'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTenant: pulumi.Input.fromValue(map['targetTenant'] as String),
    );
  }
}

