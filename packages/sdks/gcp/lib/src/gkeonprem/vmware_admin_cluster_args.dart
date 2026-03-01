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
  VmwareAdminClusterArgs({
    pulumi.Output<VmwareAdminClusterAddonNode>? addonNode,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<VmwareAdminClusterAntiAffinityGroups>? antiAffinityGroups,
    pulumi.Output<VmwareAdminClusterAuthorization>? authorization,
    pulumi.Output<VmwareAdminClusterAutoRepairConfig>? autoRepairConfig,
    pulumi.Output<String>? bootstrapClusterMembership,
    pulumi.Output<VmwareAdminClusterControlPlaneNode>? controlPlaneNode,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableAdvancedCluster,
    pulumi.Output<String>? imageType,
    pulumi.Output<VmwareAdminClusterLoadBalancer>? loadBalancer,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    required pulumi.Output<VmwareAdminClusterNetworkConfig> networkConfig,
    pulumi.Output<String>? onPremVersion,
    pulumi.Output<VmwareAdminClusterPlatformConfig>? platformConfig,
    pulumi.Output<VmwareAdminClusterPrivateRegistryConfig>? privateRegistryConfig,
    pulumi.Output<String>? project,
    pulumi.Output<VmwareAdminClusterProxy>? proxy,
    pulumi.Output<VmwareAdminClusterVcenter>? vcenter,
  }) :
      addonNode = pulumi.Input.asOptionalInput<VmwareAdminClusterAddonNode>(addonNode),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      antiAffinityGroups = pulumi.Input.asOptionalInput<VmwareAdminClusterAntiAffinityGroups>(antiAffinityGroups),
      authorization = pulumi.Input.asOptionalInput<VmwareAdminClusterAuthorization>(authorization),
      autoRepairConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterAutoRepairConfig>(autoRepairConfig),
      bootstrapClusterMembership = pulumi.Input.asOptionalInput<String>(bootstrapClusterMembership),
      controlPlaneNode = pulumi.Input.asOptionalInput<VmwareAdminClusterControlPlaneNode>(controlPlaneNode),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableAdvancedCluster = pulumi.Input.asOptionalInput<bool>(enableAdvancedCluster),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      loadBalancer = pulumi.Input.asOptionalInput<VmwareAdminClusterLoadBalancer>(loadBalancer),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asInput<VmwareAdminClusterNetworkConfig>(networkConfig),
      onPremVersion = pulumi.Input.asOptionalInput<String>(onPremVersion),
      platformConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterPlatformConfig>(platformConfig),
      privateRegistryConfig = pulumi.Input.asOptionalInput<VmwareAdminClusterPrivateRegistryConfig>(privateRegistryConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<VmwareAdminClusterProxy>(proxy),
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
      addonNode: map['addonNode'] == null ? null : pulumi.Output.create<VmwareAdminClusterAddonNode>(VmwareAdminClusterAddonNode.fromMap((map['addonNode'] as Map).cast<String, dynamic>())),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      antiAffinityGroups: map['antiAffinityGroups'] == null ? null : pulumi.Output.create<VmwareAdminClusterAntiAffinityGroups>(VmwareAdminClusterAntiAffinityGroups.fromMap((map['antiAffinityGroups'] as Map).cast<String, dynamic>())),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<VmwareAdminClusterAuthorization>(VmwareAdminClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      autoRepairConfig: map['autoRepairConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterAutoRepairConfig>(VmwareAdminClusterAutoRepairConfig.fromMap((map['autoRepairConfig'] as Map).cast<String, dynamic>())),
      bootstrapClusterMembership: map['bootstrapClusterMembership'] == null ? null : pulumi.Output.create<String>(map['bootstrapClusterMembership'] as String),
      controlPlaneNode: map['controlPlaneNode'] == null ? null : pulumi.Output.create<VmwareAdminClusterControlPlaneNode>(VmwareAdminClusterControlPlaneNode.fromMap((map['controlPlaneNode'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableAdvancedCluster: map['enableAdvancedCluster'] == null ? null : pulumi.Output.create<bool>(map['enableAdvancedCluster'] as bool),
      imageType: map['imageType'] == null ? null : pulumi.Output.create<String>(map['imageType'] as String),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<VmwareAdminClusterLoadBalancer>(VmwareAdminClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: pulumi.Output.create<VmwareAdminClusterNetworkConfig>(VmwareAdminClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      onPremVersion: map['onPremVersion'] == null ? null : pulumi.Output.create<String>(map['onPremVersion'] as String),
      platformConfig: map['platformConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterPlatformConfig>(VmwareAdminClusterPlatformConfig.fromMap((map['platformConfig'] as Map).cast<String, dynamic>())),
      privateRegistryConfig: map['privateRegistryConfig'] == null ? null : pulumi.Output.create<VmwareAdminClusterPrivateRegistryConfig>(VmwareAdminClusterPrivateRegistryConfig.fromMap((map['privateRegistryConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<VmwareAdminClusterProxy>(VmwareAdminClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      vcenter: map['vcenter'] == null ? null : pulumi.Output.create<VmwareAdminClusterVcenter>(VmwareAdminClusterVcenter.fromMap((map['vcenter'] as Map).cast<String, dynamic>())),
    );
  }
}

