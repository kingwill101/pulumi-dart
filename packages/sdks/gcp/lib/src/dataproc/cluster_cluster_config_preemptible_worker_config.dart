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
  ClusterClusterConfigPreemptibleWorkerConfig({
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
      diskConfig: map['diskConfig'] == null ? null : (ClusterClusterConfigPreemptibleWorkerConfigDiskConfig.fromMap((map['diskConfig'] as Map).cast<String, dynamic>())).input(),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null ? null : (ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy.fromMap((map['instanceFlexibilityPolicy'] as Map).cast<String, dynamic>())).input(),
      instanceNames: map['instanceNames'] == null ? null : ((map['instanceNames'] as List).cast<String>()).input(),
      numInstances: map['numInstances'] == null ? null : (map['numInstances'] as int).input(),
      preemptibility: map['preemptibility'] == null ? null : (map['preemptibility'] as String).input(),
    );
  }
}

