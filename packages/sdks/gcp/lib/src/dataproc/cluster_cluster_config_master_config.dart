// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_master_config_accelerator.dart';
import 'cluster_cluster_config_master_config_disk_config.dart';

class ClusterClusterConfigMasterConfig {
  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  final pulumi.Input<List<ClusterClusterConfigMasterConfigAccelerator>>? accelerators;
  /// Disk Config
  final pulumi.Input<ClusterClusterConfigMasterConfigDiskConfig>? diskConfig;
  /// The URI for the image to use for this worker.  See [the guide](https://cloud.google.com/dataproc/docs/guides/dataproc-images)
  /// for more information.
  final pulumi.Input<String>? imageUri;
  /// List of master instance names which
  /// have been assigned to the cluster.
  final pulumi.Input<List<String>>? instanceNames;
  /// The name of a Google Compute Engine machine type
  /// to create for the master. If not specified, GCP will default to a predetermined
  /// computed value (currently `n1-standard-4`).
  final pulumi.Input<String>? machineType;
  /// The name of a minimum generation of CPU family
  /// for the master. If not specified, GCP will default to a predetermined computed value
  /// for each zone. See [the guide](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for details about which CPU families are available (and defaulted) for each zone.
  final pulumi.Input<String>? minCpuPlatform;
  /// Specifies the number of master nodes to create.
  /// If not specified, GCP will default to a predetermined computed value (currently 1).
  final pulumi.Input<int>? numInstances;

  /// Creates a new [ClusterClusterConfigMasterConfig].
  /// [accelerators] The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  /// [diskConfig] Disk Config
  /// [imageUri] The URI for the image to use for this worker.  See [the guide](https://cloud.google.com/dataproc/docs/guides/dataproc-images)
  /// [instanceNames] List of master instance names which
  /// [machineType] The name of a Google Compute Engine machine type
  /// [minCpuPlatform] The name of a minimum generation of CPU family
  /// [numInstances] Specifies the number of master nodes to create.
  ClusterClusterConfigMasterConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceNames,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigMasterConfigAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<ClusterClusterConfigMasterConfigAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigMasterConfigDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'instanceNames': ?instanceNames,
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
    };
  }

  factory ClusterClusterConfigMasterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigMasterConfig(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<ClusterClusterConfigMasterConfigAccelerator>(map['accelerators'], (value) => ClusterClusterConfigMasterConfigAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskConfig: map['diskConfig'] == null ? null : (ClusterClusterConfigMasterConfigDiskConfig.fromMap((map['diskConfig'] as Map).cast<String, dynamic>())).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
      instanceNames: map['instanceNames'] == null ? null : ((map['instanceNames'] as List).cast<String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      numInstances: map['numInstances'] == null ? null : (map['numInstances'] as int).input(),
    );
  }
}

