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
  const RuleV2State({
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

  factory RuleV2State.fromMap(Map<String, dynamic> map) {
    return RuleV2State(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationIpAddress: (() { final guardedValue = map['destinationIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceIpAddress: (() { final guardedValue = map['sourceIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePort: (() { final guardedValue = map['sourcePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

