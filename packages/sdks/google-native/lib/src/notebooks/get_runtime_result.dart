// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_access_config_response.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response.dart';

/// Result data returned by getRuntime.
class GetRuntimeResult {
  /// The config settings for accessing runtime.
  final RuntimeAccessConfigResponse? accessConfig;
  /// Runtime creation time.
  final String? createTime;
  /// Runtime health_state.
  final String? healthState;
  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String>? labels;
  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  final RuntimeMetricsResponse? metrics;
  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  final bool? migrated;
  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  final String? name;
  /// Checks how feasible a migration from GmN to WbI is.
  final RuntimeMigrationEligibilityResponse? runtimeMigrationEligibility;
  /// The config settings for software inside the runtime.
  final RuntimeSoftwareConfigResponse? softwareConfig;
  /// Runtime state.
  final String? state;
  /// Runtime update time.
  final String? updateTime;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  final VirtualMachineResponse? virtualMachine;

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
    this.accessConfig,
    this.createTime,
    this.healthState,
    this.labels,
    this.metrics,
    this.migrated,
    this.name,
    this.runtimeMigrationEligibility,
    this.softwareConfig,
    this.state,
    this.updateTime,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?accessConfig?.toMap(),
      'createTime': ?createTime,
      'healthState': ?healthState,
      'labels': ?labels,
      'metrics': ?metrics?.toMap(),
      'migrated': ?migrated,
      'name': ?name,
      'runtimeMigrationEligibility': ?runtimeMigrationEligibility?.toMap(),
      'softwareConfig': ?softwareConfig?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
      'virtualMachine': ?virtualMachine?.toMap(),
    };
  }

  factory GetRuntimeResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeResult(
      accessConfig: (() { final guardedValue = map['accessConfig']; if (guardedValue == null) return null; return RuntimeAccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthState: (() { final guardedValue = map['healthState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return RuntimeMetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      migrated: (() { final guardedValue = map['migrated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeMigrationEligibility: (() { final guardedValue = map['runtimeMigrationEligibility']; if (guardedValue == null) return null; return RuntimeMigrationEligibilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      softwareConfig: (() { final guardedValue = map['softwareConfig']; if (guardedValue == null) return null; return RuntimeSoftwareConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return VirtualMachineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
