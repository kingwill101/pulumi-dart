// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupV2 resources.
class GroupV2State {
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
  /// The status of the firewall group.
  final pulumi.Input<String>? status;
  /// This argument conflicts and is interchangeable with
  /// `project_id`. The owner of the firewall group. Required if admin wants to
  /// create a firewall group for another tenant. Changing this creates a new
  /// firewall group.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GroupV2State].
  /// [adminStateUp] Administrative up/down status for the firewall
  /// [description] A description for the firewall group. Changing this
  /// [egressFirewallPolicyId] The egress firewall policy resource
  /// [ingressFirewallPolicyId] The ingress firewall policy resource
  /// [name] A name for the firewall group. Changing this
  /// [ports] Port(s) to associate this firewall group
  /// [projectId] This argument conflicts and  is interchangeable
  /// [region] The region in which to obtain the v2 networking client.
  /// [shared] Sharing status of the firewall group (must be "true"
  /// [status] The status of the firewall group.
  /// [tenantId] This argument conflicts and is interchangeable with
  GroupV2State({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? egressFirewallPolicyId,
    pulumi.Output<String>? ingressFirewallPolicyId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? ports,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      egressFirewallPolicyId = pulumi.Input.asOptionalInput<String>(egressFirewallPolicyId),
      ingressFirewallPolicyId = pulumi.Input.asOptionalInput<String>(ingressFirewallPolicyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      ports = pulumi.Input.asOptionalInput<List<String>>(ports),
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
      'ingressFirewallPolicyId': ?ingressFirewallPolicyId,
      'name': ?name,
      'ports': ?ports,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'status': ?status,
      'tenantId': ?tenantId,
    };
  }

  factory GroupV2State.fromMap(Map<String, dynamic> map) {
    return GroupV2State(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      egressFirewallPolicyId: map['egressFirewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['egressFirewallPolicyId'] as String),
      ingressFirewallPolicyId: map['ingressFirewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['ingressFirewallPolicyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ports: map['ports'] == null ? null : pulumi.Output.create<List<String>>((map['ports'] as List).cast<String>()),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

