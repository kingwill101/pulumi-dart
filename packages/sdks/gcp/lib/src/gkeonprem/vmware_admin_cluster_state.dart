// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_addon_node.dart';
import 'vmware_admin_cluster_anti_affinity_groups.dart';
import 'vmware_admin_cluster_authorization.dart';
import 'vmware_admin_cluster_auto_repair_config.dart';
import 'vmware_admin_cluster_control_plane_node.dart';
import 'vmware_admin_cluster_fleet.dart';
import 'vmware_admin_cluster_load_balancer.dart';
import 'vmware_admin_cluster_network_config.dart';
import 'vmware_admin_cluster_platform_config.dart';
import 'vmware_admin_cluster_private_registry_config.dart';
import 'vmware_admin_cluster_proxy.dart';
import 'vmware_admin_cluster_status.dart';
import 'vmware_admin_cluster_vcenter.dart';

/// Input properties used for looking up and filtering VmwareAdminCluster resources.
class VmwareAdminClusterState {
  /// The VMware admin cluster addon node configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAddonNode>? addonNode;
  /// Annotations on the VMware Admin Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAntiAffinityGroups>? antiAffinityGroups;
  /// The VMware admin cluster authorization configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAuthorization>? authorization;
  /// Configuration for auto repairing.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAutoRepairConfig>? autoRepairConfig;
  /// The bootstrap cluster this VMware admin cluster belongs to.
  final pulumi.Input<String>? bootstrapClusterMembership;
  /// The VMware admin cluster control plane node configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterControlPlaneNode>? controlPlaneNode;
  /// The time the cluster was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// A human readable description of this VMware admin cluster.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// If set, the advanced cluster feature is enabled.
  final pulumi.Input<bool>? enableAdvancedCluster;
  /// The DNS name of VMware admin cluster's API server.
  final pulumi.Input<String>? endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterFleet>>? fleets;
  /// The OS image type for the VMware admin cluster.
  final pulumi.Input<String>? imageType;
  /// Specifies the load balancer configuration for VMware admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancer>? loadBalancer;
  /// The object name of the VMwareAdminCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  final pulumi.Input<String>? localName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The VMware admin cluster resource name.
  final pulumi.Input<String>? name;
  /// The VMware admin cluster network configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfig>? networkConfig;
  /// The Anthos clusters on the VMware version for the admin cluster.
  final pulumi.Input<String>? onPremVersion;
  /// The VMware platform configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterPlatformConfig>? platformConfig;
  /// Configuration for private registry.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterPrivateRegistryConfig>? privateRegistryConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration for proxy.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterProxy>? proxy;
  /// If set, there are currently changes in flight to the VMware admin cluster.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterStatus>>? statuses;
  /// The unique identifier of the VMware Admin Cluster.
  final pulumi.Input<String>? uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;
  /// Specifies vCenter config for the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterVcenter>? vcenter;

