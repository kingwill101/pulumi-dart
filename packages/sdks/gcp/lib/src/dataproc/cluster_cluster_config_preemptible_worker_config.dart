// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_preemptible_worker_config_disk_config.dart';
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy.dart';

class ClusterClusterConfigPreemptibleWorkerConfig {
  /// Disk Config
  final pulumi.Input<ClusterClusterConfigPreemptibleWorkerConfigDiskConfig>? diskConfig;
  /// Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  final pulumi.Input<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy>? instanceFlexibilityPolicy;
  /// List of preemptible instance names which have been assigned
  /// to the cluster.
  final pulumi.Input<List<String>>? instanceNames;
  /// Specifies the number of preemptible nodes to create.
  /// Defaults to 0.
  final pulumi.Input<int>? numInstances;
  /// Specifies the preemptibility of the secondary workers. The default value is `PREEMPTIBLE`
  /// Accepted values are:
  /// * PREEMPTIBILITY_UNSPECIFIED
  /// * NON_PREEMPTIBLE
  /// * PREEMPTIBLE
  final pulumi.Input<String>? preemptibility;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfig].
  /// [diskConfig] Disk Config
  /// [instanceFlexibilityPolicy] Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  /// [instanceNames] List of preemptible instance names which have been assigned
  /// [numInstances] Specifies the number of preemptible nodes to create.
  /// [preemptibility] Specifies the preemptibility of the secondary workers. The default value is `PREEMPTIBLE`
  const ClusterClusterConfigPreemptibleWorkerConfig({
    this.diskConfig,
    this.instanceFlexibilityPolicy,
    this.instanceNames,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigPreemptibleWorkerConfigDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceNames': ?instanceNames,
      'numInstances': ?numInstances,
      'preemptibility': ?preemptibility,
    };
  }

  factory ClusterClusterConfigPreemptibleWorkerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfig(
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigPreemptibleWorkerConfigDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceNames: (() { final guardedValue = map['instanceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      numInstances: (() { final guardedValue = map['numInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preemptibility: (() { final guardedValue = map['preemptibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
