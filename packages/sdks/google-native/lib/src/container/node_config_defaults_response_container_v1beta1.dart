// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcfs_config_response_container_v1beta1.dart';
import 'host_maintenance_policy_response.dart';
import 'node_pool_logging_config_response_container_v1beta1.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponseContainerV1beta1 {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final pulumi.Input<GcfsConfigResponseContainerV1beta1> gcfsConfig;
  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final pulumi.Input<HostMaintenancePolicyResponse> hostMaintenancePolicy;
  /// Logging configuration for node pools.
  final pulumi.Input<NodePoolLoggingConfigResponseContainerV1beta1> loggingConfig;

  /// Creates a new [NodeConfigDefaultsResponseContainerV1beta1].
  /// [gcfsConfig] GCFS (Google Container File System, also known as Riptide) options.
  /// [hostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [loggingConfig] Logging configuration for node pools.
  const NodeConfigDefaultsResponseContainerV1beta1({
    required this.gcfsConfig,
    required this.hostMaintenancePolicy,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcfsConfig': pulumi.Input.mapInputValue<GcfsConfigResponseContainerV1beta1, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'hostMaintenancePolicy': pulumi.Input.mapInputValue<HostMaintenancePolicyResponse, Map<String, dynamic>>(hostMaintenancePolicy, (value) => value.toMap()),
      'loggingConfig': pulumi.Input.mapInputValue<NodePoolLoggingConfigResponseContainerV1beta1, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory NodeConfigDefaultsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponseContainerV1beta1(
      gcfsConfig: pulumi.Input.fromValue(GcfsConfigResponseContainerV1beta1.fromMap((map['gcfsConfig']! as Map).cast<String, dynamic>())),
      hostMaintenancePolicy: pulumi.Input.fromValue(HostMaintenancePolicyResponse.fromMap((map['hostMaintenancePolicy']! as Map).cast<String, dynamic>())),
      loggingConfig: pulumi.Input.fromValue(NodePoolLoggingConfigResponseContainerV1beta1.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