  /// Creates a new [VmwareAdminClusterState].
  /// [addonNode] The VMware admin cluster addon node configuration.
  /// [annotations] Annotations on the VMware Admin Cluster.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// [authorization] The VMware admin cluster authorization configuration.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [bootstrapClusterMembership] The bootstrap cluster this VMware admin cluster belongs to.
  /// [controlPlaneNode] The VMware admin cluster control plane node configuration.
  /// [createTime] The time the cluster was created, in RFC3339 text format.
  /// [description] A human readable description of this VMware admin cluster.
  /// [effectiveAnnotations] Optional.
  /// [enableAdvancedCluster] If set, the advanced cluster feature is enabled.
  /// [endpoint] The DNS name of VMware admin cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [fleets] Fleet configuration for the cluster.
  /// [imageType] The OS image type for the VMware admin cluster.
  /// [loadBalancer] Specifies the load balancer configuration for VMware admin cluster.
  /// [localName] The object name of the VMwareAdminCluster custom resource on the
  /// [location] The location of the resource.
  /// [name] The VMware admin cluster resource name.
  /// [networkConfig] The VMware admin cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for the admin cluster.
  /// [platformConfig] The VMware platform configuration.
  /// [privateRegistryConfig] Configuration for private registry.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Configuration for proxy.
  /// [reconciling] If set, there are currently changes in flight to the VMware admin cluster.
  /// [state] (Output)
  /// [statuses] ResourceStatus representing detailed cluster state.
  /// [uid] The unique identifier of the VMware Admin Cluster.
  /// [updateTime] The time the cluster was last updated, in RFC3339 text format.
  /// [vcenter] Specifies vCenter config for the admin cluster.
  VmwareAdminClusterState({
    pulumi.Output<VmwareAdminClusterAddonNode>? addonNode,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<VmwareAdminClusterAntiAffinityGroups>? antiAffinityGroups,
    pulumi.Output<VmwareAdminClusterAuthorization>? authorization,
    pulumi.Output<VmwareAdminClusterAutoRepairConfig>? autoRepairConfig,
    pulumi.Output<String>? bootstrapClusterMembership,
    pulumi.Output<VmwareAdminClusterControlPlaneNode>? controlPlaneNode,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<bool>? enableAdvancedCluster,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<List<VmwareAdminClusterFleet>>? fleets,
    pulumi.Output<String>? imageType,
    pulumi.Output<VmwareAdminClusterLoadBalancer>? loadBalancer,
    pulumi.Output<String>? localName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<VmwareAdminClusterNetworkConfig>? networkConfig,
    pulumi.Output<String>? onPremVersion,
    pulumi.Output<VmwareAdminClusterPlatformConfig>? platformConfig,
    pulumi.Output<VmwareAdminClusterPrivateRegistryConfig>? privateRegistryConfig,
    pulumi.Output<String>? project,
    pulumi.Output<VmwareAdminClusterProxy>? proxy,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<List<VmwareAdminClusterStatus>>? statuses,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<VmwareAdminClusterVcenter>? vcenter,
  }) :
      addonNode = pulumi.Input.asOptionalInput<VmwareAdminClusterAddonNode>(addonNode),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      antiAffinityGroups = pulumi.Input.asOptionalInput<VmwareAdminClusterAntiAffinityGroups>(antiAffinityGroups),
      authorization = pulumi.Input.asOptionalInput<VmwareAdminClusterAuthorization>(authorization),
      autoRepairConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterAutoRepairConfig>(autoRepairConfig),
      bootstrapClusterMembership = pulumi.Input.asOptionalInput<String>(bootstrapClusterMembership),
      controlPlaneNode = pulumi.Input.asOptionalInput<VmwareAdminClusterControlPlaneNode>(controlPlaneNode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      enableAdvancedCluster = pulumi.Input.asOptionalInput<bool>(enableAdvancedCluster),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleets = pulumi.Input.asOptionalInput<List<VmwareAdminClusterFleet>>(fleets),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      loadBalancer = pulumi.Input.asOptionalInput<VmwareAdminClusterLoadBalancer>(loadBalancer),
      localName = pulumi.Input.asOptionalInput<String>(localName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterNetworkConfig>(networkConfig),
      onPremVersion = pulumi.Input.asOptionalInput<String>(onPremVersion),
      platformConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterPlatformConfig>(platformConfig),
      privateRegistryConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterPrivateRegistryConfig>(privateRegistryConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<VmwareAdminClusterProxy>(proxy),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<VmwareAdminClusterStatus>>(statuses),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vcenter = pulumi.Input.asOptionalInput<VmwareAdminClusterVcenter>(vcenter);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonNode': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterAddonNode, Map<String, dynamic>>(addonNode, (value) => value.toMap()),
      'annotations': ?annotations,
      'antiAffinityGroups': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterAntiAffinityGroups, Map<String, dynamic>>(antiAffinityGroups, (value) => value.toMap()),
      'authorization': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'autoRepairConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterAutoRepairConfig, Map<String, dynamic>>(autoRepairConfig, (value) => value.toMap()),
      'bootstrapClusterMembership': ?bootstrapClusterMembership,
      'controlPlaneNode': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterControlPlaneNode, Map<String, dynamic>>(controlPlaneNode, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'enableAdvancedCluster': ?enableAdvancedCluster,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleets': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterFleet>, List<Map<String, dynamic>>>(fleets, (value) => pulumi.Input.encodeList<VmwareAdminClusterFleet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageType': ?imageType,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'localName': ?localName,
      'location': ?location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'platformConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterPlatformConfig, Map<String, dynamic>>(platformConfig, (value) => value.toMap()),
      'privateRegistryConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterPrivateRegistryConfig, Map<String, dynamic>>(privateRegistryConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<VmwareAdminClusterStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vcenter': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterVcenter, Map<String, dynamic>>(vcenter, (value) => value.toMap()),
    };
  }

  factory VmwareAdminClusterState.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterState(
      addonNode: map['addonNode'] == null ? null : pulumi.Output.create<VmwareAdminClusterAddonNode>(VmwareAdminClusterAddonNode.fromMap((map['addonNode'] as Map).cast<String, dynamic>())),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      antiAffinityGroups: map['antiAffinityGroups'] == null ? null : pulumi.Output.create<VmwareAdminClusterAntiAffinityGroups>(VmwareAdminClusterAntiAffinityGroups.fromMap((map['antiAffinityGroups'] as Map).cast<String, dynamic>())),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<VmwareAdminClusterAuthorization>(VmwareAdminClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      autoRepairConfig: map['autoRepairConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterAutoRepairConfig>(VmwareAdminClusterAutoRepairConfig.fromMap((map['autoRepairConfig'] as Map).cast<String, dynamic>())),
      bootstrapClusterMembership: map['bootstrapClusterMembership'] == null ? null : pulumi.Output.create<String>(map['bootstrapClusterMembership'] as String),
      controlPlaneNode: map['controlPlaneNode'] == null ? null : pulumi.Output.create<VmwareAdminClusterControlPlaneNode>(VmwareAdminClusterControlPlaneNode.fromMap((map['controlPlaneNode'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      enableAdvancedCluster: map['enableAdvancedCluster'] == null ? null : pulumi.Output.create<bool>(map['enableAdvancedCluster'] as bool),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleets: map['fleets'] == null ? null : pulumi.Output.create<List<VmwareAdminClusterFleet>>(pulumi.Input.decodeList<VmwareAdminClusterFleet>(map['fleets'], (value) => VmwareAdminClusterFleet.fromMap((value as Map).cast<String, dynamic>()))),
      imageType: map['imageType'] == null ? null : pulumi.Output.create<String>(map['imageType'] as String),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<VmwareAdminClusterLoadBalancer>(VmwareAdminClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      localName: map['localName'] == null ? null : pulumi.Output.create<String>(map['localName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterNetworkConfig>(VmwareAdminClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      onPremVersion: map['onPremVersion'] == null ? null : pulumi.Output.create<String>(map['onPremVersion'] as String),
      platformConfig: map['platformConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterPlatformConfig>(VmwareAdminClusterPlatformConfig.fromMap((map['platformConfig'] as Map).cast<String, dynamic>())),
      privateRegistryConfig: map['privateRegistryConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterPrivateRegistryConfig>(VmwareAdminClusterPrivateRegistryConfig.fromMap((map['privateRegistryConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<VmwareAdminClusterProxy>(VmwareAdminClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<VmwareAdminClusterStatus>>(pulumi.Input.decodeList<VmwareAdminClusterStatus>(map['statuses'], (value) => VmwareAdminClusterStatus.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vcenter: map['vcenter'] == null ? null : pulumi.Output.create<VmwareAdminClusterVcenter>(VmwareAdminClusterVcenter.fromMap((map['vcenter'] as Map).cast<String, dynamic>())),
    );
  }
}

