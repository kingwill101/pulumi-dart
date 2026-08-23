// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_access_config_response.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response.dart';

/// Result data returned by getRuntime.
class GetRuntimeResult {
  /// The config settings for accessing runtime.
  final RuntimeAccessConfigResponse accessConfig;
  /// Runtime creation time.
  final String createTime;
  /// Runtime health_state.
  final String healthState;
  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;
  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  final RuntimeMetricsResponse metrics;
  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  final bool migrated;
  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  final String name;
  /// Checks how feasible a migration from GmN to WbI is.
  final RuntimeMigrationEligibilityResponse runtimeMigrationEligibility;
  /// The config settings for software inside the runtime.
  final RuntimeSoftwareConfigResponse softwareConfig;
  /// Runtime state.
  final String state;
  /// Runtime update time.
  final String updateTime;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  final VirtualMachineResponse virtualMachine;

  /// Creates a new [GetRuntimeResult].
  /// [accessConfig] The config settings for accessing runtime.
  /// [createTime] Runtime creation time.
  /// [healthState] Runtime health_state.
  /// [labels] Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [metrics] Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  /// [migrated] Bool indicating whether this notebook has been migrated to a Workbench Instance
  /// [name] The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  /// [runtimeMigrationEligibility] Checks how feasible a migration from GmN to WbI is.
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [state] Runtime state.
  /// [updateTime] Runtime update time.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  const GetRuntimeResult({
    required this.accessConfig,
    required this.createTime,
    required this.healthState,
    required this.labels,
    required this.metrics,
    required this.migrated,
    required this.name,
    required this.runtimeMigrationEligibility,
    required this.softwareConfig,
    required this.state,
    required this.updateTime,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': accessConfig.toMap(),
      'createTime': createTime,
      'healthState': healthState,
      'labels': labels,
      'metrics': metrics.toMap(),
      'migrated': migrated,
      'name': name,
      'runtimeMigrationEligibility': runtimeMigrationEligibility.toMap(),
      'softwareConfig': softwareConfig.toMap(),
      'state': state,
      'updateTime': updateTime,
      'virtualMachine': virtualMachine.toMap(),
    };
  }

  factory GetRuntimeResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeResult(
      accessConfig: RuntimeAccessConfigResponse.fromMap((map['accessConfig']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      healthState: map['healthState'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: RuntimeMetricsResponse.fromMap((map['metrics']! as Map).cast<String, dynamic>()),
      migrated: map['migrated'] as bool,
      name: map['name'] as String,
      runtimeMigrationEligibility: RuntimeMigrationEligibilityResponse.fromMap((map['runtimeMigrationEligibility']! as Map).cast<String, dynamic>()),
      softwareConfig: RuntimeSoftwareConfigResponse.fromMap((map['softwareConfig']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      virtualMachine: VirtualMachineResponse.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>()),
    );
  }
}
