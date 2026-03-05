// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cluster_autoscaling_config.dart';

class InstanceCluster {
  /// [Autoscaling](https://cloud.google.com/bigtable/docs/autoscaling#parameters) config for the cluster, contains the following arguments:
  final pulumi.Input<InstanceClusterAutoscalingConfig>? autoscalingConfig;
  /// The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  final pulumi.Input<String> clusterId;
  /// Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster.
  final pulumi.Input<String>? kmsKeyName;
  /// The node scaling factor for this cluster. One of `"NodeScalingFactor1X"` or `"NodeScalingFactor2X"`. Defaults to `"NodeScalingFactor1X"`. If `"NodeScalingFactor2X"` is specified, then `num_nodes`, `min_nodes`, and `max_nodes` would need to be specified in increments of 2. This value cannot be updated after the cluster is created.
  ///
  /// &gt; **Note**: Removing the field entirely from the config will cause the provider to default to the backend value.
  ///
  /// !&gt; **Warning**: Modifying this field will cause the provider to delete/recreate the entire resource.
  ///
  /// !&gt; **Warning:** Modifying the `storage_type`, `zone` or `kms_key_name` of an existing cluster (by
  /// `cluster_id`) will cause the provider to delete/recreate the entire
  /// `gcp.bigtable.Instance` resource. If these values are changing, use a new
  /// `cluster_id`.
  final pulumi.Input<String>? nodeScalingFactor;
  /// The number of nodes in the cluster.
  /// If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final pulumi.Input<int>? numNodes;
  /// describes the current state of the cluster.
  final pulumi.Input<String>? state;
  /// The storage type to use. One of `"SSD"` or
  /// `"HDD"`. Defaults to `"SSD"`.
  final pulumi.Input<String>? storageType;
  /// The zone to create the Cloud Bigtable cluster in. If it not
  /// specified, the provider zone is used. Each cluster must have a different zone in the same region. Zones that support
  /// Bigtable instances are noted on the [Cloud Bigtable locations page](https://cloud.google.com/bigtable/docs/locations).
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceCluster].
  /// [autoscalingConfig] [Autoscaling](https://cloud.google.com/bigtable/docs/autoscaling#parameters) config for the cluster, contains the following arguments:
  /// [clusterId] The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster.
  /// [nodeScalingFactor] The node scaling factor for this cluster. One of `"NodeScalingFactor1X"` or `"NodeScalingFactor2X"`. Defaults to `"NodeScalingFactor1X"`. If `"NodeScalingFactor2X"` is specified, then `num_nodes`, `min_nodes`, and `max_nodes` would need to be specified in increments of 2. This value cannot be updated after the cluster is created.
  /// [numNodes] The number of nodes in the cluster.
  /// [state] describes the current state of the cluster.
  /// [storageType] The storage type to use. One of `"SSD"` or
  /// [zone] The zone to create the Cloud Bigtable cluster in. If it not
  InstanceCluster({
    this.autoscalingConfig,
    required this.clusterId,
    this.kmsKeyName,
    this.nodeScalingFactor,
    this.numNodes,
    this.state,
    this.storageType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<InstanceClusterAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'kmsKeyName': ?kmsKeyName,
      'nodeScalingFactor': ?nodeScalingFactor,
      'numNodes': ?numNodes,
      'state': ?state,
      'storageType': ?storageType,
      'zone': ?zone,
    };
  }

  factory InstanceCluster.fromMap(Map<String, dynamic> map) {
    return InstanceCluster(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceClusterAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeScalingFactor: (() { final guardedValue = map['nodeScalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numNodes: (() { final guardedValue = map['numNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

