// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_metadata_config_mode_container_v1beta1.dart';
import 'workload_metadata_config_node_metadata.dart';

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigContainerV1beta1 {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final pulumi.Input<WorkloadMetadataConfigModeContainerV1beta1>? mode;
  /// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  final pulumi.Input<WorkloadMetadataConfigNodeMetadata>? nodeMetadata;

  /// Creates a new [WorkloadMetadataConfigContainerV1beta1].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  /// [nodeMetadata] NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  const WorkloadMetadataConfigContainerV1beta1({
    this.mode,
    this.nodeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<WorkloadMetadataConfigModeContainerV1beta1, String>(mode, (value) => value.wireValue),
      'nodeMetadata': ?pulumi.Input.mapOptionalInputValue<WorkloadMetadataConfigNodeMetadata, String>(nodeMetadata, (value) => value.wireValue),
    };
  }

  factory WorkloadMetadataConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfigContainerV1beta1(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadMetadataConfigModeContainerV1beta1.fromValue(guardedValue as String)); })(),
      nodeMetadata: (() { final guardedValue = map['nodeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadMetadataConfigNodeMetadata.fromValue(guardedValue as String)); })(),
    );
  }
}
