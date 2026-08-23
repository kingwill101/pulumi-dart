// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for direct-path (via ALTS) with workload identity.
class WorkloadALTSConfig {
  /// enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  final pulumi.Input<bool>? enableAlts;

  /// Creates a new [WorkloadALTSConfig].
  /// [enableAlts] enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  const WorkloadALTSConfig({
    this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAlts': ?enableAlts,
    };
  }

  factory WorkloadALTSConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadALTSConfig(
      enableAlts: (() { final guardedValue = map['enableAlts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
