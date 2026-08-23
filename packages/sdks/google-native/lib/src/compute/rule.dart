// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';
import 'log_config.dart';
import 'rule_action.dart';

/// This is deprecated and has no effect. Do not use.
class Rule {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<RuleAction>? action;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<Condition>>? conditions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? description;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? ins;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfig>>? logConfigs;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? notIns;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [Rule].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  const Rule({
    this.action,
    this.conditions,
    this.description,
    this.ins,
    this.logConfigs,
    this.notIns,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RuleAction, String>(action, (value) => value.wireValue),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'ins': ?ins,
      'logConfigs': ?pulumi.Input.mapOptionalInputValue<List<LogConfig>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<LogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIns': ?notIns,
      'permissions': ?permissions,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleAction.fromValue(guardedValue as String)); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ins: (() { final guardedValue = map['ins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfig>(guardedValue, (value) => LogConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notIns: (() { final guardedValue = map['notIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
