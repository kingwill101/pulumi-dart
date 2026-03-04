// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_get_rule_v2_get_rule_v2_args_doc}
/// Arguments for getRuleV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_get_rule_v2_get_rule_v2_args_doc}
class GetRuleV2Args {
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

  /// Creates a new [GetRuleV2Args].
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
  GetRuleV2Args({
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

  factory GetRuleV2Args.fromMap(Map<String, dynamic> map) {
    return GetRuleV2Args(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationIpAddress: (() {
        final guardedValue = map['destinationIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationPort: (() {
        final guardedValue = map['destinationPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      firewallPolicyIds: (() {
        final guardedValue = map['firewallPolicyIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shared: (() {
        final guardedValue = map['shared'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceIpAddress: (() {
        final guardedValue = map['sourceIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourcePort: (() {
        final guardedValue = map['sourcePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
