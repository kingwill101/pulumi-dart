// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoProtectionPolicyBindingSummary {
  /// (Output)
  /// The total number of projects protected by the policy.
  final pulumi.Input<String?>? projectCount;

  /// Creates a new [AutoProtectionPolicyBindingSummary].
  /// [projectCount] (Output)
  const AutoProtectionPolicyBindingSummary({
    this.projectCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectCount': ?projectCount,
    };
  }

  factory AutoProtectionPolicyBindingSummary.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyBindingSummary(
      projectCount: (() { final guardedValue = map['projectCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
