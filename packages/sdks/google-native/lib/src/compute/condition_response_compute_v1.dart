// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class ConditionResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> iam;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> op;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> svc;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> sys;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ConditionResponseComputeV1].
  /// [iam] This is deprecated and has no effect. Do not use.
  /// [op] This is deprecated and has no effect. Do not use.
  /// [svc] This is deprecated and has no effect. Do not use.
  /// [sys] This is deprecated and has no effect. Do not use.
  /// [values] This is deprecated and has no effect. Do not use.
  ConditionResponseComputeV1({
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

  factory ConditionResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ConditionResponseComputeV1(
      iam: (map['iam'] as String).input(),
      op: (map['op'] as String).input(),
      svc: (map['svc'] as String).input(),
      sys: (map['sys'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

