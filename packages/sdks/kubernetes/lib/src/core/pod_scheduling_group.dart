// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodSchedulingGroup identifies the runtime scheduling group instance that a Pod belongs to. The scheduler uses this information to apply workload-aware scheduling semantics. Exactly one field must be specified.
class PodSchedulingGroup {
  /// PodGroupName specifies the name of the standalone PodGroup object that represents the runtime instance of this group. Must be a DNS subdomain.
  final pulumi.Input<String?>? podGroupName;

  /// Creates a new [PodSchedulingGroup].
  /// [podGroupName] PodGroupName specifies the name of the standalone PodGroup object that represents the runtime instance of this group. Must be a DNS subdomain.
  const PodSchedulingGroup({
    this.podGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podGroupName': ?podGroupName,
    };
  }

  factory PodSchedulingGroup.fromMap(Map<String, dynamic> map) {
    return PodSchedulingGroup(
      podGroupName: (() { final guardedValue = map['podGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
