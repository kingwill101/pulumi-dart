// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterWorkloadAltsConfig {
  /// Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool must be non-empty).
  final pulumi.Input<bool> enableAlts;

  /// Creates a new [GetClusterWorkloadAltsConfig].
  /// [enableAlts] Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool must be non-empty).
  const GetClusterWorkloadAltsConfig({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAlts': enableAlts,
    };
  }

  factory GetClusterWorkloadAltsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterWorkloadAltsConfig(
      enableAlts: pulumi.Input.fromValue(map['enableAlts'] as bool),
    );
  }
}

