// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_rule_category.dart';
import 'local_rulestack_rule_destination.dart';
import 'local_rulestack_rule_source.dart';

/// {@template pulumi_paloalto_local_rulestack_rule_local_rulestack_rule_args_doc}
/// The set of arguments for LocalRulestackRule.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_rule_local_rulestack_rule_args_doc}
class LocalRulestackRuleArgs {
  /// The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`.
  final pulumi.Input<String> action;
  /// Specifies a list of Applications.
  final pulumi.Input<List<String>> applications;
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// A `category` block as defined below.
  final pulumi.Input<LocalRulestackRuleCategory>? category;
  /// The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`.
  final pulumi.Input<String>? decryptionRuleType;
  /// The description for the rule.
  final pulumi.Input<String>? description;
  /// One or more `destination` blocks as defined below.
  final pulumi.Input<LocalRulestackRuleDestination> destination;
  /// Should this Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`.
  final pulumi.Input<String>? inspectionCertificateId;
  /// Should Logging be enabled? Defaults to `false`.
  final pulumi.Input<bool>? loggingEnabled;
  /// The name which should be used for this Palo Alto Local Rulestack Rule.
  final pulumi.Input<String>? name;
  /// Should the inverse of the Destination configuration be used. Defaults to `false`.
  final pulumi.Input<bool>? negateDestination;
  /// Should the inverse of the Source configuration be used. Defaults to `false`.
  final pulumi.Input<bool>? negateSource;
  /// The Priority of this rule. Rules are executed in numerical order. Possible values are between 1 and 1000000. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  ///
  /// > **Note:** This is the primary identifier of a rule, as such it is not possible to change the Priority of a rule once created.
  final pulumi.Input<int> priority;
  /// The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`.
  ///
  /// > **Note:** In 4.0 or later versions, the default of `protocol` will no longer be set by provider, exactly one of `protocol` and `protocol_ports` must be specified. You need to explicitly specify `protocol="application-default"` to keep the the current default of the `protocol`.
  final pulumi.Input<String>? protocol;
  /// Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`.
  final pulumi.Input<List<String>>? protocolPorts;
  /// The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  final pulumi.Input<String> rulestackId;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<LocalRulestackRuleSource> source;
  /// A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocalRulestackRuleArgs].
  /// [action] The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`.
  /// [applications] Specifies a list of Applications.
  /// [auditComment] The comment for Audit purposes.
  /// [category] A `category` block as defined below.
  /// [decryptionRuleType] The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`.
  /// [description] The description for the rule.
  /// [destination] One or more `destination` blocks as defined below.
  /// [enabled] Should this Rule be enabled? Defaults to `true`.
  /// [inspectionCertificateId] The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`.
  /// [loggingEnabled] Should Logging be enabled? Defaults to `false`.
  /// [name] The name which should be used for this Palo Alto Local Rulestack Rule.
  /// [negateDestination] Should the inverse of the Destination configuration be used. Defaults to `false`.
  /// [negateSource] Should the inverse of the Source configuration be used. Defaults to `false`.
  /// [priority] The Priority of this rule. Rules are executed in numerical order. Possible values are between 1 and 1000000. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  /// [protocol] The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`.
  /// [protocolPorts] Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`.
  /// [rulestackId] The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  /// [source] One or more `source` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule.
  LocalRulestackRuleArgs({
    required this.action,
    required this.applications,
    this.auditComment,
    this.category,
    this.decryptionRuleType,
    this.description,
    required this.destination,
    this.enabled,
    this.inspectionCertificateId,
    this.loggingEnabled,
    this.name,
    this.negateDestination,
    this.negateSource,
    required this.priority,
    this.protocol,
    this.protocolPorts,
    required this.rulestackId,
    required this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'applications': applications,
      'auditComment': ?auditComment,
      'category': ?pulumi.Input.mapOptionalInputValue<LocalRulestackRuleCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
      'decryptionRuleType': ?decryptionRuleType,
      'description': ?description,
      'destination': pulumi.Input.mapInputValue<LocalRulestackRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enabled': ?enabled,
      'inspectionCertificateId': ?inspectionCertificateId,
      'loggingEnabled': ?loggingEnabled,
      'name': ?name,
      'negateDestination': ?negateDestination,
      'negateSource': ?negateSource,
      'priority': priority,
      'protocol': ?protocol,
      'protocolPorts': ?protocolPorts,
      'rulestackId': rulestackId,
      'source': pulumi.Input.mapInputValue<LocalRulestackRuleSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LocalRulestackRuleArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackRuleArgs(
      action: (map['action'] as String).input(),
      applications: ((map['applications'] as List).cast<String>()).input(),
      auditComment: map['auditComment'] == null ? null : (map['auditComment']! as String).input(),
      category: map['category'] == null ? null : (LocalRulestackRuleCategory.fromMap((map['category']! as Map).cast<String, dynamic>())).input(),
      decryptionRuleType: map['decryptionRuleType'] == null ? null : (map['decryptionRuleType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destination: (LocalRulestackRuleDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      inspectionCertificateId: map['inspectionCertificateId'] == null ? null : (map['inspectionCertificateId']! as String).input(),
      loggingEnabled: map['loggingEnabled'] == null ? null : (map['loggingEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      negateDestination: map['negateDestination'] == null ? null : (map['negateDestination']! as bool).input(),
      negateSource: map['negateSource'] == null ? null : (map['negateSource']! as bool).input(),
      priority: (map['priority'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      protocolPorts: map['protocolPorts'] == null ? null : ((map['protocolPorts']! as List).cast<String>()).input(),
      rulestackId: (map['rulestackId'] as String).input(),
      source: (LocalRulestackRuleSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

