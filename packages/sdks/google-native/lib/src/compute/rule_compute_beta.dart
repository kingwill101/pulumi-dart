// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_compute_beta.dart';
import 'log_config_compute_beta.dart';
import 'rule_action_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class RuleComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<RuleActionComputeBeta>? action;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<ConditionComputeBeta>>? conditions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? description;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? ins;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigComputeBeta>>? logConfigs;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? notIns;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [RuleComputeBeta].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  const RuleComputeBeta({
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
      'action': ?pulumi.Input.mapOptionalInputValue<RuleActionComputeBeta, String>(action, (value) => value.wireValue),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionComputeBeta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'ins': ?ins,
      'logConfigs': ?pulumi.Input.mapOptionalInputValue<List<LogConfigComputeBeta>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<LogConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIns': ?notIns,
      'permissions': ?permissions,
    };
  }

  factory RuleComputeBeta.fromMap(Map<String, dynamic> map) {
    return RuleComputeBeta(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleActionComputeBeta.fromValue(guardedValue as String)); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionComputeBeta>(guardedValue, (value) => ConditionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ins: (() { final guardedValue = map['ins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigComputeBeta>(guardedValue, (value) => LogConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notIns: (() { final guardedValue = map['notIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
