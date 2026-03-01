// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogParsingRule resources.
class LogParsingRuleState {
  /// The account id associated with the obfuscation rule.
  final pulumi.Input<String>? accountId;
  /// The parsing rule will apply to value of this attribute. If field is not provided, value will default to message.
  final pulumi.Input<String>? attribute;
  /// Whether or not this rule is deleted.
  final pulumi.Input<bool>? deleted;
  /// Whether the rule should be applied or not to incoming data.
  final pulumi.Input<bool>? enabled;
  /// The Grok of what to parse.
  final pulumi.Input<String>? grok;
  /// The Lucene to match events to the parsing rule.
  final pulumi.Input<String>? lucene;
  /// Whether the Grok pattern matched.
  final pulumi.Input<bool>? matched;
  /// Name of rule.
  final pulumi.Input<String>? name;
  /// The NRQL to match events to the parsing rule.
  final pulumi.Input<String>? nrql;

  /// Creates a new [LogParsingRuleState].
  /// [accountId] The account id associated with the obfuscation rule.
  /// [attribute] The parsing rule will apply to value of this attribute. If field is not provided, value will default to message.
  /// [deleted] Whether or not this rule is deleted.
  /// [enabled] Whether the rule should be applied or not to incoming data.
  /// [grok] The Grok of what to parse.
  /// [lucene] The Lucene to match events to the parsing rule.
  /// [matched] Whether the Grok pattern matched.
  /// [name] Name of rule.
  /// [nrql] The NRQL to match events to the parsing rule.
  LogParsingRuleState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? attribute,
    pulumi.Output<bool>? deleted,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? grok,
    pulumi.Output<String>? lucene,
    pulumi.Output<bool>? matched,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nrql,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      attribute = pulumi.Input.asOptionalInput<String>(attribute),
      deleted = pulumi.Input.asOptionalInput<bool>(deleted),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      grok = pulumi.Input.asOptionalInput<String>(grok),
      lucene = pulumi.Input.asOptionalInput<String>(lucene),
      matched = pulumi.Input.asOptionalInput<bool>(matched),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asOptionalInput<String>(nrql);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'attribute': ?attribute,
      'deleted': ?deleted,
      'enabled': ?enabled,
      'grok': ?grok,
      'lucene': ?lucene,
      'matched': ?matched,
      'name': ?name,
      'nrql': ?nrql,
    };
  }

  factory LogParsingRuleState.fromMap(Map<String, dynamic> map) {
    return LogParsingRuleState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      attribute: map['attribute'] == null ? null : pulumi.Output.create<String>(map['attribute'] as String),
      deleted: map['deleted'] == null ? null : pulumi.Output.create<bool>(map['deleted'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      grok: map['grok'] == null ? null : pulumi.Output.create<String>(map['grok'] as String),
      lucene: map['lucene'] == null ? null : pulumi.Output.create<String>(map['lucene'] as String),
      matched: map['matched'] == null ? null : pulumi.Output.create<bool>(map['matched'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nrql: map['nrql'] == null ? null : pulumi.Output.create<String>(map['nrql'] as String),
    );
  }
}

