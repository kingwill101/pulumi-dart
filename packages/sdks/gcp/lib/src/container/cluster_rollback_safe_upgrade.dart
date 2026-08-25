// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRollbackSafeUpgrade {
  /// A user-defined period that the cluster remains in the rollbackable state. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "604800s" for 7 days. Minimum is 6 hours, maximum is 7 days. If omitted, the two-step upgrade is skipped and a standard one-step upgrade is performed.
  final pulumi.Input<String?>? controlPlaneSoakDuration;

  /// Creates a new [ClusterRollbackSafeUpgrade].
  /// [controlPlaneSoakDuration] A user-defined period that the cluster remains in the rollbackable state. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "604800s" for 7 days. Minimum is 6 hours, maximum is 7 days. If omitted, the two-step upgrade is skipped and a standard one-step upgrade is performed.
  const ClusterRollbackSafeUpgrade({
    this.controlPlaneSoakDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneSoakDuration': ?controlPlaneSoakDuration,
    };
  }

  factory ClusterRollbackSafeUpgrade.fromMap(Map<String, dynamic> map) {
    return ClusterRollbackSafeUpgrade(
      controlPlaneSoakDuration: (() { final guardedValue = map['controlPlaneSoakDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
