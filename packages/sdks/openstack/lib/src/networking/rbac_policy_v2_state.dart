// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RbacPolicyV2 resources.
class RbacPolicyV2State {
  /// Action for the RBAC policy. Can either be
  /// `access_as_external` or `access_as_shared`.
  final pulumi.Input<String>? action;
  /// The ID of the `object_type` resource. An
  /// `object_type` of `network` returns a network ID and an `object_type` of
  /// `qos_policy` returns a QoS ID.
  final pulumi.Input<String>? objectId;
  /// The type of the object that the RBAC policy
  /// affects. Can be one of the following: `address_scope`, `address_group`,
  /// `network`, `qos_policy`, `security_group`, `subnetpool` or `bgpvpn`.
  final pulumi.Input<String>? objectType;
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  final pulumi.Input<String>? region;
  /// The ID of the tenant to which the RBAC policy
  /// will be enforced.
  final pulumi.Input<String>? targetTenant;

  /// Creates a new [RbacPolicyV2State].
  /// [action] Action for the RBAC policy. Can either be
  /// [objectId] The ID of the `object_type` resource. An
  /// [objectType] The type of the object that the RBAC policy
  /// [projectId] Optional.
  /// [region] The region in which to obtain the V2 networking client.
  /// [targetTenant] The ID of the tenant to which the RBAC policy
  RbacPolicyV2State({
    pulumi.Output<String>? action,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? objectType,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetTenant,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      objectType = pulumi.Input.asOptionalInput<String>(objectType),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetTenant = pulumi.Input.asOptionalInput<String>(targetTenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'objectId': ?objectId,
      'objectType': ?objectType,
      'projectId': ?projectId,
      'region': ?region,
      'targetTenant': ?targetTenant,
    };
  }

  factory RbacPolicyV2State.fromMap(Map<String, dynamic> map) {
    return RbacPolicyV2State(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      objectType: map['objectType'] == null ? null : pulumi.Output.create<String>(map['objectType'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetTenant: map['targetTenant'] == null ? null : pulumi.Output.create<String>(map['targetTenant'] as String),
    );
  }
}

