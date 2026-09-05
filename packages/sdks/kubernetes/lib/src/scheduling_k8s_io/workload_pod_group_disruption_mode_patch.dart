// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPodGroupDisruptionMode defines how individual pods within a group can be disrupted. Exactly one mode must be set.
class WorkloadPodGroupDisruptionModePatch {
  /// all specifies that all pods in the group must be disrupted together.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// single specifies that pods can be disrupted independently from each other.
  final pulumi.Input<Map<String, dynamic>?>? single;

  /// Creates a new [WorkloadPodGroupDisruptionModePatch].
  /// [all] all specifies that all pods in the group must be disrupted together.
  /// [single] single specifies that pods can be disrupted independently from each other.
  const WorkloadPodGroupDisruptionModePatch({
    this.all,
    this.single,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'single': ?single,
    };
  }

  factory WorkloadPodGroupDisruptionModePatch.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupDisruptionModePatch(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      single: (() { final guardedValue = map['single']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
