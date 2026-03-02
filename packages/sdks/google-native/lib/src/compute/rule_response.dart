// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';
import 'log_config_response.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> action;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<ConditionResponse>> conditions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> description;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> ins;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigResponse>> logConfigs;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> notIns;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [RuleResponse].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  RuleResponse({
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
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'ins': ins,
      'logConfigs': pulumi.Input.mapInputValue<List<LogConfigResponse>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<LogConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIns': notIns,
      'permissions': permissions,
    };
  }

  factory RuleResponse.fromMap(Map<String, dynamic> map) {
    return RuleResponse(
      action: (map['action'] as String).input(),
      conditions: (pulumi.Input.decodeList<ConditionResponse>(map['conditions'], (value) => ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      ins: ((map['ins'] as List).cast<String>()).input(),
      logConfigs: (pulumi.Input.decodeList<LogConfigResponse>(map['logConfigs'], (value) => LogConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notIns: ((map['notIns'] as List).cast<String>()).input(),
      permissions: ((map['permissions'] as List).cast<String>()).input(),
    );
  }
}

