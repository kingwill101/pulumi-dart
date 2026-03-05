// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_cluster_control_plane.dart';
import 'get_lke_cluster_pool.dart';

/// Result data returned by getLkeCluster.
class GetLkeClusterResult {
  /// The endpoints for the Kubernetes API server.
  final List<String> apiEndpoints;
  /// Enables the App Platform Layer
  final bool aplEnabled;
  /// The settings for the Kubernetes Control Plane.
  final List<GetLkeClusterControlPlane> controlPlanes;
  /// When this Kubernetes cluster was created.
  final String created;
  /// The Kubernetes Dashboard access URL for this cluster. LKE Enterprise does not have a dashboard URL.
  final String dashboardUrl;
  /// The ID of the node.
  final int id;
  /// The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final String k8sVersion;
  /// The base64 encoded kubeconfig for the Kubernetes cluster.
  final String kubeconfig;
  /// The label of the Node Pool.
  final String label;
  /// Node pools associated with this cluster.
  final List<GetLkeClusterPool> pools;
  /// This Kubernetes cluster's location.
  final String region;
  /// The networking stack type of the Kubernetes cluster.
  final String stackType;
  /// The status of the node. (`ready`, `not_ready`)
  final String status;
  /// The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled).
  final int subnetId;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only populated when api_version is set to `v4beta`.**
  final String tier;
  /// When this Kubernetes cluster was updated.
  final String updated;
  /// The ID of the VPC to use for the Kubernetes cluster.
  final int vpcId;

  /// Creates a new [GetLkeClusterResult].
  /// [apiEndpoints] The endpoints for the Kubernetes API server.
  /// [aplEnabled] Enables the App Platform Layer
  /// [controlPlanes] The settings for the Kubernetes Control Plane.
  /// [created] When this Kubernetes cluster was created.
  /// [dashboardUrl] The Kubernetes Dashboard access URL for this cluster. LKE Enterprise does not have a dashboard URL.
  /// [id] The ID of the node.
  /// [k8sVersion] The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  /// [kubeconfig] The base64 encoded kubeconfig for the Kubernetes cluster.
  /// [label] The label of the Node Pool.
  /// [pools] Node pools associated with this cluster.
  /// [region] This Kubernetes cluster's location.
  /// [stackType] The networking stack type of the Kubernetes cluster.
  /// [status] The status of the node. (`ready`, `not_ready`)
  /// [subnetId] The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled).
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [tier] The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only populated when api_version is set to `v4beta`.**
  /// [updated] When this Kubernetes cluster was updated.
  /// [vpcId] The ID of the VPC to use for the Kubernetes cluster.
  GetLkeClusterResult({
    required this.apiEndpoints,
    required this.aplEnabled,
    required this.controlPlanes,
    required this.created,
    required this.dashboardUrl,
    required this.id,
    required this.k8sVersion,
    required this.kubeconfig,
    required this.label,
    required this.pools,
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
      'apiEndpoints': apiEndpoints,
      'aplEnabled': aplEnabled,
      'controlPlanes': pulumi.Input.encodeList<GetLkeClusterControlPlane, Map<String, dynamic>>(controlPlanes, (value) => value.toMap()),
      'created': created,
      'dashboardUrl': dashboardUrl,
      'id': id,
      'k8sVersion': k8sVersion,
      'kubeconfig': kubeconfig,
      'label': label,
      'pools': pulumi.Input.encodeList<GetLkeClusterPool, Map<String, dynamic>>(pools, (value) => value.toMap()),
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

  factory GetLkeClusterResult.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterResult(
      apiEndpoints: (map['apiEndpoints'] as List).cast<String>(),
      aplEnabled: map['aplEnabled'] as bool,
      controlPlanes: pulumi.Input.decodeList<GetLkeClusterControlPlane>(map['controlPlanes']!, (value) => GetLkeClusterControlPlane.fromMap((value as Map).cast<String, dynamic>())),
      created: map['created'] as String,
      dashboardUrl: map['dashboardUrl'] as String,
      id: map['id'] as int,
      k8sVersion: map['k8sVersion'] as String,
      kubeconfig: map['kubeconfig'] as String,
      label: map['label'] as String,
      pools: pulumi.Input.decodeList<GetLkeClusterPool>(map['pools']!, (value) => GetLkeClusterPool.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      stackType: map['stackType'] as String,
      status: map['status'] as String,
      subnetId: map['subnetId'] as int,
      tags: (map['tags'] as List).cast<String>(),
      tier: map['tier'] as String,
      updated: map['updated'] as String,
      vpcId: map['vpcId'] as int,
    );
  }
}

