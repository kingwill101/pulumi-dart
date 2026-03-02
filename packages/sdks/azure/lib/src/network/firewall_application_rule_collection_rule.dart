// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_application_rule_collection_rule_protocol.dart';

class FirewallApplicationRuleCollectionRule {
  /// Specifies a description for the rule.
  final pulumi.Input<String>? description;
  /// A list of FQDN tags. Possible values are `AppServiceEnvironment`, `AzureBackup`, `AzureKubernetesService`, `HDInsight`, `MicrosoftActiveProtectionService`, `WindowsDiagnostics`, `WindowsUpdate` and `WindowsVirtualDesktop`.
  final pulumi.Input<List<String>>? fqdnTags;
  /// Specifies the name of the rule.
  final pulumi.Input<String> name;
  /// One or more `protocol` blocks as defined below.
  final pulumi.Input<List<FirewallApplicationRuleCollectionRuleProtocol>>? protocols;
  /// A list of source IP addresses and/or IP ranges.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// A list of source IP Group IDs for the rule.
  ///
  /// > **Note:** At least one of `source_addresses` and `source_ip_groups` must be specified for a rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// A list of FQDNs.
  final pulumi.Input<List<String>>? targetFqdns;

  /// Creates a new [FirewallApplicationRuleCollectionRule].
  /// [description] Specifies a description for the rule.
  /// [fqdnTags] A list of FQDN tags. Possible values are `AppServiceEnvironment`, `AzureBackup`, `AzureKubernetesService`, `HDInsight`, `MicrosoftActiveProtectionService`, `WindowsDiagnostics`, `WindowsUpdate` and `WindowsVirtualDesktop`.
  /// [name] Specifies the name of the rule.
  /// [protocols] One or more `protocol` blocks as defined below.
  /// [sourceAddresses] A list of source IP addresses and/or IP ranges.
  /// [sourceIpGroups] A list of source IP Group IDs for the rule.
  /// [targetFqdns] A list of FQDNs.
  FirewallApplicationRuleCollectionRule({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fqdnTags: map['fqdnTags'] == null ? null : ((map['fqdnTags'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      protocols: map['protocols'] == null ? null : (pulumi.Input.decodeList<FirewallApplicationRuleCollectionRuleProtocol>(map['protocols'], (value) => FirewallApplicationRuleCollectionRuleProtocol.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses'] as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups'] as List).cast<String>()).input(),
      targetFqdns: map['targetFqdns'] == null ? null : ((map['targetFqdns'] as List).cast<String>()).input(),
    );
  }
}

