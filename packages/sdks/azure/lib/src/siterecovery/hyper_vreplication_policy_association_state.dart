// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HyperVReplicationPolicyAssociation resources.
class HyperVReplicationPolicyAssociationState {
  /// The ID of the HyperV site to which the policy should be associated. Changing this forces a new association to be created.
  final pulumi.Input<String>? hypervSiteId;
  /// The name of the replication policy association. Changing this forces a new association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the HyperV replication policy which to be associated. Changing this forces a new association to be created.
  final pulumi.Input<String>? policyId;

  /// Creates a new [HyperVReplicationPolicyAssociationState].
  /// [hypervSiteId] The ID of the HyperV site to which the policy should be associated. Changing this forces a new association to be created.
  /// [name] The name of the replication policy association. Changing this forces a new association to be created.
  /// [policyId] The ID of the HyperV replication policy which to be associated. Changing this forces a new association to be created.
  HyperVReplicationPolicyAssociationState({
    pulumi.Output<String>? hypervSiteId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
  }) :
      hypervSiteId = pulumi.Input.asOptionalInput<String>(hypervSiteId),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervSiteId': ?hypervSiteId,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory HyperVReplicationPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return HyperVReplicationPolicyAssociationState(
      hypervSiteId: map['hypervSiteId'] == null ? null : pulumi.Output.create<String>(map['hypervSiteId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
    );
  }
}

