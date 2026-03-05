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
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIamComputeBeta, String>(iam, (value) => value.wireValue),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOpComputeBeta, String>(op, (value) => value.wireValue),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSysComputeBeta, String>(sys, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory ConditionComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConditionComputeBeta(
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionIamComputeBeta.fromValue(guardedValue as String)); })(),
      op: (() { final guardedValue = map['op']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionOpComputeBeta.fromValue(guardedValue as String)); })(),
      svc: (() { final guardedValue = map['svc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sys: (() { final guardedValue = map['sys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionSysComputeBeta.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

