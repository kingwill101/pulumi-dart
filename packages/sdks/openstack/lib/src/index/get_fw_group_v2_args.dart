// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_fw_group_v2_get_fw_group_v2_args_doc}
/// Arguments for getFwGroupV2.
/// {@endtemplate}
/// {@macro pulumi_index_get_fw_group_v2_get_fw_group_v2_args_doc}
class GetFwGroupV2Args {
  /// Administrative up/down status for the firewall group.
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the firewall group.
  final pulumi.Input<String>? description;
  /// The egress policy ID of the firewall group.
  final pulumi.Input<String>? egressFirewallPolicyId;
  /// The ID of the firewall group.
  final pulumi.Input<String>? groupId;
  /// The ingress policy ID of the firewall group.
  final pulumi.Input<String>? ingressFirewallPolicyId;
  /// The name of the firewall group.
  final pulumi.Input<String>? name;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall group.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve firewall group ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The sharing status of the firewall group.
  final pulumi.Input<bool>? shared;
  /// Enabled status for the firewall group.
  final pulumi.Input<String>? status;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall group.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetFwGroupV2Args].
  /// [adminStateUp] Administrative up/down status for the firewall group.
  /// [description] Human-readable description of the firewall group.
  /// [egressFirewallPolicyId] The egress policy ID of the firewall group.
  /// [groupId] The ID of the firewall group.
  /// [ingressFirewallPolicyId] The ingress policy ID of the firewall group.
  /// [name] The name of the firewall group.
  /// [projectId] This argument conflicts and is interchangeable
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [shared] The sharing status of the firewall group.
  /// [status] Enabled status for the firewall group.
  /// [tenantId] This argument conflicts and is interchangeable
  GetFwGroupV2Args({
    this.adminStateUp,
    this.description,
    this.egressFirewallPolicyId,
    this.groupId,
    this.ingressFirewallPolicyId,
    this.name,
    this.projectId,
    this.region,
    this.shared,
    this.status,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'egressFirewallPolicyId': ?egressFirewallPolicyId,
      'groupId': ?groupId,
      'ingressFirewallPolicyId': ?ingressFirewallPolicyId,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'status': ?status,
      'tenantId': ?tenantId,
    };
  }

  factory GetFwGroupV2Args.fromMap(Map<String, dynamic> map) {
    return GetFwGroupV2Args(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      egressFirewallPolicyId: map['egressFirewallPolicyId'] == null ? null : (map['egressFirewallPolicyId'] as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      ingressFirewallPolicyId: map['ingressFirewallPolicyId'] == null ? null : (map['ingressFirewallPolicyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

