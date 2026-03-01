// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'obfuscation_rule_action.dart';

/// Input properties used for looking up and filtering ObfuscationRule resources.
class ObfuscationRuleState {
  /// The account id associated with the obfuscation rule.
  final pulumi.Input<String>? accountId;
  /// Actions for the rule. The actions will be applied in the order specified by this list.
  final pulumi.Input<List<ObfuscationRuleAction>>? actions;
  /// Description of rule.
  final pulumi.Input<String>? description;
  /// Whether the rule should be applied or not to incoming data.
  final pulumi.Input<bool>? enabled;
  /// NRQL for determining whether a given log record should have obfuscation actions applied.
  final pulumi.Input<String>? filter;
  /// Name of rule.
  final pulumi.Input<String>? name;

  /// Creates a new [ObfuscationRuleState].
  /// [accountId] The account id associated with the obfuscation rule.
  /// [actions] Actions for the rule. The actions will be applied in the order specified by this list.
  /// [description] Description of rule.
  /// [enabled] Whether the rule should be applied or not to incoming data.
  /// [filter] NRQL for determining whether a given log record should have obfuscation actions applied.
  /// [name] Name of rule.
  ObfuscationRuleState({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<ObfuscationRuleAction>>? actions,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      actions = pulumi.Input.asOptionalInput<List<ObfuscationRuleAction>>(actions),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ObfuscationRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ObfuscationRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enabled': ?enabled,
      'filter': ?filter,
      'name': ?name,
    };
  }

  factory ObfuscationRuleState.fromMap(Map<String, dynamic> map) {
    return ObfuscationRuleState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      actions: map['actions'] == null ? null : pulumi.Output.create<List<ObfuscationRuleAction>>(pulumi.Input.decodeList<ObfuscationRuleAction>(map['actions'], (value) => ObfuscationRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

