// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization.dart';
import 'cluster_control_plane.dart';
import 'cluster_control_plane_encryption.dart';
import 'cluster_fleet.dart';
import 'cluster_maintenance_event.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_networking.dart';
import 'cluster_system_addons_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthorization>? authorization;
  /// The PEM-encoded public certificate of the cluster's CA.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clusterCaCertificate;
  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlane>? controlPlane;
  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneEncryption>? controlPlaneEncryption;
  /// The control plane release version.
  final pulumi.Input<String>? controlPlaneVersion;
  /// (Output)
  /// The time when the maintenance event request was created.
  final pulumi.Input<String>? createTime;
  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  final pulumi.Input<int>? defaultMaxPodsPerNode;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The IP address of the Kubernetes API server.
  final pulumi.Input<String>? endpoint;
  /// Address pools for cluster data plane external load balancing.
  final pulumi.Input<List<String>>? externalLoadBalancerIpv4AddressPools;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterFleet>? fleet;
  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// All the maintenance events scheduled for the cluster, including the ones
  /// ongoing, planned for the future and done in the past (up to 90 days).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterMaintenanceEvent>>? maintenanceEvents;
  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicy>? maintenancePolicy;
  /// The GDCE cluster name.
  final pulumi.Input<String>? name;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworking>? networking;
  /// The lowest release version among all worker nodes. This field can be empty
  /// if the cluster does not have any worker nodes.
  final pulumi.Input<String>? nodeVersion;
  /// The port number of the Kubernetes API server.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  final pulumi.Input<String>? releaseChannel;
  /// Indicates the status of the cluster.
  final pulumi.Input<String>? status;
  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  final pulumi.Input<ClusterSystemAddonsConfig>? systemAddonsConfig;
  /// The target cluster version. For example: "1.5.0".
  final pulumi.Input<String>? targetVersion;
  /// (Output)
  /// The time when the maintenance event message was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ClusterState].
  /// [authorization] RBAC policy that will be applied and managed by GEC.
  /// [clusterCaCertificate] The PEM-encoded public certificate of the cluster's CA.
  /// [controlPlane] The configuration of the cluster control plane.
  /// [controlPlaneEncryption] Remote control plane disk encryption options. This field is only used when
  /// [controlPlaneVersion] The control plane release version.
  /// [createTime] (Output)
  /// [defaultMaxPodsPerNode] The default maximum number of pods per node used if a maximum value is not
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpoint] The IP address of the Kubernetes API server.
  /// [externalLoadBalancerIpv4AddressPools] Address pools for cluster data plane external load balancing.
  /// [fleet] Fleet related configuration.
  /// [labels] User-defined labels for the edgecloud cluster.
  /// [location] The location of the resource.
  /// [maintenanceEvents] All the maintenance events scheduled for the cluster, including the ones
  /// [maintenancePolicy] Cluster-wide maintenance policy configuration.
  /// [name] The GDCE cluster name.
  /// [networking] Fleet related configuration.
  /// [nodeVersion] The lowest release version among all worker nodes. This field can be empty
  /// [port] The port number of the Kubernetes API server.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [releaseChannel] The release channel a cluster is subscribed to.
  /// [status] Indicates the status of the cluster.
  /// [systemAddonsConfig] Config that customers are allowed to define for GDCE system add-ons.
  /// [targetVersion] The target cluster version. For example: "1.5.0".
  /// [updateTime] (Output)
  ClusterState({
    this.authorization,
    this.clusterCaCertificate,
    this.controlPlane,
    this.controlPlaneEncryption,
    this.controlPlaneVersion,
    this.createTime,
    this.defaultMaxPodsPerNode,
    this.effectiveLabels,
    this.endpoint,
    this.externalLoadBalancerIpv4AddressPools,
    this.fleet,
    this.labels,
    this.location,
    this.maintenanceEvents,
    this.maintenancePolicy,
    this.name,
    this.networking,
    this.nodeVersion,
    this.port,
    this.project,
    this.pulumiLabels,
    this.releaseChannel,
    this.status,
    this.systemAddonsConfig,
    this.targetVersion,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<ClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'clusterCaCertificate': ?clusterCaCertificate,
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'controlPlaneEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEncryption, Map<String, dynamic>>(controlPlaneEncryption, (value) => value.toMap()),
      'controlPlaneVersion': ?controlPlaneVersion,
      'createTime': ?createTime,
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'effectiveLabels': ?effectiveLabels,
      'endpoint': ?endpoint,
      'externalLoadBalancerIpv4AddressPools': ?externalLoadBalancerIpv4AddressPools,
      'fleet': ?pulumi.Input.mapOptionalInputValue<ClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceEvents': ?pulumi.Input.mapOptionalInputValue<List<ClusterMaintenanceEvent>, List<Map<String, dynamic>>>(maintenanceEvents, (value) => pulumi.Input.encodeList<ClusterMaintenanceEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'networking': ?pulumi.Input.mapOptionalInputValue<ClusterNetworking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'nodeVersion': ?nodeVersion,
      'port': ?port,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'releaseChannel': ?releaseChannel,
      'status': ?status,
      'systemAddonsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSystemAddonsConfig, Map<String, dynamic>>(systemAddonsConfig, (value) => value.toMap()),
      'targetVersion': ?targetVersion,
      'updateTime': ?updateTime,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      authorization: map['authorization'] == null ? null : (ClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())).input(),
      clusterCaCertificate: map['clusterCaCertificate'] == null ? null : (map['clusterCaCertificate'] as String).input(),
      controlPlane: map['controlPlane'] == null ? null : (ClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      controlPlaneEncryption: map['controlPlaneEncryption'] == null ? null : (ClusterControlPlaneEncryption.fromMap((map['controlPlaneEncryption'] as Map).cast<String, dynamic>())).input(),
      controlPlaneVersion: map['controlPlaneVersion'] == null ? null : (map['controlPlaneVersion'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      defaultMaxPodsPerNode: map['defaultMaxPodsPerNode'] == null ? null : (map['defaultMaxPodsPerNode'] as int).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      externalLoadBalancerIpv4AddressPools: map['externalLoadBalancerIpv4AddressPools'] == null ? null : ((map['externalLoadBalancerIpv4AddressPools'] as List).cast<String>()).input(),
      fleet: map['fleet'] == null ? null : (ClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceEvents: map['maintenanceEvents'] == null ? null : (pulumi.Input.decodeList<ClusterMaintenanceEvent>(map['maintenanceEvents'], (value) => ClusterMaintenanceEvent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (ClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networking: map['networking'] == null ? null : (ClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())).input(),
      nodeVersion: map['nodeVersion'] == null ? null : (map['nodeVersion'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      releaseChannel: map['releaseChannel'] == null ? null : (map['releaseChannel'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      systemAddonsConfig: map['systemAddonsConfig'] == null ? null : (ClusterSystemAddonsConfig.fromMap((map['systemAddonsConfig'] as Map).cast<String, dynamic>())).input(),
      targetVersion: map['targetVersion'] == null ? null : (map['targetVersion'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

