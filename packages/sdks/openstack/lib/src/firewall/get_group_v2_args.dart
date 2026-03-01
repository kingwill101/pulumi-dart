// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_get_group_v2_get_group_v2_args_doc}
/// Arguments for getGroupV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_get_group_v2_get_group_v2_args_doc}
class GetGroupV2Args {
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

  /// Creates a new [GetGroupV2Args].
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
  GetGroupV2Args({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? egressFirewallPolicyId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? ingressFirewallPolicyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      egressFirewallPolicyId = pulumi.Input.asOptionalInput<String>(egressFirewallPolicyId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      ingressFirewallPolicyId = pulumi.Input.asOptionalInput<String>(ingressFirewallPolicyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      status = pulumi.Input.asOptionalInput<String>(status),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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

  factory GetGroupV2Args.fromMap(Map<String, dynamic> map) {
    return GetGroupV2Args(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      egressFirewallPolicyId: map['egressFirewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['egressFirewallPolicyId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      ingressFirewallPolicyId: map['ingressFirewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['ingressFirewallPolicyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

