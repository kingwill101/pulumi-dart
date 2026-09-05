// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_application_rule_collection_rule_protocol.dart';

class FirewallApplicationRuleCollectionRule {
  /// Specifies a description for the rule.
  final pulumi.Input<String?>? description;
  /// A list of FQDN tags. Possible values are `AppServiceEnvironment`, `AzureBackup`, `AzureKubernetesService`, `HDInsight`, `MicrosoftActiveProtectionService`, `WindowsDiagnostics`, `WindowsUpdate` and `WindowsVirtualDesktop`.
  final pulumi.Input<List<String>?>? fqdnTags;
  /// Specifies the name of the rule.
  final pulumi.Input<String> name;
  /// One or more `protocol` blocks as defined below.
  final pulumi.Input<List<FirewallApplicationRuleCollectionRuleProtocol>?>? protocols;
  /// A list of source IP addresses and/or IP ranges.
  final pulumi.Input<List<String>?>? sourceAddresses;
  /// A list of source IP Group IDs for the rule.
  ///
  /// &gt; **Note:** At least one of `sourceAddresses` and `sourceIpGroups` must be specified for a rule.
  final pulumi.Input<List<String>?>? sourceIpGroups;
  /// A list of FQDNs.
  final pulumi.Input<List<String>?>? targetFqdns;

  /// Creates a new [FirewallApplicationRuleCollectionRule].
  /// [description] Specifies a description for the rule.
  /// [fqdnTags] A list of FQDN tags. Possible values are `AppServiceEnvironment`, `AzureBackup`, `AzureKubernetesService`, `HDInsight`, `MicrosoftActiveProtectionService`, `WindowsDiagnostics`, `WindowsUpdate` and `WindowsVirtualDesktop`.
  /// [name] Specifies the name of the rule.
  /// [protocols] One or more `protocol` blocks as defined below.
  /// [sourceAddresses] A list of source IP addresses and/or IP ranges.
  /// [sourceIpGroups] A list of source IP Group IDs for the rule.
  /// [targetFqdns] A list of FQDNs.
  const FirewallApplicationRuleCollectionRule({
    this.description,
    this.fqdnTags,
    required this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fqdnTags': ?fqdnTags,
      'name': name,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<FirewallApplicationRuleCollectionRuleProtocol>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<FirewallApplicationRuleCollectionRuleProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory FirewallApplicationRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallApplicationRuleCollectionRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdnTags: (() { final guardedValue = map['fqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallApplicationRuleCollectionRuleProtocol>(guardedValue, (value) => FirewallApplicationRuleCollectionRuleProtocol.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFqdns: (() { final guardedValue = map['targetFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
