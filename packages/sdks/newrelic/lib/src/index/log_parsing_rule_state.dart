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
  const LogParsingRuleState({
    this.accountId,
    this.attribute,
    this.deleted,
    this.enabled,
    this.grok,
    this.lucene,
    this.matched,
    this.name,
    this.nrql,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grok: (() { final guardedValue = map['grok']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lucene: (() { final guardedValue = map['lucene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matched: (() { final guardedValue = map['matched']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nrql: (() { final guardedValue = map['nrql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

