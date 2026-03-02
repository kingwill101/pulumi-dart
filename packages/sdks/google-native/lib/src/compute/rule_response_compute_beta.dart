// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_compute_beta.dart';
import 'log_config_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> action;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<ConditionResponseComputeBeta>> conditions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> description;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> ins;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigResponseComputeBeta>> logConfigs;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> notIns;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [RuleResponseComputeBeta].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  RuleResponseComputeBeta({
    required this.action,
    required this.conditions,
    required this.description,
    required this.ins,
    required this.logConfigs,
    required this.notIns,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponseComputeBeta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'ins': ins,
      'logConfigs': pulumi.Input.mapInputValue<List<LogConfigResponseComputeBeta>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<LogConfigResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIns': notIns,
      'permissions': permissions,
    };
  }

  factory RuleResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RuleResponseComputeBeta(
      action: (map['action'] as String).input(),
      conditions: (pulumi.Input.decodeList<ConditionResponseComputeBeta>(map['conditions'], (value) => ConditionResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      ins: ((map['ins'] as List).cast<String>()).input(),
      logConfigs: (pulumi.Input.decodeList<LogConfigResponseComputeBeta>(map['logConfigs'], (value) => LogConfigResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notIns: ((map['notIns'] as List).cast<String>()).input(),
      permissions: ((map['permissions'] as List).cast<String>()).input(),
    );
  }
}

