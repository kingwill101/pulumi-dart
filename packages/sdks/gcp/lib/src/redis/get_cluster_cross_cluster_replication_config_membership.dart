// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cross_cluster_replication_config_membership_primary_cluster.dart';
import 'get_cluster_cross_cluster_replication_config_membership_secondary_cluster.dart';

class GetClusterCrossClusterReplicationConfigMembership {
  /// Details of the primary cluster that is used as the replication source for all the secondary clusters.
  final pulumi.Input<List<GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster>> primaryClusters;
  /// List of secondary clusters that are replicating from the primary cluster.
  final pulumi.Input<List<GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster>> secondaryClusters;

  /// Creates a new [GetClusterCrossClusterReplicationConfigMembership].
  /// [primaryClusters] Details of the primary cluster that is used as the replication source for all the secondary clusters.
  /// [secondaryClusters] List of secondary clusters that are replicating from the primary cluster.
  GetClusterCrossClusterReplicationConfigMembership({
    required this.primaryClusters,
    required this.secondaryClusters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusters': pulumi.Input.mapInputValue<List<GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster>, List<Map<String, dynamic>>>(primaryClusters, (value) => pulumi.Input.encodeList<GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryClusters': pulumi.Input.mapInputValue<List<GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster>, List<Map<String, dynamic>>>(secondaryClusters, (value) => pulumi.Input.encodeList<GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterCrossClusterReplicationConfigMembership.fromMap(Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigMembership(
      primaryClusters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster>(map['primaryClusters']!, (value) => GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap((value as Map).cast<String, dynamic>()))),
      secondaryClusters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster>(map['secondaryClusters']!, (value) => GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

