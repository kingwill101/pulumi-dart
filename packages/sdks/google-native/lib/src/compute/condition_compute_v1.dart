// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_iam_compute_v1.dart';
import 'condition_op_compute_v1.dart';
import 'condition_sys_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class ConditionComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionIamComputeV1>? iam;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionOpComputeV1>? op;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? svc;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionSysComputeV1>? sys;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionComputeV1].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  const ConditionComputeV1({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIamComputeV1, String>(iam, (value) => value.wireValue),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOpComputeV1, String>(op, (value) => value.wireValue),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSysComputeV1, String>(sys, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory ConditionComputeV1.fromMap(Map<String, dynamic> map) {
    return ConditionComputeV1(
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionIamComputeV1.fromValue(guardedValue as String)); })(),
      op: (() { final guardedValue = map['op']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionOpComputeV1.fromValue(guardedValue as String)); })(),
      svc: (() { final guardedValue = map['svc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sys: (() { final guardedValue = map['sys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionSysComputeV1.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

