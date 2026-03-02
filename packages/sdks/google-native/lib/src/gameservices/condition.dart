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
      iam: map['iam'] == null ? null : (ConditionIam.fromValue(map['iam']! as String)).input(),
      op: map['op'] == null ? null : (ConditionOp.fromValue(map['op']! as String)).input(),
      svc: map['svc'] == null ? null : (map['svc']! as String).input(),
      sys: map['sys'] == null ? null : (ConditionSys.fromValue(map['sys']! as String)).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

