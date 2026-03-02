// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_iam_gameservices_v1beta.dart';
import 'condition_op_gameservices_v1beta.dart';
import 'condition_sys_gameservices_v1beta.dart';

/// A condition to be met.
class ConditionGameservicesV1beta {
  /// Trusted attributes supplied by the IAM system.
  final pulumi.Input<ConditionIamGameservicesV1beta>? iam;
  /// An operator to apply the subject with.
  final pulumi.Input<ConditionOpGameservicesV1beta>? op;
  /// Trusted attributes discharged by the service.
  final pulumi.Input<String>? svc;
  /// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  final pulumi.Input<ConditionSysGameservicesV1beta>? sys;
  /// The objects of the condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionGameservicesV1beta].
  /// [iam] Trusted attributes supplied by the IAM system.
  /// [op] An operator to apply the subject with.
  /// [svc] Trusted attributes discharged by the service.
  /// [sys] Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  /// [values] The objects of the condition.
  ConditionGameservicesV1beta({
    this.iam,
    this.op,
    this.svc,
    this.sys,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': ?pulumi.Input.mapOptionalInputValue<ConditionIamGameservicesV1beta, String>(iam, (value) => value.value),
      'op': ?pulumi.Input.mapOptionalInputValue<ConditionOpGameservicesV1beta, String>(op, (value) => value.value),
      'svc': ?svc,
      'sys': ?pulumi.Input.mapOptionalInputValue<ConditionSysGameservicesV1beta, String>(sys, (value) => value.value),
      'values': ?values,
    };
  }

  factory ConditionGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return ConditionGameservicesV1beta(
      iam: map['iam'] == null ? null : (ConditionIamGameservicesV1beta.fromValue(map['iam']! as String)).input(),
      op: map['op'] == null ? null : (ConditionOpGameservicesV1beta.fromValue(map['op']! as String)).input(),
      svc: map['svc'] == null ? null : (map['svc']! as String).input(),
      sys: map['sys'] == null ? null : (ConditionSysGameservicesV1beta.fromValue(map['sys']! as String)).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

