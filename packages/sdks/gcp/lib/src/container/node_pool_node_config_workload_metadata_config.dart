// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final pulumi.Input<String> mode;

  /// Creates a new [NodePoolNodeConfigWorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node.
  const NodePoolNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory NodePoolNodeConfigWorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigWorkloadMetadataConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

