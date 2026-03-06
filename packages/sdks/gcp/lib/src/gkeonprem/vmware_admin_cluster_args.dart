// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_addon_node.dart';
import 'vmware_admin_cluster_anti_affinity_groups.dart';
import 'vmware_admin_cluster_authorization.dart';
import 'vmware_admin_cluster_auto_repair_config.dart';
import 'vmware_admin_cluster_control_plane_node.dart';
import 'vmware_admin_cluster_load_balancer.dart';
import 'vmware_admin_cluster_network_config.dart';
import 'vmware_admin_cluster_platform_config.dart';
import 'vmware_admin_cluster_private_registry_config.dart';
import 'vmware_admin_cluster_proxy.dart';
import 'vmware_admin_cluster_vcenter.dart';

/// {@template pulumi_gkeonprem_vmware_admin_cluster_vmware_admin_cluster_args_doc}
/// The set of arguments for VmwareAdminCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_vmware_admin_cluster_vmware_admin_cluster_args_doc}
class VmwareAdminClusterArgs {
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
  /// A human readable description of this VMware admin cluster.
  final pulumi.Input<String>? description;
  /// If set, the advanced cluster feature is enabled.
  final pulumi.Input<bool>? enableAdvancedCluster;
  /// The OS image type for the VMware admin cluster.
  final pulumi.Input<String>? imageType;
  /// Specifies the load balancer configuration for VMware admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancer>? loadBalancer;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The VMware admin cluster resource name.
  final pulumi.Input<String>? name;
  /// The VMware admin cluster network configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfig> networkConfig;
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
  /// Specifies vCenter config for the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterVcenter>? vcenter;

  /// Creates a new [VmwareAdminClusterArgs].
  /// [addonNode] The VMware admin cluster addon node configuration.
  /// [annotations] Annotations on the VMware Admin Cluster.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// [authorization] The VMware admin cluster authorization configuration.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [bootstrapClusterMembership] The bootstrap cluster this VMware admin cluster belongs to.
  /// [controlPlaneNode] The VMware admin cluster control plane node configuration.
  /// [description] A human readable description of this VMware admin cluster.
  /// [enableAdvancedCluster] If set, the advanced cluster feature is enabled.
  /// [imageType] The OS image type for the VMware admin cluster.
  /// [loadBalancer] Specifies the load balancer configuration for VMware admin cluster.
  /// [location] The location of the resource.
  /// [name] The VMware admin cluster resource name.
  /// [networkConfig] The VMware admin cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for the admin cluster.
  /// [platformConfig] The VMware platform configuration.
  /// [privateRegistryConfig] Configuration for private registry.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Configuration for proxy.
  /// [vcenter] Specifies vCenter config for the admin cluster.
  const VmwareAdminClusterArgs({
    this.addonNode,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.bootstrapClusterMembership,
    this.controlPlaneNode,
    this.description,
    this.enableAdvancedCluster,
    this.imageType,
    this.loadBalancer,
    required this.location,
    this.name,
    required this.networkConfig,
    this.onPremVersion,
    this.platformConfig,
    this.privateRegistryConfig,
    this.project,
    this.proxy,
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
      'description': ?description,
      'enableAdvancedCluster': ?enableAdvancedCluster,
      'imageType': ?imageType,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'networkConfig': pulumi.Input.mapInputValue<VmwareAdminClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'platformConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterPlatformConfig, Map<String, dynamic>>(platformConfig, (value) => value.toMap()),
      'privateRegistryConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterPrivateRegistryConfig, Map<String, dynamic>>(privateRegistryConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'vcenter': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterVcenter, Map<String, dynamic>>(vcenter, (value) => value.toMap()),
    };
  }

  factory VmwareAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterArgs(
      addonNode: (() { final guardedValue = map['addonNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAddonNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      antiAffinityGroups: (() { final guardedValue = map['antiAffinityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAntiAffinityGroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRepairConfig: (() { final guardedValue = map['autoRepairConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterAutoRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapClusterMembership: (() { final guardedValue = map['bootstrapClusterMembership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlaneNode: (() { final guardedValue = map['controlPlaneNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterControlPlaneNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAdvancedCluster: (() { final guardedValue = map['enableAdvancedCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: pulumi.Input.fromValue(VmwareAdminClusterNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())),
      onPremVersion: (() { final guardedValue = map['onPremVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformConfig: (() { final guardedValue = map['platformConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterPlatformConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateRegistryConfig: (() { final guardedValue = map['privateRegistryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterPrivateRegistryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vcenter: (() { final guardedValue = map['vcenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterVcenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

