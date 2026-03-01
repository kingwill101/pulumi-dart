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
  BareMetalClusterArgs({
    required pulumi.Output<String> adminClusterMembership,
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> bareMetalClusterId,
    required pulumi.Output<String> bareMetalVersion,
    pulumi.Output<BinaryAuthorization>? binaryAuthorization,
    pulumi.Output<BareMetalClusterOperationsConfig>? clusterOperations,
    required pulumi.Output<BareMetalControlPlaneConfig> controlPlane,
    pulumi.Output<String>? description,
    required pulumi.Output<BareMetalLoadBalancerConfig> loadBalancer,
    pulumi.Output<String>? location,
    pulumi.Output<BareMetalMaintenanceConfig>? maintenanceConfig,
    pulumi.Output<String>? name,
    required pulumi.Output<BareMetalNetworkConfig> networkConfig,
    pulumi.Output<BareMetalNodeAccessConfig>? nodeAccessConfig,
    pulumi.Output<BareMetalWorkloadNodeConfig>? nodeConfig,
    pulumi.Output<BareMetalOsEnvironmentConfig>? osEnvironmentConfig,
    pulumi.Output<String>? project,
    pulumi.Output<BareMetalProxyConfig>? proxy,
    pulumi.Output<BareMetalSecurityConfig>? securityConfig,
    required pulumi.Output<BareMetalStorageConfig> storage,
    pulumi.Output<BareMetalClusterUpgradePolicy>? upgradePolicy,
  }) :
      adminClusterMembership = pulumi.Input.asInput<String>(adminClusterMembership),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      bareMetalVersion = pulumi.Input.asInput<String>(bareMetalVersion),
      binaryAuthorization = pulumi.Input.asOptionalInput<BinaryAuthorization>(binaryAuthorization),
      clusterOperations = pulumi.Input.asOptionalInput<BareMetalClusterOperationsConfig>(clusterOperations),
      controlPlane = pulumi.Input.asInput<BareMetalControlPlaneConfig>(controlPlane),
      description = pulumi.Input.asOptionalInput<String>(description),
      loadBalancer = pulumi.Input.asInput<BareMetalLoadBalancerConfig>(loadBalancer),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfig = pulumi.Input.asOptionalInput<BareMetalMaintenanceConfig>(maintenanceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asInput<BareMetalNetworkConfig>(networkConfig),
      nodeAccessConfig = pulumi.Input.asOptionalInput<BareMetalNodeAccessConfig>(nodeAccessConfig),
      nodeConfig = pulumi.Input.asOptionalInput<BareMetalWorkloadNodeConfig>(nodeConfig),
      osEnvironmentConfig = pulumi.Input.asOptionalInput<BareMetalOsEnvironmentConfig>(osEnvironmentConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<BareMetalProxyConfig>(proxy),
      securityConfig = pulumi.Input.asOptionalInput<BareMetalSecurityConfig>(securityConfig),
      storage = pulumi.Input.asInput<BareMetalStorageConfig>(storage),
      upgradePolicy = pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(upgradePolicy);

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
      adminClusterMembership: pulumi.Output.create<String>(map['adminClusterMembership'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bareMetalClusterId: pulumi.Output.create<String>(map['bareMetalClusterId'] as String),
      bareMetalVersion: pulumi.Output.create<String>(map['bareMetalVersion'] as String),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<BinaryAuthorization>(BinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      clusterOperations: map['clusterOperations'] == null ? null : pulumi.Output.create<BareMetalClusterOperationsConfig>(BareMetalClusterOperationsConfig.fromMap((map['clusterOperations'] as Map).cast<String, dynamic>())),
      controlPlane: pulumi.Output.create<BareMetalControlPlaneConfig>(BareMetalControlPlaneConfig.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      loadBalancer: pulumi.Output.create<BareMetalLoadBalancerConfig>(BareMetalLoadBalancerConfig.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : pulumi.Output.create<BareMetalMaintenanceConfig>(BareMetalMaintenanceConfig.fromMap((map['maintenanceConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: pulumi.Output.create<BareMetalNetworkConfig>(BareMetalNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : pulumi.Output.create<BareMetalNodeAccessConfig>(BareMetalNodeAccessConfig.fromMap((map['nodeAccessConfig'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<BareMetalWorkloadNodeConfig>(BareMetalWorkloadNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null ? null : pulumi.Output.create<BareMetalOsEnvironmentConfig>(BareMetalOsEnvironmentConfig.fromMap((map['osEnvironmentConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<BareMetalProxyConfig>(BareMetalProxyConfig.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      securityConfig: map['securityConfig'] == null ? null : pulumi.Output.create<BareMetalSecurityConfig>(BareMetalSecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())),
      storage: pulumi.Output.create<BareMetalStorageConfig>(BareMetalStorageConfig.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<BareMetalClusterUpgradePolicy>(BareMetalClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

