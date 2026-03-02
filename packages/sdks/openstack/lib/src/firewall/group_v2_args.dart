// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_group_v2_group_v2_args_doc}
/// The set of arguments for GroupV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_group_v2_group_v2_args_doc}
class GroupV2Args {
  /// Administrative up/down status for the firewall
  /// group (must be "true" or "false" if provided - defaults to "true").
  /// Changing this updates the `admin_state_up` of an existing firewall group.
  final pulumi.Input<bool>? adminStateUp;
  /// A description for the firewall group. Changing this
  /// updates the `description` of an existing firewall group.
  final pulumi.Input<String>? description;
  /// The egress firewall policy resource
  /// id for the firewall group. Changing this updates the
  /// `egress_firewall_policy_id` of an existing firewall group.
  final pulumi.Input<String>? egressFirewallPolicyId;
  /// The ingress firewall policy resource
  /// id for the firewall group. Changing this updates the
  /// `ingress_firewall_policy_id` of an existing firewall group.
  final pulumi.Input<String>? ingressFirewallPolicyId;
  /// A name for the firewall group. Changing this
  /// updates the `name` of an existing firewall.
  final pulumi.Input<String>? name;
  /// Port(s) to associate this firewall group
  /// with. Must be a list of strings. Changing this updates the associated ports
  /// of an existing firewall group.
  final pulumi.Input<List<String>>? ports;
  /// This argument conflicts and  is interchangeable
  /// with `tenant_id`. The owner of the firewall group. Required if admin wants
  /// to create a firewall group for another project. Changing this creates a new
  /// firewall group.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall group.
  final pulumi.Input<String>? region;
  /// Sharing status of the firewall group (must be "true"
  /// or "false" if provided). If this is "true" the firewall group is visible to,
  /// and can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall group. Only administrative users
  /// can specify if the firewall group should be shared.
  final pulumi.Input<bool>? shared;
  /// This argument conflicts and is interchangeable with
  /// `project_id`. The owner of the firewall group. Required if admin wants to
  /// create a firewall group for another tenant. Changing this creates a new
  /// firewall group.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GroupV2Args].
  /// [adminStateUp] Administrative up/down status for the firewall
  /// [description] A description for the firewall group. Changing this
  /// [egressFirewallPolicyId] The egress firewall policy resource
  /// [ingressFirewallPolicyId] The ingress firewall policy resource
  /// [name] A name for the firewall group. Changing this
  /// [ports] Port(s) to associate this firewall group
  /// [projectId] This argument conflicts and  is interchangeable
  /// [region] The region in which to obtain the v2 networking client.
  /// [shared] Sharing status of the firewall group (must be "true"
  /// [tenantId] This argument conflicts and is interchangeable with
  GroupV2Args({
    this.adminStateUp,
    this.description,
    this.egressFirewallPolicyId,
    this.ingressFirewallPolicyId,
    this.name,
    this.ports,
    this.projectId,
    this.region,
    this.shared,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'egressFirewallPolicyId': ?egressFirewallPolicyId,
      'ingressFirewallPolicyId': ?ingressFirewallPolicyId,
      'name': ?name,
      'ports': ?ports,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tenantId': ?tenantId,
    };
  }

  factory GroupV2Args.fromMap(Map<String, dynamic> map) {
    return GroupV2Args(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      egressFirewallPolicyId: map['egressFirewallPolicyId'] == null ? null : (map['egressFirewallPolicyId']! as String).input(),
      ingressFirewallPolicyId: map['ingressFirewallPolicyId'] == null ? null : (map['ingressFirewallPolicyId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ports: map['ports'] == null ? null : ((map['ports']! as List).cast<String>()).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      shared: map['shared'] == null ? null : (map['shared']! as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

