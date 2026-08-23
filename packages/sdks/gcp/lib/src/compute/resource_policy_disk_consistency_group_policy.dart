// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyDiskConsistencyGroupPolicy {
  /// Enable disk consistency on the resource policy.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ResourcePolicyDiskConsistencyGroupPolicy].
  /// [enabled] Enable disk consistency on the resource policy.
  const ResourcePolicyDiskConsistencyGroupPolicy({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ResourcePolicyDiskConsistencyGroupPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDiskConsistencyGroupPolicy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
