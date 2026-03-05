// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigResponse {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final pulumi.Input<String> mode;

  /// Creates a new [WorkloadMetadataConfigResponse].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  WorkloadMetadataConfigResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory WorkloadMetadataConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfigResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

