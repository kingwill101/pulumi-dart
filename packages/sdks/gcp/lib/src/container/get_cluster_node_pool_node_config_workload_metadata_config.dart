// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final pulumi.Input<String> mode;

  /// Creates a new [GetClusterNodePoolNodeConfigWorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node.
  const GetClusterNodePoolNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigWorkloadMetadataConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

