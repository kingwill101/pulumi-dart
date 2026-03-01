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
  RbacPolicyV2Args({
    required pulumi.Output<String> action,
    required pulumi.Output<String> objectId,
    required pulumi.Output<String> objectType,
    pulumi.Output<String>? region,
    required pulumi.Output<String> targetTenant,
  }) :
      action = pulumi.Input.asInput<String>(action),
      objectId = pulumi.Input.asInput<String>(objectId),
      objectType = pulumi.Input.asInput<String>(objectType),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetTenant = pulumi.Input.asInput<String>(targetTenant);

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
      action: pulumi.Output.create<String>(map['action'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      objectType: pulumi.Output.create<String>(map['objectType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetTenant: pulumi.Output.create<String>(map['targetTenant'] as String),
    );
  }
}

