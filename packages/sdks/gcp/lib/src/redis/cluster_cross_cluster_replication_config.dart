// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cross_cluster_replication_config_membership.dart';
import 'cluster_cross_cluster_replication_config_primary_cluster.dart';
import 'cluster_cross_cluster_replication_config_secondary_cluster.dart';

class ClusterCrossClusterReplicationConfig {
  /// The role of the cluster in cross cluster replication. Supported values are:
  /// 1. `CLUSTER_ROLE_UNSPECIFIED`: This is an independent cluster that has never participated in cross cluster replication. It allows both reads and writes.
  /// 1. `NONE`: This is an independent cluster that previously participated in cross cluster replication(either as a `PRIMARY` or `SECONDARY` cluster). It allows both reads and writes.
  /// 1. `PRIMARY`: This cluster serves as the replication source for secondary clusters that are replicating from it. Any data written to it is automatically replicated to its secondary clusters. It allows both reads and writes.
  /// 1. `SECONDARY`: This cluster replicates data from the primary cluster. It allows only reads.
  /// Possible values are: `CLUSTER_ROLE_UNSPECIFIED`, `NONE`, `PRIMARY`, `SECONDARY`.
  final pulumi.Input<String>? clusterRole;
  /// (Output)
  /// An output only view of all the member clusters participating in cross cluster replication. This field is populated for all the member clusters irrespective of their cluster role.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterCrossClusterReplicationConfigMembership>>? memberships;
  /// Details of the primary cluster that is used as the replication source for this secondary cluster. This is allowed to be set only for clusters whose cluster role is of type `SECONDARY`.
  /// Structure is documented below.
  final pulumi.Input<ClusterCrossClusterReplicationConfigPrimaryCluster>? primaryCluster;
  /// List of secondary clusters that are replicating from this primary cluster. This is allowed to be set only for clusters whose cluster role is of type `PRIMARY`.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterCrossClusterReplicationConfigSecondaryCluster>>? secondaryClusters;
  /// (Output)
  /// The last time cross cluster replication config was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ClusterCrossClusterReplicationConfig].
  /// [clusterRole] The role of the cluster in cross cluster replication. Supported values are:
  /// [memberships] (Output)
  /// [primaryCluster] Details of the primary cluster that is used as the replication source for this secondary cluster. This is allowed to be set only for clusters whose cluster role is of type `SECONDARY`.
  /// [secondaryClusters] List of secondary clusters that are replicating from this primary cluster. This is allowed to be set only for clusters whose cluster role is of type `PRIMARY`.
  /// [updateTime] (Output)
  const ClusterCrossClusterReplicationConfig({
    this.clusterRole,
    this.memberships,
    this.primaryCluster,
    this.secondaryClusters,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRole': ?clusterRole,
      'memberships': ?pulumi.Input.mapOptionalInputValue<List<ClusterCrossClusterReplicationConfigMembership>, List<Map<String, dynamic>>>(memberships, (value) => pulumi.Input.encodeList<ClusterCrossClusterReplicationConfigMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryCluster': ?pulumi.Input.mapOptionalInputValue<ClusterCrossClusterReplicationConfigPrimaryCluster, Map<String, dynamic>>(primaryCluster, (value) => value.toMap()),
      'secondaryClusters': ?pulumi.Input.mapOptionalInputValue<List<ClusterCrossClusterReplicationConfigSecondaryCluster>, List<Map<String, dynamic>>>(secondaryClusters, (value) => pulumi.Input.encodeList<ClusterCrossClusterReplicationConfigSecondaryCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory ClusterCrossClusterReplicationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfig(
      clusterRole: (() { final guardedValue = map['clusterRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCrossClusterReplicationConfigMembership>(guardedValue, (value) => ClusterCrossClusterReplicationConfigMembership.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primaryCluster: (() { final guardedValue = map['primaryCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterCrossClusterReplicationConfigPrimaryCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryClusters: (() { final guardedValue = map['secondaryClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCrossClusterReplicationConfigSecondaryCluster>(guardedValue, (value) => ClusterCrossClusterReplicationConfigSecondaryCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

