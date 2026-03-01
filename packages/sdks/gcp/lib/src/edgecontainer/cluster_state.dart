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
    pulumi.Output<ClusterAuthorization>? authorization,
    pulumi.Output<String>? clusterCaCertificate,
    pulumi.Output<ClusterControlPlane>? controlPlane,
    pulumi.Output<ClusterControlPlaneEncryption>? controlPlaneEncryption,
    pulumi.Output<String>? controlPlaneVersion,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? defaultMaxPodsPerNode,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? endpoint,
    pulumi.Output<List<String>>? externalLoadBalancerIpv4AddressPools,
    pulumi.Output<ClusterFleet>? fleet,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<ClusterMaintenanceEvent>>? maintenanceEvents,
    pulumi.Output<ClusterMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<String>? name,
    pulumi.Output<ClusterNetworking>? networking,
    pulumi.Output<String>? nodeVersion,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? releaseChannel,
    pulumi.Output<String>? status,
    pulumi.Output<ClusterSystemAddonsConfig>? systemAddonsConfig,
    pulumi.Output<String>? targetVersion,
    pulumi.Output<String>? updateTime,
  }) :
      authorization = pulumi.Input.asOptionalInput<ClusterAuthorization>(authorization),
      clusterCaCertificate = pulumi.Input.asOptionalInput<String>(clusterCaCertificate),
      controlPlane = pulumi.Input.asOptionalInput<ClusterControlPlane>(controlPlane),
      controlPlaneEncryption = pulumi.Input.asOptionalInput<ClusterControlPlaneEncryption>(controlPlaneEncryption),
      controlPlaneVersion = pulumi.Input.asOptionalInput<String>(controlPlaneVersion),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultMaxPodsPerNode = pulumi.Input.asOptionalInput<int>(defaultMaxPodsPerNode),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      externalLoadBalancerIpv4AddressPools = pulumi.Input.asOptionalInput<List<String>>(externalLoadBalancerIpv4AddressPools),
      fleet = pulumi.Input.asOptionalInput<ClusterFleet>(fleet),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceEvents = pulumi.Input.asOptionalInput<List<ClusterMaintenanceEvent>>(maintenanceEvents),
      maintenancePolicy = pulumi.Input.asOptionalInput<ClusterMaintenancePolicy>(maintenancePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      networking = pulumi.Input.asOptionalInput<ClusterNetworking>(networking),
      nodeVersion = pulumi.Input.asOptionalInput<String>(nodeVersion),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      releaseChannel = pulumi.Input.asOptionalInput<String>(releaseChannel),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemAddonsConfig = pulumi.Input.asOptionalInput<ClusterSystemAddonsConfig>(systemAddonsConfig),
      targetVersion = pulumi.Input.asOptionalInput<String>(targetVersion),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      authorization: map['authorization'] == null ? null : pulumi.Output.create<ClusterAuthorization>(ClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      clusterCaCertificate: map['clusterCaCertificate'] == null ? null : pulumi.Output.create<String>(map['clusterCaCertificate'] as String),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<ClusterControlPlane>(ClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      controlPlaneEncryption: map['controlPlaneEncryption'] == null ? null : pulumi.Output.create<ClusterControlPlaneEncryption>(ClusterControlPlaneEncryption.fromMap((map['controlPlaneEncryption'] as Map).cast<String, dynamic>())),
      controlPlaneVersion: map['controlPlaneVersion'] == null ? null : pulumi.Output.create<String>(map['controlPlaneVersion'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultMaxPodsPerNode: map['defaultMaxPodsPerNode'] == null ? null : pulumi.Output.create<int>(map['defaultMaxPodsPerNode'] as int),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      externalLoadBalancerIpv4AddressPools: map['externalLoadBalancerIpv4AddressPools'] == null ? null : pulumi.Output.create<List<String>>((map['externalLoadBalancerIpv4AddressPools'] as List).cast<String>()),
      fleet: map['fleet'] == null ? null : pulumi.Output.create<ClusterFleet>(ClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceEvents: map['maintenanceEvents'] == null ? null : pulumi.Output.create<List<ClusterMaintenanceEvent>>(pulumi.Input.decodeList<ClusterMaintenanceEvent>(map['maintenanceEvents'], (value) => ClusterMaintenanceEvent.fromMap((value as Map).cast<String, dynamic>()))),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<ClusterMaintenancePolicy>(ClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networking: map['networking'] == null ? null : pulumi.Output.create<ClusterNetworking>(ClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())),
      nodeVersion: map['nodeVersion'] == null ? null : pulumi.Output.create<String>(map['nodeVersion'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      releaseChannel: map['releaseChannel'] == null ? null : pulumi.Output.create<String>(map['releaseChannel'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      systemAddonsConfig: map['systemAddonsConfig'] == null ? null : pulumi.Output.create<ClusterSystemAddonsConfig>(ClusterSystemAddonsConfig.fromMap((map['systemAddonsConfig'] as Map).cast<String, dynamic>())),
      targetVersion: map['targetVersion'] == null ? null : pulumi.Output.create<String>(map['targetVersion'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

