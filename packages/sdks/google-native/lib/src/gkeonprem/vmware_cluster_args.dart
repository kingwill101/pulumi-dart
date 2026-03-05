// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';
import 'vmware_aagconfig.dart';
import 'vmware_auto_repair_config.dart';
import 'vmware_cluster_upgrade_policy.dart';
import 'vmware_control_plane_node_config.dart';
import 'vmware_dataplane_v2_config.dart';
import 'vmware_load_balancer_config.dart';
import 'vmware_network_config.dart';
import 'vmware_storage_config.dart';
import 'vmware_vcenter_config.dart';

/// {@template pulumi_gkeonprem_v1_vmware_cluster_args_doc}
/// The set of arguments for VmwareCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_vmware_cluster_args_doc}
class VmwareClusterArgs {
  /// The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  final pulumi.Input<String> adminClusterMembership;
  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;
  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  final pulumi.Input<VmwareAAGConfig>? antiAffinityGroups;
  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  final pulumi.Input<Authorization>? authorization;
  /// Configuration for auto repairing.
  final pulumi.Input<VmwareAutoRepairConfig>? autoRepairConfig;
  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  final pulumi.Input<VmwareControlPlaneNodeConfig>? controlPlaneNode;
  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  final pulumi.Input<VmwareDataplaneV2Config>? dataplaneV2;
  /// A human readable description of this VMware user cluster.
  final pulumi.Input<String>? description;
  /// Disable bundled ingress.
  final pulumi.Input<bool>? disableBundledIngress;
  /// Enable control plane V2. Default to false.
  final pulumi.Input<bool>? enableControlPlaneV2;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// Load balancer configuration.
  final pulumi.Input<VmwareLoadBalancerConfig>? loadBalancer;
  final pulumi.Input<String>? location;
  /// Immutable. The VMware user cluster resource name.
  final pulumi.Input<String>? name;
  /// The VMware user cluster network configuration.
  final pulumi.Input<VmwareNetworkConfig>? networkConfig;
  /// The Anthos clusters on the VMware version for your user cluster.
  final pulumi.Input<String> onPremVersion;
  final pulumi.Input<String>? project;
  /// Storage configuration.
  final pulumi.Input<VmwareStorageConfig>? storage;
  /// Specifies upgrade policy for the cluster.
  final pulumi.Input<VmwareClusterUpgradePolicy>? upgradePolicy;
  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  final pulumi.Input<VmwareVCenterConfig>? vcenter;
  /// Enable VM tracking.
  final pulumi.Input<bool>? vmTrackingEnabled;
  /// User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  final pulumi.Input<String>? vmwareClusterId;

  /// Creates a new [VmwareClusterArgs].
  /// [adminClusterMembership] The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  /// [annotations] Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  /// [authorization] RBAC policy that will be applied and managed by the Anthos On-Prem API.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [controlPlaneNode] VMware user cluster control plane nodes must have either 1 or 3 replicas.
  /// [dataplaneV2] VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// [description] A human readable description of this VMware user cluster.
  /// [disableBundledIngress] Disable bundled ingress.
  /// [enableControlPlaneV2] Enable control plane V2. Default to false.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [loadBalancer] Load balancer configuration.
  /// [location] Optional.
  /// [name] Immutable. The VMware user cluster resource name.
  /// [networkConfig] The VMware user cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for your user cluster.
  /// [project] Optional.
  /// [storage] Storage configuration.
  /// [upgradePolicy] Specifies upgrade policy for the cluster.
  /// [vcenter] VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  /// [vmTrackingEnabled] Enable VM tracking.
  /// [vmwareClusterId] User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  VmwareClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.controlPlaneNode,
    this.dataplaneV2,
    this.description,
    this.disableBundledIngress,
    this.enableControlPlaneV2,
    this.etag,
    this.loadBalancer,
    this.location,
    this.name,
    this.networkConfig,
    required this.onPremVersion,
    this.project,
    this.storage,
    this.upgradePolicy,
    this.vcenter,
    this.vmTrackingEnabled,
    this.vmwareClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'annotations': ?annotations,
      'antiAffinityGroups': ?pulumi.Input.mapOptionalInputValue<VmwareAAGConfig, Map<String, dynamic>>(antiAffinityGroups, (value) => value.toMap()),
      'authorization': ?pulumi.Input.mapOptionalInputValue<Authorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'autoRepairConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAutoRepairConfig, Map<String, dynamic>>(autoRepairConfig, (value) => value.toMap()),
      'controlPlaneNode': ?pulumi.Input.mapOptionalInputValue<VmwareControlPlaneNodeConfig, Map<String, dynamic>>(controlPlaneNode, (value) => value.toMap()),
      'dataplaneV2': ?pulumi.Input.mapOptionalInputValue<VmwareDataplaneV2Config, Map<String, dynamic>>(dataplaneV2, (value) => value.toMap()),
      'description': ?description,
      'disableBundledIngress': ?disableBundledIngress,
      'enableControlPlaneV2': ?enableControlPlaneV2,
      'etag': ?etag,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<VmwareLoadBalancerConfig, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<VmwareNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'onPremVersion': onPremVersion,
      'project': ?project,
      'storage': ?pulumi.Input.mapOptionalInputValue<VmwareStorageConfig, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<VmwareClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'vcenter': ?pulumi.Input.mapOptionalInputValue<VmwareVCenterConfig, Map<String, dynamic>>(vcenter, (value) => value.toMap()),
      'vmTrackingEnabled': ?vmTrackingEnabled,
      'vmwareClusterId': ?vmwareClusterId,
    };
  }

  factory VmwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return VmwareClusterArgs(
      adminClusterMembership: pulumi.Input.fromValue(map['adminClusterMembership'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      antiAffinityGroups: (() { final guardedValue = map['antiAffinityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAAGConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRepairConfig: (() { final guardedValue = map['autoRepairConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAutoRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneNode: (() { final guardedValue = map['controlPlaneNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareControlPlaneNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataplaneV2: (() { final guardedValue = map['dataplaneV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareDataplaneV2Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableBundledIngress: (() { final guardedValue = map['disableBundledIngress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableControlPlaneV2: (() { final guardedValue = map['enableControlPlaneV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareLoadBalancerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremVersion: pulumi.Input.fromValue(map['onPremVersion'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradePolicy: (() { final guardedValue = map['upgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vcenter: (() { final guardedValue = map['vcenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareVCenterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmTrackingEnabled: (() { final guardedValue = map['vmTrackingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmwareClusterId: (() { final guardedValue = map['vmwareClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

