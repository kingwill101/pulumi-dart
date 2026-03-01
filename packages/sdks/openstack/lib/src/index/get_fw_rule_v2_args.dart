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
    pulumi.Output<String>? action,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationIpAddress,
    pulumi.Output<String>? destinationPort,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? firewallPolicyIds,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleId,
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
      firewallPolicyIds = pulumi.Input.asOptionalInput<List<String>>(firewallPolicyIds),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationIpAddress: map['destinationIpAddress'] == null ? null : pulumi.Output.create<String>(map['destinationIpAddress'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<String>(map['destinationPort'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      firewallPolicyIds: map['firewallPolicyIds'] == null ? null : pulumi.Output.create<List<String>>((map['firewallPolicyIds'] as List).cast<String>()),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      sourceIpAddress: map['sourceIpAddress'] == null ? null : pulumi.Output.create<String>(map['sourceIpAddress'] as String),
      sourcePort: map['sourcePort'] == null ? null : pulumi.Output.create<String>(map['sourcePort'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

