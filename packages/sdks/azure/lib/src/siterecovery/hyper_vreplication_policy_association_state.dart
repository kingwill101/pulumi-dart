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
    this.hypervSiteId,
    this.name,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervSiteId': ?hypervSiteId,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory HyperVReplicationPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return HyperVReplicationPolicyAssociationState(
      hypervSiteId: (() { final guardedValue = map['hypervSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

