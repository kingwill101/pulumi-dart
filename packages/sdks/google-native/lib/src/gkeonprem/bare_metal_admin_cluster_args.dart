// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_operations_config.dart';
import 'bare_metal_admin_control_plane_config.dart';
import 'bare_metal_admin_load_balancer_config.dart';
import 'bare_metal_admin_maintenance_config.dart';
import 'bare_metal_admin_network_config.dart';
import 'bare_metal_admin_node_access_config.dart';
import 'bare_metal_admin_os_environment_config.dart';
import 'bare_metal_admin_proxy_config.dart';
import 'bare_metal_admin_security_config.dart';
import 'bare_metal_admin_storage_config.dart';
import 'bare_metal_admin_workload_node_config.dart';
import 'binary_authorization.dart';

/// {@template pulumi_gkeonprem_v1_bare_metal_admin_cluster_args_doc}
/// The set of arguments for BareMetalAdminCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_bare_metal_admin_cluster_args_doc}
class BareMetalAdminClusterArgs {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  final pulumi.Input<String> bareMetalAdminClusterId;
  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  final pulumi.Input<String>? bareMetalVersion;
  /// Binary Authorization related configurations.
  final pulumi.Input<BinaryAuthorization>? binaryAuthorization;
  /// Cluster operations configuration.
  final pulumi.Input<BareMetalAdminClusterOperationsConfig>? clusterOperations;
  /// Control plane configuration.
  final pulumi.Input<BareMetalAdminControlPlaneConfig>? controlPlane;
  /// A human readable description of this bare metal admin cluster.
  final pulumi.Input<String>? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// Load balancer configuration.
  final pulumi.Input<BareMetalAdminLoadBalancerConfig>? loadBalancer;
  final pulumi.Input<String>? location;
  /// Maintenance configuration.
  final pulumi.Input<BareMetalAdminMaintenanceConfig>? maintenanceConfig;
  /// Immutable. The bare metal admin cluster resource name.
  final pulumi.Input<String>? name;
  /// Network configuration.
  final pulumi.Input<BareMetalAdminNetworkConfig>? networkConfig;
  /// Node access related configurations.
  final pulumi.Input<BareMetalAdminNodeAccessConfig>? nodeAccessConfig;
  /// Workload node configuration.
  final pulumi.Input<BareMetalAdminWorkloadNodeConfig>? nodeConfig;
  /// OS environment related configurations.
  final pulumi.Input<BareMetalAdminOsEnvironmentConfig>? osEnvironmentConfig;
  final pulumi.Input<String>? project;
  /// Proxy configuration.
  final pulumi.Input<BareMetalAdminProxyConfig>? proxy;
  /// Security related configuration.
  final pulumi.Input<BareMetalAdminSecurityConfig>? securityConfig;
  /// Storage configuration.
  final pulumi.Input<BareMetalAdminStorageConfig>? storage;

  /// Creates a new [BareMetalAdminClusterArgs].
  /// [annotations] Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalAdminClusterId] Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  /// [bareMetalVersion] The Anthos clusters on bare metal version for the bare metal admin cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Cluster operations configuration.
  /// [controlPlane] Control plane configuration.
  /// [description] A human readable description of this bare metal admin cluster.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [loadBalancer] Load balancer configuration.
  /// [location] Optional.
  /// [maintenanceConfig] Maintenance configuration.
  /// [name] Immutable. The bare metal admin cluster resource name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Node access related configurations.
  /// [nodeConfig] Workload node configuration.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [project] Optional.
  /// [proxy] Proxy configuration.
  /// [securityConfig] Security related configuration.
  /// [storage] Storage configuration.
  BareMetalAdminClusterArgs({
    this.annotations,
    required this.bareMetalAdminClusterId,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.description,
    this.etag,
    this.loadBalancer,
    this.location,
    this.maintenanceConfig,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.project,
    this.proxy,
    this.securityConfig,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bareMetalAdminClusterId': bareMetalAdminClusterId,
      'bareMetalVersion': ?bareMetalVersion,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterOperations': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterOperationsConfig, Map<String, dynamic>>(clusterOperations, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminControlPlaneConfig, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'description': ?description,
      'etag': ?etag,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminLoadBalancerConfig, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'location': ?location,
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeAccessConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminNodeAccessConfig, Map<String, dynamic>>(nodeAccessConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminWorkloadNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'osEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminOsEnvironmentConfig, Map<String, dynamic>>(osEnvironmentConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminProxyConfig, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminStorageConfig, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      bareMetalAdminClusterId: (map['bareMetalAdminClusterId'] as String).input(),
      bareMetalVersion: map['bareMetalVersion'] == null ? null : (map['bareMetalVersion']! as String).input(),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : (BinaryAuthorization.fromMap((map['binaryAuthorization']! as Map).cast<String, dynamic>())).input(),
      clusterOperations: map['clusterOperations'] == null ? null : (BareMetalAdminClusterOperationsConfig.fromMap((map['clusterOperations']! as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (BareMetalAdminControlPlaneConfig.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (BareMetalAdminLoadBalancerConfig.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : (BareMetalAdminMaintenanceConfig.fromMap((map['maintenanceConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (BareMetalAdminNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : (BareMetalAdminNodeAccessConfig.fromMap((map['nodeAccessConfig']! as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (BareMetalAdminWorkloadNodeConfig.fromMap((map['nodeConfig']! as Map).cast<String, dynamic>())).input(),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null ? null : (BareMetalAdminOsEnvironmentConfig.fromMap((map['osEnvironmentConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      proxy: map['proxy'] == null ? null : (BareMetalAdminProxyConfig.fromMap((map['proxy']! as Map).cast<String, dynamic>())).input(),
      securityConfig: map['securityConfig'] == null ? null : (BareMetalAdminSecurityConfig.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (BareMetalAdminStorageConfig.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

