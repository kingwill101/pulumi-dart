// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuleV2 resources.
class RuleV2State {
  /// Action to be taken (must be "allow", "deny" or "reject")
  /// when the firewall rule matches. Changing this updates the `action` of an
  /// existing firewall rule. Default is `deny`.
  final pulumi.Input<String>? action;
  /// A description for the firewall rule. Changing this
  /// updates the `description` of an existing firewall rule.
  final pulumi.Input<String>? description;
  /// The destination IP address on which the
  /// firewall rule operates. Changing this updates the `destination_ip_address`
  /// of an existing firewall rule.
  final pulumi.Input<String>? destinationIpAddress;
  /// The destination port on which the firewall
  /// rule operates. Changing this updates the `destination_port` of an existing
  /// firewall rule. Require not `any` or empty protocol.
  final pulumi.Input<String>? destinationPort;
  /// Enabled status for the firewall rule (must be "true"
  /// or "false" if provided - defaults to "true"). Changing this updates the
  /// `enabled` status of an existing firewall rule.
  final pulumi.Input<bool>? enabled;
  /// IP version, either 4 or 6. Changing this
  /// updates the `ip_version` of an existing firewall rule. Default is `4`.
  final pulumi.Input<int>? ipVersion;
  /// A unique name for the firewall rule. Changing this
  /// updates the `name` of an existing firewall rule.
  final pulumi.Input<String>? name;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall rule. Required if admin wants
  /// to create a firewall rule for another project. Changing this creates a new
  /// firewall rule.
  final pulumi.Input<String>? projectId;
  /// (Optional; Required if `source_port` or `destination_port` is not
  /// empty) The protocol type on which the firewall rule operates.
  /// Valid values are: `tcp`, `udp`, `icmp`, and `any`. Changing this updates the
  /// `protocol` of an existing firewall rule. Default is `any`.
  final pulumi.Input<String>? protocol;
  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall rule.
  final pulumi.Input<String>? region;
  /// Sharing status of the firewall rule (must be "true"
  /// or "false" if provided). If this is "true" the policy is visible to, and
  /// can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall policy. On
  final pulumi.Input<bool>? shared;
  /// The source IP address on which the firewall
  /// rule operates. Changing this updates the `source_ip_address` of an existing
  /// firewall rule.
  final pulumi.Input<String>? sourceIpAddress;
  /// The source port on which the firewall
  /// rule operates. Changing this updates the `source_port` of an existing
  /// firewall rule. Require not `any` or empty protocol.
  final pulumi.Input<String>? sourcePort;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall rule. Required if admin wants
  /// to create a firewall rule for another tenant. Changing this creates a new
  /// firewall rule.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [RuleV2State].
  /// [action] Action to be taken (must be "allow", "deny" or "reject")
  /// [description] A description for the firewall rule. Changing this
  /// [destinationIpAddress] The destination IP address on which the
  /// [destinationPort] The destination port on which the firewall
  /// [enabled] Enabled status for the firewall rule (must be "true"
  /// [ipVersion] IP version, either 4 or 6. Changing this
  /// [name] A unique name for the firewall rule. Changing this
  /// [projectId] This argument conflicts and is interchangeable
  /// [protocol] (Optional; Required if `source_port` or `destination_port` is not
  /// [region] The region in which to obtain the v2 networking client.
  /// [shared] Sharing status of the firewall rule (must be "true"
  /// [sourceIpAddress] The source IP address on which the firewall
  /// [sourcePort] The source port on which the firewall
  /// [tenantId] This argument conflicts and is interchangeable
  RuleV2State({
    pulumi.Output<String>? action,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationIpAddress,
    pulumi.Output<String>? destinationPort,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<String>? sourceIpAddress,
    pulumi.Output<String>? sourcePort,
    pulumi.Output<String>? tenantId,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationIpAddress = pulumi.Input.asOptionalInput<String>(destinationIpAddress),
      destinationPort = pulumi.Input.asOptionalInput<String>(destinationPort),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      sourceIpAddress = pulumi.Input.asOptionalInput<String>(sourceIpAddress),
      sourcePort = pulumi.Input.asOptionalInput<String>(sourcePort),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'destinationIpAddress': ?destinationIpAddress,
      'destinationPort': ?destinationPort,
      'enabled': ?enabled,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': ?projectId,
      'protocol': ?protocol,
      'region': ?region,
      'shared': ?shared,
      'sourceIpAddress': ?sourceIpAddress,
      'sourcePort': ?sourcePort,
      'tenantId': ?tenantId,
    };
  }

  factory RuleV2State.fromMap(Map<String, dynamic> map) {
    return RuleV2State(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationIpAddress: map['destinationIpAddress'] == null ? null : pulumi.Output.create<String>(map['destinationIpAddress'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<String>(map['destinationPort'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      sourceIpAddress: map['sourceIpAddress'] == null ? null : pulumi.Output.create<String>(map['sourceIpAddress'] as String),
      sourcePort: map['sourcePort'] == null ? null : pulumi.Output.create<String>(map['sourcePort'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

