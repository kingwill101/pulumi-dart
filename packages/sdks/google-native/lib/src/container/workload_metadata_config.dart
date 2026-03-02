// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_metadata_config_mode.dart';

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final pulumi.Input<WorkloadMetadataConfigMode>? mode;

  /// Creates a new [WorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  WorkloadMetadataConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<WorkloadMetadataConfigMode, String>(mode, (value) => value.value),
    };
  }

  factory WorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfig(
      mode: map['mode'] == null ? null : (WorkloadMetadataConfigMode.fromValue(map['mode'] as String)).input(),
    );
  }
}

