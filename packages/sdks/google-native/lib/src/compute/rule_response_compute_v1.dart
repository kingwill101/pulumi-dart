// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_compute_v1.dart';
import 'log_config_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> action;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<ConditionResponseComputeV1>> conditions;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> description;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> ins;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigResponseComputeV1>> logConfigs;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> notIns;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [RuleResponseComputeV1].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  const RuleResponseComputeV1({
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
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponseComputeV1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'ins': ins,
      'logConfigs': pulumi.Input.mapInputValue<List<LogConfigResponseComputeV1>, List<Map<String, dynamic>>>(logConfigs, (value) => pulumi.Input.encodeList<LogConfigResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIns': notIns,
      'permissions': permissions,
    };
  }

  factory RuleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RuleResponseComputeV1(
      action: pulumi.Input.fromValue(map['action'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionResponseComputeV1>(map['conditions']!, (value) => ConditionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      ins: pulumi.Input.fromValue((map['ins'] as List).cast<String>()),
      logConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigResponseComputeV1>(map['logConfigs']!, (value) => LogConfigResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      notIns: pulumi.Input.fromValue((map['notIns'] as List).cast<String>()),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
