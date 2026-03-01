// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_synapse_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The ending IP address to allow through the firewall for this rule.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0`.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` requires the `name` to be `AllowAllWindowsAzureIps`.
  final pulumi.Input<String> endIpAddress;
  /// The Name of the firewall rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The starting IP address to allow through the firewall for this rule.
  final pulumi.Input<String> startIpAddress;
  /// The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] The ending IP address to allow through the firewall for this rule.
  /// [name] The Name of the firewall rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The starting IP address to allow through the firewall for this rule.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created.
  FirewallRuleArgs({
    required pulumi.Output<String> endIpAddress,
    pulumi.Output<String>? name,
    required pulumi.Output<String> startIpAddress,
    required pulumi.Output<String> synapseWorkspaceId,
  }) :
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'name': ?name,
      'startIpAddress': startIpAddress,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: pulumi.Output.create<String>(map['endIpAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startIpAddress: pulumi.Output.create<String>(map['startIpAddress'] as String),
      synapseWorkspaceId: pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
    );
  }
}

