// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_fw_rule_v2_get_fw_rule_v2_args_doc}
/// Arguments for getFwRuleV2.
/// {@endtemplate}
/// {@macro pulumi_index_get_fw_rule_v2_get_fw_rule_v2_args_doc}
class GetFwRuleV2Args {
  /// Action to be taken when the firewall rule matches.
  final pulumi.Input<String>? action;
  /// The description of the firewall rule.
  final pulumi.Input<String>? description;
  /// The destination IP address on which the
  /// firewall rule operates.
  final pulumi.Input<String>? destinationIpAddress;
  /// The destination port on which the firewall
  /// rule operates.
  final pulumi.Input<String>? destinationPort;
  /// Enabled status for the firewall rule.
  final pulumi.Input<bool>? enabled;
  /// The ID of the firewall policy the rule belongs to.
  final pulumi.Input<List<String>>? firewallPolicyIds;
  /// IP version, either 4 (default) or 6.
  final pulumi.Input<int>? ipVersion;
  /// The name of the firewall rule.
  final pulumi.Input<String>? name;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall rule.
  final pulumi.Input<String>? projectId;
  /// The protocol type on which the firewall rule operates.
  final pulumi.Input<String>? protocol;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve firewall policy ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The ID of the firewall rule.
  final pulumi.Input<String>? ruleId;
  /// The sharing status of the firewall policy.
  final pulumi.Input<bool>? shared;
  /// The source IP address on which the firewall
  /// rule operates.
  final pulumi.Input<String>? sourceIpAddress;
  /// The source port on which the firewall
  /// rule operates.
  final pulumi.Input<String>? sourcePort;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall rule.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetFwRuleV2Args].
  /// [action] Action to be taken when the firewall rule matches.
  /// [description] The description of the firewall rule.
  /// [destinationIpAddress] The destination IP address on which the
  /// [destinationPort] The destination port on which the firewall
  /// [enabled] Enabled status for the firewall rule.
  /// [firewallPolicyIds] The ID of the firewall policy the rule belongs to.
  /// [ipVersion] IP version, either 4 (default) or 6.
  /// [name] The name of the firewall rule.
  /// [projectId] This argument conflicts and is interchangeable
  /// [protocol] The protocol type on which the firewall rule operates.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [ruleId] The ID of the firewall rule.
  /// [shared] The sharing status of the firewall policy.
  /// [sourceIpAddress] The source IP address on which the firewall
  /// [sourcePort] The source port on which the firewall
  /// [tenantId] This argument conflicts and is interchangeable
  GetFwRuleV2Args({
    this.action,
    this.description,
    this.destinationIpAddress,
    this.destinationPort,
    this.enabled,
    this.firewallPolicyIds,
    this.ipVersion,
    this.name,
    this.projectId,
    this.protocol,
    this.region,
    this.ruleId,
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
      'firewallPolicyIds': ?firewallPolicyIds,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': ?projectId,
      'protocol': ?protocol,
      'region': ?region,
      'ruleId': ?ruleId,
      'shared': ?shared,
      'sourceIpAddress': ?sourceIpAddress,
      'sourcePort': ?sourcePort,
      'tenantId': ?tenantId,
    };
  }

  factory GetFwRuleV2Args.fromMap(Map<String, dynamic> map) {
    return GetFwRuleV2Args(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationIpAddress: map['destinationIpAddress'] == null ? null : (map['destinationIpAddress'] as String).input(),
      destinationPort: map['destinationPort'] == null ? null : (map['destinationPort'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      firewallPolicyIds: map['firewallPolicyIds'] == null ? null : ((map['firewallPolicyIds'] as List).cast<String>()).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId'] as String).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      sourceIpAddress: map['sourceIpAddress'] == null ? null : (map['sourceIpAddress'] as String).input(),
      sourcePort: map['sourcePort'] == null ? null : (map['sourcePort'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

