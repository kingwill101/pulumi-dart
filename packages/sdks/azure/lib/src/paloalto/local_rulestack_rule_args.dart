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
  final pulumi.Input<String?>? auditComment;
  /// A `category` block as defined below.
  final pulumi.Input<LocalRulestackRuleCategory?>? category;
  /// The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`.
  final pulumi.Input<String?>? decryptionRuleType;
  /// The description for the rule.
  final pulumi.Input<String?>? description;
  /// One or more `destination` blocks as defined below.
  final pulumi.Input<LocalRulestackRuleDestination> destination;
  /// Should this Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The ID of the certificate for inbound inspection. Only valid when `decryptionRuleType` is set to `SSLInboundInspection`.
  final pulumi.Input<String?>? inspectionCertificateId;
  /// Should Logging be enabled? Defaults to `false`.
  final pulumi.Input<bool?>? loggingEnabled;
  /// The name which should be used for this Palo Alto Local Rulestack Rule.
  final pulumi.Input<String?>? name;
  /// Should the inverse of the Destination configuration be used. Defaults to `false`.
  final pulumi.Input<bool?>? negateDestination;
  /// Should the inverse of the Source configuration be used. Defaults to `false`.
  final pulumi.Input<bool?>? negateSource;
  /// The Priority of this rule. Rules are executed in numerical order. Possible values are between 1 and 1000000. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  ///
  /// &gt; **Note:** This is the primary identifier of a rule, as such it is not possible to change the Priority of a rule once created.
  final pulumi.Input<int> priority;
  /// The Protocol and port to use in the form `[protocol]:[portNumber]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocolPorts`.
  ///
  /// &gt; **Note:** In 4.0 or later versions, the default of `protocol` will no longer be set by provider, exactly one of `protocol` and `protocolPorts` must be specified. You need to explicitly specify `protocol="application-default"` to keep the the current default of the `protocol`.
  final pulumi.Input<String?>? protocol;
  /// Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`.
  final pulumi.Input<List<String>?>? protocolPorts;
  /// The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  final pulumi.Input<String> rulestackId;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<LocalRulestackRuleSource> source;
  /// A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LocalRulestackRuleArgs].
  /// [action] The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`.
  /// [applications] Specifies a list of Applications.
  /// [auditComment] The comment for Audit purposes.
  /// [category] A `category` block as defined below.
  /// [decryptionRuleType] The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`.
  /// [description] The description for the rule.
  /// [destination] One or more `destination` blocks as defined below.
  /// [enabled] Should this Rule be enabled? Defaults to `true`.
  /// [inspectionCertificateId] The ID of the certificate for inbound inspection. Only valid when `decryptionRuleType` is set to `SSLInboundInspection`.
  /// [loggingEnabled] Should Logging be enabled? Defaults to `false`.
  /// [name] The name which should be used for this Palo Alto Local Rulestack Rule.
  /// [negateDestination] Should the inverse of the Destination configuration be used. Defaults to `false`.
  /// [negateSource] Should the inverse of the Source configuration be used. Defaults to `false`.
  /// [priority] The Priority of this rule. Rules are executed in numerical order. Possible values are between 1 and 1000000. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  /// [protocol] The Protocol and port to use in the form `[protocol]:[portNumber]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocolPorts`.
  /// [protocolPorts] Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`.
  /// [rulestackId] The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  /// [source] One or more `source` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule.
  const LocalRulestackRuleArgs({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      applications: pulumi.Input.fromValue((map['applications'] as List).cast<String>()),
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalRulestackRuleCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      decryptionRuleType: (() { final guardedValue = map['decryptionRuleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(LocalRulestackRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectionCertificateId: (() { final guardedValue = map['inspectionCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingEnabled: (() { final guardedValue = map['loggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      negateDestination: (() { final guardedValue = map['negateDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negateSource: (() { final guardedValue = map['negateSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolPorts: (() { final guardedValue = map['protocolPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rulestackId: pulumi.Input.fromValue(map['rulestackId'] as String),
      source: pulumi.Input.fromValue(LocalRulestackRuleSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
