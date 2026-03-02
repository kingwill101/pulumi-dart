// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_iam_compute_beta.dart';
import 'condition_op_compute_beta.dart';
import 'condition_sys_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class ConditionComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionIamComputeBeta>? iam;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionOpComputeBeta>? op;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? svc;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionSysComputeBeta>? sys;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionComputeBeta].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  ConditionComputeBeta({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIamComputeBeta, String>(iam, (value) => value.value),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOpComputeBeta, String>(op, (value) => value.value),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSysComputeBeta, String>(sys, (value) => value.value),
      'values': ?values,
    };
  }

  factory ConditionComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConditionComputeBeta(
      iam: map['iam'] == null ? null : (ConditionIamComputeBeta.fromValue(map['iam'] as String)).input(),
      op: map['op'] == null ? null : (ConditionOpComputeBeta.fromValue(map['op'] as String)).input(),
      svc: map['svc'] == null ? null : (map['svc'] as String).input(),
      sys: map['sys'] == null ? null : (ConditionSysComputeBeta.fromValue(map['sys'] as String)).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

