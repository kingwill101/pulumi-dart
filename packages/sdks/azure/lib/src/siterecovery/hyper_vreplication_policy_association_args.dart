// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_hyper_vreplication_policy_association_hyper_vreplication_policy_association_args_doc}
/// The set of arguments for HyperVReplicationPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_hyper_vreplication_policy_association_hyper_vreplication_policy_association_args_doc}
class HyperVReplicationPolicyAssociationArgs {
  /// The ID of the HyperV site to which the policy should be associated. Changing this forces a new association to be created.
  final pulumi.Input<String> hypervSiteId;
  /// The name of the replication policy association. Changing this forces a new association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the HyperV replication policy which to be associated. Changing this forces a new association to be created.
  final pulumi.Input<String> policyId;

  /// Creates a new [HyperVReplicationPolicyAssociationArgs].
  /// [hypervSiteId] The ID of the HyperV site to which the policy should be associated. Changing this forces a new association to be created.
  /// [name] The name of the replication policy association. Changing this forces a new association to be created.
  /// [policyId] The ID of the HyperV replication policy which to be associated. Changing this forces a new association to be created.
  const HyperVReplicationPolicyAssociationArgs({
    required this.hypervSiteId,
    this.name,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervSiteId': hypervSiteId,
      'name': ?name,
      'policyId': policyId,
    };
  }

  factory HyperVReplicationPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return HyperVReplicationPolicyAssociationArgs(
      hypervSiteId: pulumi.Input.fromValue(map['hypervSiteId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
