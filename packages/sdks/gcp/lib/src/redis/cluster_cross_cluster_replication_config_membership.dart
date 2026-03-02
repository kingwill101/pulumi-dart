// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cross_cluster_replication_config_membership_primary_cluster.dart';
import 'cluster_cross_cluster_replication_config_membership_secondary_cluster.dart';

class ClusterCrossClusterReplicationConfigMembership {
  /// Details of the primary cluster that is used as the replication source for all the secondary clusters.
  final pulumi.Input<List<ClusterCrossClusterReplicationConfigMembershipPrimaryCluster>>? primaryClusters;
  /// List of secondary clusters that are replicating from the primary cluster.
  final pulumi.Input<List<ClusterCrossClusterReplicationConfigMembershipSecondaryCluster>>? secondaryClusters;

  /// Creates a new [ClusterCrossClusterReplicationConfigMembership].
  /// [primaryClusters] Details of the primary cluster that is used as the replication source for all the secondary clusters.
  /// [secondaryClusters] List of secondary clusters that are replicating from the primary cluster.
  ClusterCrossClusterReplicationConfigMembership({
    this.primaryClusters,
    this.secondaryClusters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusters': ?pulumi.Input.mapOptionalInputValue<List<ClusterCrossClusterReplicationConfigMembershipPrimaryCluster>, List<Map<String, dynamic>>>(primaryClusters, (value) => pulumi.Input.encodeList<ClusterCrossClusterReplicationConfigMembershipPrimaryCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryClusters': ?pulumi.Input.mapOptionalInputValue<List<ClusterCrossClusterReplicationConfigMembershipSecondaryCluster>, List<Map<String, dynamic>>>(secondaryClusters, (value) => pulumi.Input.encodeList<ClusterCrossClusterReplicationConfigMembershipSecondaryCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterCrossClusterReplicationConfigMembership.fromMap(Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfigMembership(
      primaryClusters: map['primaryClusters'] == null ? null : (pulumi.Input.decodeList<ClusterCrossClusterReplicationConfigMembershipPrimaryCluster>(map['primaryClusters'], (value) => ClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryClusters: map['secondaryClusters'] == null ? null : (pulumi.Input.decodeList<ClusterCrossClusterReplicationConfigMembershipSecondaryCluster>(map['secondaryClusters'], (value) => ClusterCrossClusterReplicationConfigMembershipSecondaryCluster.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

