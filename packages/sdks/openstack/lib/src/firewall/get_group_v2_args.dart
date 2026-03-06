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
  const GetGroupV2Args({
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

  factory GetGroupV2Args.fromMap(Map<String, dynamic> map) {
    return GetGroupV2Args(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressFirewallPolicyId: (() { final guardedValue = map['egressFirewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressFirewallPolicyId: (() { final guardedValue = map['ingressFirewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

