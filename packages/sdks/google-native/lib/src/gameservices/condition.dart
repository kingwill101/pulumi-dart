// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_iam.dart';
import 'condition_op.dart';
import 'condition_sys.dart';

/// A condition to be met.
class Condition {
  /// Trusted attributes supplied by the IAM system.
  final pulumi.Input<ConditionIam>? iam;
  /// An operator to apply the subject with.
  final pulumi.Input<ConditionOp>? op;
  /// Trusted attributes discharged by the service.
  final pulumi.Input<String>? svc;
  /// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  final pulumi.Input<ConditionSys>? sys;
  /// The objects of the condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [Condition].
  /// [iam] Trusted attributes supplied by the IAM system.
  /// [op] An operator to apply the subject with.
  /// [svc] Trusted attributes discharged by the service.
  /// [sys] Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  /// [values] The objects of the condition.
  const Condition({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIam, String>(iam, (value) => value.wireValue),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOp, String>(op, (value) => value.wireValue),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSys, String>(sys, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      iam: (() { final guardedValue = map['iam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionIam.fromValue(guardedValue as String)); })(),
      op: (() { final guardedValue = map['op']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionOp.fromValue(guardedValue as String)); })(),
      svc: (() { final guardedValue = map['svc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sys: (() { final guardedValue = map['sys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionSys.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

