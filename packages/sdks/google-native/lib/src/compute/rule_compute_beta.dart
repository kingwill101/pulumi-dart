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
  RuleComputeBeta({
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
      'action': ?pulumi.Input.mapOptionalInputValue<RuleActionComputeBeta, String>(action, (value) => value.value),
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
      action: map['action'] == null ? null : (RuleActionComputeBeta.fromValue(map['action']! as String)).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionComputeBeta>(map['conditions']!, (value) => ConditionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ins: map['ins'] == null ? null : ((map['ins']! as List).cast<String>()).input(),
      logConfigs: map['logConfigs'] == null ? null : (pulumi.Input.decodeList<LogConfigComputeBeta>(map['logConfigs']!, (value) => LogConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notIns: map['notIns'] == null ? null : ((map['notIns']! as List).cast<String>()).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions']! as List).cast<String>()).input(),
    );
  }
}

