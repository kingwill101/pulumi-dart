// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodSchedulingGroup identifies the runtime scheduling group instance that a Pod belongs to. The scheduler uses this information to apply workload-aware scheduling semantics. Exactly one field must be specified.
class PodSchedulingGroupPatch {
  /// PodGroupName specifies the name of the standalone PodGroup object that represents the runtime instance of this group. Must be a DNS subdomain.
  final pulumi.Input<String>? podGroupName;

  /// Creates a new [PodSchedulingGroupPatch].
  /// [podGroupName] PodGroupName specifies the name of the standalone PodGroup object that represents the runtime instance of this group. Must be a DNS subdomain.
  const PodSchedulingGroupPatch({
    this.podGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podGroupName': ?podGroupName,
    };
  }

  factory PodSchedulingGroupPatch.fromMap(Map<String, dynamic> map) {
    return PodSchedulingGroupPatch(
      podGroupName: (() { final guardedValue = map['podGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
