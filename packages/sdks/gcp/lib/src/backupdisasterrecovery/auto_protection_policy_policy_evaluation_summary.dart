// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoProtectionPolicyPolicyEvaluationSummary {
  /// (Output)
  /// The number of matching resources whose protection failed during the last job run.
  final pulumi.Input<String?>? failedResourceCount;
  /// (Output)
  /// The number of resources that currently match the policy's criteria.
  final pulumi.Input<String?>? matchingResourceCount;
  /// (Output)
  /// The number of matching resources that are successfully protected.
  final pulumi.Input<String?>? protectedResourceCount;

  /// Creates a new [AutoProtectionPolicyPolicyEvaluationSummary].
  /// [failedResourceCount] (Output)
  /// [matchingResourceCount] (Output)
  /// [protectedResourceCount] (Output)
  const AutoProtectionPolicyPolicyEvaluationSummary({
    this.failedResourceCount,
    this.matchingResourceCount,
    this.protectedResourceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedResourceCount': ?failedResourceCount,
      'matchingResourceCount': ?matchingResourceCount,
      'protectedResourceCount': ?protectedResourceCount,
    };
  }

  factory AutoProtectionPolicyPolicyEvaluationSummary.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyPolicyEvaluationSummary(
      failedResourceCount: (() { final guardedValue = map['failedResourceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchingResourceCount: (() { final guardedValue = map['matchingResourceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedResourceCount: (() { final guardedValue = map['protectedResourceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
