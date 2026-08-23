// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_operations_config.dart';
import 'bare_metal_cluster_upgrade_policy.dart';
import 'bare_metal_control_plane_config.dart';
import 'bare_metal_load_balancer_config.dart';
import 'bare_metal_maintenance_config.dart';
import 'bare_metal_network_config.dart';
import 'bare_metal_node_access_config.dart';
import 'bare_metal_os_environment_config.dart';
import 'bare_metal_proxy_config.dart';
import 'bare_metal_security_config.dart';
import 'bare_metal_storage_config.dart';
import 'bare_metal_workload_node_config.dart';
import 'binary_authorization.dart';

/// {@template pulumi_gkeonprem_v1_bare_metal_cluster_args_doc}
/// The set of arguments for BareMetalCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_bare_metal_cluster_args_doc}
class BareMetalClusterArgs {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  final pulumi.Input<String> adminClusterMembership;
  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  final pulumi.Input<String> bareMetalClusterId;
  /// The Anthos clusters on bare metal version for your user cluster.
  final pulumi.Input<String> bareMetalVersion;
  /// Binary Authorization related configurations.
  final pulumi.Input<BinaryAuthorization>? binaryAuthorization;
  /// Cluster operations configuration.
  final pulumi.Input<BareMetalClusterOperationsConfig>? clusterOperations;
  /// Control plane configuration.
  final pulumi.Input<BareMetalControlPlaneConfig> controlPlane;
  /// A human readable description of this bare metal user cluster.
  final pulumi.Input<String>? description;
  /// Load balancer configuration.
  final pulumi.Input<BareMetalLoadBalancerConfig> loadBalancer;
  final pulumi.Input<String>? location;
  /// Maintenance configuration.
  final pulumi.Input<BareMetalMaintenanceConfig>? maintenanceConfig;
  /// Immutable. The bare metal user cluster resource name.
  final pulumi.Input<String>? name;
  /// Network configuration.
  final pulumi.Input<BareMetalNetworkConfig> networkConfig;
  /// Node access related configurations.
  final pulumi.Input<BareMetalNodeAccessConfig>? nodeAccessConfig;
  /// Workload node configuration.
  final pulumi.Input<BareMetalWorkloadNodeConfig>? nodeConfig;
  /// OS environment related configurations.
  final pulumi.Input<BareMetalOsEnvironmentConfig>? osEnvironmentConfig;
  final pulumi.Input<String>? project;
  /// Proxy configuration.
  final pulumi.Input<BareMetalProxyConfig>? proxy;
  /// Security related setting configuration.
  final pulumi.Input<BareMetalSecurityConfig>? securityConfig;
  /// Storage configuration.
  final pulumi.Input<BareMetalStorageConfig> storage;
  /// The cluster upgrade policy.
  final pulumi.Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

  /// Creates a new [BareMetalClusterArgs].
  /// [adminClusterMembership] The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  /// [annotations] Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalClusterId] Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  /// [bareMetalVersion] The Anthos clusters on bare metal version for your user cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Cluster operations configuration.
  /// [controlPlane] Control plane configuration.
  /// [description] A human readable description of this bare metal user cluster.
  /// [loadBalancer] Load balancer configuration.
  /// [location] Optional.
  /// [maintenanceConfig] Maintenance configuration.
  /// [name] Immutable. The bare metal user cluster resource name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Node access related configurations.
  /// [nodeConfig] Workload node configuration.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [project] Optional.
  /// [proxy] Proxy configuration.
  /// [securityConfig] Security related setting configuration.
  /// [storage] Storage configuration.
  /// [upgradePolicy] The cluster upgrade policy.
  const BareMetalClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    required this.bareMetalClusterId,
    required this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    required this.controlPlane,
    this.description,
    required this.loadBalancer,
    this.location,
    this.maintenanceConfig,
    this.name,
    required this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.project,
    this.proxy,
    this.securityConfig,
    required this.storage,
    this.upgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'annotations': ?annotations,
      'bareMetalClusterId': bareMetalClusterId,
      'bareMetalVersion': bareMetalVersion,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterOperations': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterOperationsConfig, Map<String, dynamic>>(clusterOperations, (value) => value.toMap()),
      'controlPlane': pulumi.Input.mapInputValue<BareMetalControlPlaneConfig, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'description': ?description,
      'loadBalancer': pulumi.Input.mapInputValue<BareMetalLoadBalancerConfig, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'location': ?location,
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': pulumi.Input.mapInputValue<BareMetalNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeAccessConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalNodeAccessConfig, Map<String, dynamic>>(nodeAccessConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalWorkloadNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'osEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalOsEnvironmentConfig, Map<String, dynamic>>(osEnvironmentConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BareMetalProxyConfig, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'storage': pulumi.Input.mapInputValue<BareMetalStorageConfig, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterArgs(
      adminClusterMembership: pulumi.Input.fromValue(map['adminClusterMembership'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bareMetalClusterId: pulumi.Input.fromValue(map['bareMetalClusterId'] as String),
      bareMetalVersion: pulumi.Input.fromValue(map['bareMetalVersion'] as String),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterOperations: (() { final guardedValue = map['clusterOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterOperationsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlane: pulumi.Input.fromValue(BareMetalControlPlaneConfig.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: pulumi.Input.fromValue(BareMetalLoadBalancerConfig.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: pulumi.Input.fromValue(BareMetalNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())),
      nodeAccessConfig: (() { final guardedValue = map['nodeAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalNodeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalWorkloadNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osEnvironmentConfig: (() { final guardedValue = map['osEnvironmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalOsEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: pulumi.Input.fromValue(BareMetalStorageConfig.fromMap((map['storage']! as Map).cast<String, dynamic>())),
      upgradePolicy: (() { final guardedValue = map['upgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
