// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_rule_v2_rule_v2_args_doc}
/// The set of arguments for RuleV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_rule_v2_rule_v2_args_doc}
class RuleV2Args {
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

  /// Creates a new [RuleV2Args].
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
  RuleV2Args({
    this.action,
    this.description,
    this.destinationIpAddress,
    this.destinationPort,
    this.enabled,
    this.ipVersion,
    this.name,
    this.projectId,
    this.protocol,
    this.region,
    this.shared,
    this.sourceIpAddress,
    this.sourcePort,
    this.tenantId,
  });

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

  factory RuleV2Args.fromMap(Map<String, dynamic> map) {
    return RuleV2Args(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationIpAddress: map['destinationIpAddress'] == null ? null : (map['destinationIpAddress'] as String).input(),
      destinationPort: map['destinationPort'] == null ? null : (map['destinationPort'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      sourceIpAddress: map['sourceIpAddress'] == null ? null : (map['sourceIpAddress'] as String).input(),
      sourcePort: map['sourcePort'] == null ? null : (map['sourcePort'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

