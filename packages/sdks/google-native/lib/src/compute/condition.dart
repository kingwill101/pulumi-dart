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
  Condition({this.iam, this.op, this.svc, this.sys, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIam, String>(
        iam,
        (value) => value.wireValue,
      ),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOp, String>(
        op,
        (value) => value.wireValue,
      ),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSys, String>(
        sys,
        (value) => value.wireValue,
      ),
      'values': ?values,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      iam: (() {
        final guardedValue = map['iam'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConditionIam.fromValue(guardedValue as String),
        );
      })(),
      op: (() {
        final guardedValue = map['op'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConditionOp.fromValue(guardedValue as String),
        );
      })(),
      svc: (() {
        final guardedValue = map['svc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sys: (() {
        final guardedValue = map['sys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConditionSys.fromValue(guardedValue as String),
        );
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
