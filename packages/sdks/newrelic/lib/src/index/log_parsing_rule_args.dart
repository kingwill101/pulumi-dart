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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? attribute,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> grok,
    required pulumi.Output<String> lucene,
    pulumi.Output<bool>? matched,
    pulumi.Output<String>? name,
    required pulumi.Output<String> nrql,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      attribute = pulumi.Input.asOptionalInput<String>(attribute),
      enabled = pulumi.Input.asInput<bool>(enabled),
      grok = pulumi.Input.asInput<String>(grok),
      lucene = pulumi.Input.asInput<String>(lucene),
      matched = pulumi.Input.asOptionalInput<bool>(matched),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asInput<String>(nrql);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      attribute: map['attribute'] == null ? null : pulumi.Output.create<String>(map['attribute'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      grok: pulumi.Output.create<String>(map['grok'] as String),
      lucene: pulumi.Output.create<String>(map['lucene'] as String),
      matched: map['matched'] == null ? null : pulumi.Output.create<bool>(map['matched'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nrql: pulumi.Output.create<String>(map['nrql'] as String),
    );
  }
}

