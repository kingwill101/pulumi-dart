// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A condition to be met.
class ConditionResponseGameservicesV1beta {
  /// Trusted attributes supplied by the IAM system.
  final pulumi.Input<String> iam;

  /// An operator to apply the subject with.
  final pulumi.Input<String> op;

  /// Trusted attributes discharged by the service.
  final pulumi.Input<String> svc;

  /// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  final pulumi.Input<String> sys;

  /// The objects of the condition.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ConditionResponseGameservicesV1beta].
  /// [iam] Trusted attributes supplied by the IAM system.
  /// [op] An operator to apply the subject with.
  /// [svc] Trusted attributes discharged by the service.
  /// [sys] Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
  /// [values] The objects of the condition.
  ConditionResponseGameservicesV1beta({
    required this.iam,
    required this.op,
    required this.svc,
    required this.sys,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': iam,
      'op': op,
      'svc': svc,
      'sys': sys,
      'values': values,
    };
  }

  factory ConditionResponseGameservicesV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConditionResponseGameservicesV1beta(
      iam: pulumi.Input.fromValue(map['iam'] as String),
      op: pulumi.Input.fromValue(map['op'] as String),
      svc: pulumi.Input.fromValue(map['svc'] as String),
      sys: pulumi.Input.fromValue(map['sys'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
