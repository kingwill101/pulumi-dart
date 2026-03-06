// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'node_pool_logging_config_container_v1beta1.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsContainerV1beta1 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final pulumi.Input<GcfsConfigContainerV1beta1>? gcfsConfig;
  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final pulumi.Input<HostMaintenancePolicy>? hostMaintenancePolicy;
  /// Logging configuration for node pools.
  final pulumi.Input<NodePoolLoggingConfigContainerV1beta1>? loggingConfig;

  /// Creates a new [NodeConfigDefaultsContainerV1beta1].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [hostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [loggingConfig] Logging configuration for node pools.
  const NodeConfigDefaultsContainerV1beta1({
    this.gcfsConfig,
    this.hostMaintenancePolicy,
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<GcfsConfigContainerV1beta1, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<HostMaintenancePolicy, Map<String, dynamic>>(hostMaintenancePolicy, (value) => value.toMap()),
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolLoggingConfigContainerV1beta1, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory NodeConfigDefaultsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsContainerV1beta1(
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcfsConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolLoggingConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

