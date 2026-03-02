// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_iam.dart';
import 'condition_op.dart';
import 'condition_sys.dart';

/// This is deprecated and has no effect. Do not use.
class Condition {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionIam>? iam;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionOp>? op;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? svc;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<ConditionSys>? sys;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [Condition].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  Condition({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIam, String>(iam, (value) => value.value),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOp, String>(op, (value) => value.value),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSys, String>(sys, (value) => value.value),
      'values': ?values,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      iam: map['iam'] == null ? null : (ConditionIam.fromValue(map['iam'] as String)).input(),
      op: map['op'] == null ? null : (ConditionOp.fromValue(map['op'] as String)).input(),
      svc: map['svc'] == null ? null : (map['svc'] as String).input(),
      sys: map['sys'] == null ? null : (ConditionSys.fromValue(map['sys'] as String)).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

