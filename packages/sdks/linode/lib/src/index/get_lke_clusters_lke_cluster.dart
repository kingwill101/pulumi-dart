// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_clusters_lke_cluster_control_plane.dart';

class GetLkeClustersLkeCluster {
  /// Enables the App Platform Layer for this cluster. Note: v4beta only and may not currently be available to all users.
  final pulumi.Input<bool> aplEnabled;
  /// Defines settings for the Kubernetes Control Plane.
  final pulumi.Input<GetLkeClustersLkeClusterControlPlane> controlPlane;
  /// When this Kubernetes cluster was created.
  final pulumi.Input<String> created;
  /// The LKE Cluster's ID.
  final pulumi.Input<int> id;
  /// The Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.17`).
  final pulumi.Input<String> k8sVersion;
  /// The unique label for the cluster.
  final pulumi.Input<String> label;
  /// This Kubernetes cluster's location.
  final pulumi.Input<String> region;
  /// The networking stack type of the Kubernetes cluster.
  final pulumi.Input<String> stackType;
  /// The status of the cluster.
  final pulumi.Input<String> status;
  /// The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled).
  final pulumi.Input<int> subnetId;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  final pulumi.Input<String> tier;
  /// When this Kubernetes cluster was updated.
  final pulumi.Input<String> updated;
  /// The ID of the VPC to use for the Kubernetes cluster.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetLkeClustersLkeCluster].
  /// [aplEnabled] Enables the App Platform Layer for this cluster. Note: v4beta only and may not currently be available to all users.
  /// [controlPlane] Defines settings for the Kubernetes Control Plane.
  /// [created] When this Kubernetes cluster was created.
  /// [id] The LKE Cluster's ID.
  /// [k8sVersion] The Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.17`).
  /// [label] The unique label for the cluster.
  /// [region] This Kubernetes cluster's location.
  /// [stackType] The networking stack type of the Kubernetes cluster.
  /// [status] The status of the cluster.
  /// [subnetId] The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled).
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [tier] The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  /// [updated] When this Kubernetes cluster was updated.
  /// [vpcId] The ID of the VPC to use for the Kubernetes cluster.
  GetLkeClustersLkeCluster({
    required this.aplEnabled,
    required this.controlPlane,
    required this.created,
    required this.id,
    required this.k8sVersion,
    required this.label,
    required this.region,
    required this.stackType,
    required this.status,
    required this.subnetId,
    required this.tags,
    required this.tier,
    required this.updated,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aplEnabled': aplEnabled,
      'controlPlane': pulumi.Input.mapInputValue<GetLkeClustersLkeClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'created': created,
      'id': id,
      'k8sVersion': k8sVersion,
      'label': label,
      'region': region,
      'stackType': stackType,
      'status': status,
      'subnetId': subnetId,
      'tags': tags,
      'tier': tier,
      'updated': updated,
      'vpcId': vpcId,
    };
  }

  factory GetLkeClustersLkeCluster.fromMap(Map<String, dynamic> map) {
    return GetLkeClustersLkeCluster(
      aplEnabled: (map['aplEnabled'] as bool).input(),
      controlPlane: (GetLkeClustersLkeClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      created: (map['created'] as String).input(),
      id: (map['id'] as int).input(),
      k8sVersion: (map['k8sVersion'] as String).input(),
      label: (map['label'] as String).input(),
      region: (map['region'] as String).input(),
      stackType: (map['stackType'] as String).input(),
      status: (map['status'] as String).input(),
      subnetId: (map['subnetId'] as int).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      tier: (map['tier'] as String).input(),
      updated: (map['updated'] as String).input(),
      vpcId: (map['vpcId'] as int).input(),
    );
  }
}

