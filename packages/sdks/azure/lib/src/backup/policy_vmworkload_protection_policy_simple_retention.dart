// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicySimpleRetention {
  /// The count that is used to count retention duration with duration type `Days`. Possible values are between `7` and `35`.
  final pulumi.Input<int> count;

  /// Creates a new [PolicyVMWorkloadProtectionPolicySimpleRetention].
  /// [count] The count that is used to count retention duration with duration type `Days`. Possible values are between `7` and `35`.
  PolicyVMWorkloadProtectionPolicySimpleRetention({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyVMWorkloadProtectionPolicySimpleRetention.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicySimpleRetention(
      count: pulumi.Input.fromValue(map['count'] as int),
    );
  }
}

