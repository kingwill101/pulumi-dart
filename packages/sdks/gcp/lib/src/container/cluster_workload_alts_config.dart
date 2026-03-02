// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterWorkloadAltsConfig {
  /// Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool) must be non-empty).
  final pulumi.Input<bool> enableAlts;

  /// Creates a new [ClusterWorkloadAltsConfig].
  /// [enableAlts] Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool) must be non-empty).
  ClusterWorkloadAltsConfig({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAlts': enableAlts,
    };
  }

  factory ClusterWorkloadAltsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterWorkloadAltsConfig(
      enableAlts: (map['enableAlts'] as bool).input(),
    );
  }
}

