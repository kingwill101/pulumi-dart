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
    this.addonNode,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.bootstrapClusterMembership,
    this.controlPlaneNode,
    this.createTime,
    this.description,
    this.effectiveAnnotations,
    this.enableAdvancedCluster,
    this.endpoint,
    this.etag,
    this.fleets,
    this.imageType,
    this.loadBalancer,
    this.localName,
    this.location,
    this.name,
    this.networkConfig,
    this.onPremVersion,
    this.platformConfig,
    this.privateRegistryConfig,
    this.project,
    this.proxy,
    this.reconciling,
    this.state,
    this.statuses,
    this.uid,
    this.updateTime,
    this.vcenter,
  });

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
      addonNode: (() { final guardedValue = map['addonNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAddonNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      antiAffinityGroups: (() { final guardedValue = map['antiAffinityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAntiAffinityGroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRepairConfig: (() { final guardedValue = map['autoRepairConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAutoRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapClusterMembership: (() { final guardedValue = map['bootstrapClusterMembership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlaneNode: (() { final guardedValue = map['controlPlaneNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterControlPlaneNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableAdvancedCluster: (() { final guardedValue = map['enableAdvancedCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleets: (() { final guardedValue = map['fleets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterFleet>(guardedValue, (value) => VmwareAdminClusterFleet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localName: (() { final guardedValue = map['localName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremVersion: (() { final guardedValue = map['onPremVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformConfig: (() { final guardedValue = map['platformConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterPlatformConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateRegistryConfig: (() { final guardedValue = map['privateRegistryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterPrivateRegistryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterStatus>(guardedValue, (value) => VmwareAdminClusterStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcenter: (() { final guardedValue = map['vcenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterVcenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

