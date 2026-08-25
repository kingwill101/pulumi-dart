// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster.dart';

/// Result data returned by getCloudVmClusters.
class GetCloudVmClustersResult {
  final List<GetCloudVmClustersCloudVmCluster>? cloudVmClusters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetCloudVmClustersResult].
  /// [cloudVmClusters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetCloudVmClustersResult({
    this.cloudVmClusters,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusters': ?(() { final guardedValue = cloudVmClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClustersCloudVmCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetCloudVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersResult(
      cloudVmClusters: (() { final guardedValue = map['cloudVmClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClustersCloudVmCluster>(guardedValue, (value) => GetCloudVmClustersCloudVmCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
