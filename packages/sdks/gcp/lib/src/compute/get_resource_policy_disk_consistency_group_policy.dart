// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyDiskConsistencyGroupPolicy {
  /// Enable disk consistency on the resource policy.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetResourcePolicyDiskConsistencyGroupPolicy].
  /// [enabled] Enable disk consistency on the resource policy.
  GetResourcePolicyDiskConsistencyGroupPolicy({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetResourcePolicyDiskConsistencyGroupPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourcePolicyDiskConsistencyGroupPolicy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
