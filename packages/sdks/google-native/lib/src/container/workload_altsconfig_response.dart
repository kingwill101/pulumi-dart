// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for direct-path (via ALTS) with workload identity.
class WorkloadALTSConfigResponse {
  /// enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  final pulumi.Input<bool> enableAlts;

  /// Creates a new [WorkloadALTSConfigResponse].
  /// [enableAlts] enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  const WorkloadALTSConfigResponse({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAlts': enableAlts,
    };
  }

  factory WorkloadALTSConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadALTSConfigResponse(
      enableAlts: pulumi.Input.fromValue(map['enableAlts'] as bool),
    );
  }
}
