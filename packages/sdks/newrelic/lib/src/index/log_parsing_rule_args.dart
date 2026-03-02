// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_log_parsing_rule_log_parsing_rule_args_doc}
/// The set of arguments for LogParsingRule.
/// {@endtemplate}
/// {@macro pulumi_index_log_parsing_rule_log_parsing_rule_args_doc}
class LogParsingRuleArgs {
  /// The account id associated with the obfuscation rule.
  final pulumi.Input<String>? accountId;
  /// The parsing rule will apply to value of this attribute. If field is not provided, value will default to message.
  final pulumi.Input<String>? attribute;
  /// Whether the rule should be applied or not to incoming data.
  final pulumi.Input<bool> enabled;
  /// The Grok of what to parse.
  final pulumi.Input<String> grok;
  /// The Lucene to match events to the parsing rule.
  final pulumi.Input<String> lucene;
  /// Whether the Grok pattern matched.
  final pulumi.Input<bool>? matched;
  /// Name of rule.
  final pulumi.Input<String>? name;
  /// The NRQL to match events to the parsing rule.
  final pulumi.Input<String> nrql;

  /// Creates a new [LogParsingRuleArgs].
  /// [accountId] The account id associated with the obfuscation rule.
  /// [attribute] The parsing rule will apply to value of this attribute. If field is not provided, value will default to message.
  /// [enabled] Whether the rule should be applied or not to incoming data.
  /// [grok] The Grok of what to parse.
  /// [lucene] The Lucene to match events to the parsing rule.
  /// [matched] Whether the Grok pattern matched.
  /// [name] Name of rule.
  /// [nrql] The NRQL to match events to the parsing rule.
  LogParsingRuleArgs({
    this.accountId,
    this.attribute,
    required this.enabled,
    required this.grok,
    required this.lucene,
    this.matched,
    this.name,
    required this.nrql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'attribute': ?attribute,
      'enabled': enabled,
      'grok': grok,
      'lucene': lucene,
      'matched': ?matched,
      'name': ?name,
      'nrql': nrql,
    };
  }

  factory LogParsingRuleArgs.fromMap(Map<String, dynamic> map) {
    return LogParsingRuleArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      attribute: map['attribute'] == null ? null : (map['attribute']! as String).input(),
      enabled: (map['enabled'] as bool).input(),
      grok: (map['grok'] as String).input(),
      lucene: (map['lucene'] as String).input(),
      matched: map['matched'] == null ? null : (map['matched']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nrql: (map['nrql'] as String).input(),
    );
  }
}

