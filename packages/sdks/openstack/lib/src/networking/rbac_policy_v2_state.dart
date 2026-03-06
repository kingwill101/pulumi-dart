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
  const RbacPolicyV2State({
    this.action,
    this.objectId,
    this.objectType,
    this.projectId,
    this.region,
    this.targetTenant,
  });

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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTenant: (() { final guardedValue = map['targetTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

