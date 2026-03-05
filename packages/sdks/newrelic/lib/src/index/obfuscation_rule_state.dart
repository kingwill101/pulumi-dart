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
    this.accountId,
    this.actions,
    this.description,
    this.enabled,
    this.filter,
    this.name,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObfuscationRuleAction>(guardedValue, (value) => ObfuscationRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

