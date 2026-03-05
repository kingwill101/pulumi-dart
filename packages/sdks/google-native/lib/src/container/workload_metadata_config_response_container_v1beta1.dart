// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigResponseContainerV1beta1 {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final pulumi.Input<String> mode;
  /// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  final pulumi.Input<String> nodeMetadata;

  /// Creates a new [WorkloadMetadataConfigResponseContainerV1beta1].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  /// [nodeMetadata] NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  WorkloadMetadataConfigResponseContainerV1beta1({
    required this.mode,
    required this.nodeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'nodeMetadata': nodeMetadata,
    };
  }

  factory WorkloadMetadataConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfigResponseContainerV1beta1(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      nodeMetadata: pulumi.Input.fromValue(map['nodeMetadata'] as String),
    );
  }
}

