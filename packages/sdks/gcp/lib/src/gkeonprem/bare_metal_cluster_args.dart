// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_binary_authorization.dart';
import 'bare_metal_cluster_cluster_operations.dart';
import 'bare_metal_cluster_control_plane.dart';
import 'bare_metal_cluster_load_balancer.dart';
import 'bare_metal_cluster_maintenance_config.dart';
import 'bare_metal_cluster_network_config.dart';
import 'bare_metal_cluster_node_access_config.dart';
import 'bare_metal_cluster_node_config.dart';
import 'bare_metal_cluster_os_environment_config.dart';
import 'bare_metal_cluster_proxy.dart';
import 'bare_metal_cluster_security_config.dart';
import 'bare_metal_cluster_storage.dart';
import 'bare_metal_cluster_upgrade_policy.dart';

/// {@template pulumi_gkeonprem_bare_metal_cluster_bare_metal_cluster_args_doc}
/// The set of arguments for BareMetalCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_bare_metal_cluster_bare_metal_cluster_args_doc}
class BareMetalClusterArgs {
  /// The Admin Cluster this Bare Metal User Cluster belongs to.
  /// This is the full resource name of the Admin Cluster's hub membership.
  final pulumi.Input<String> adminClusterMembership;
  /// Annotations on the Bare Metal User Cluster.
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
  /// A human readable description of this Bare Metal User Cluster.
  final pulumi.Input<String> bareMetalVersion;
  /// Binary Authorization related configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterBinaryAuthorization>? binaryAuthorization;
  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterClusterOperations>? clusterOperations;
  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterControlPlane> controlPlane;
  /// A human readable description of this Bare Metal User Cluster.
  final pulumi.Input<String>? description;
  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancer> loadBalancer;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterMaintenanceConfig>? maintenanceConfig;
  /// The bare metal cluster name.
  final pulumi.Input<String>? name;
  /// Network configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfig> networkConfig;
  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNodeAccessConfig>? nodeAccessConfig;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNodeConfig>? nodeConfig;
  /// OS environment related configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterOsEnvironmentConfig>? osEnvironmentConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterProxy>? proxy;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterSecurityConfig>? securityConfig;
  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorage> storage;
  /// The cluster upgrade policy.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterUpgradePolicy>? upgradePolicy;

  /// Creates a new [BareMetalClusterArgs].
  /// [adminClusterMembership] The Admin Cluster this Bare Metal User Cluster belongs to.
  /// [annotations] Annotations on the Bare Metal User Cluster.
  /// [bareMetalVersion] A human readable description of this Bare Metal User Cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Specifies the User Cluster's observability infrastructure.
  /// [controlPlane] Specifies the control plane configuration.
  /// [description] A human readable description of this Bare Metal User Cluster.
  /// [loadBalancer] Specifies the load balancer configuration.
  /// [location] The location of the resource.
  /// [maintenanceConfig] Specifies the workload node configurations.
  /// [name] The bare metal cluster name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Specifies the node access related settings for the bare metal user cluster.
  /// [nodeConfig] Specifies the workload node configurations.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Specifies the cluster proxy configuration.
  /// [securityConfig] Specifies the security related settings for the Bare Metal User Cluster.
  /// [storage] Specifies the cluster storage configuration.
  /// [upgradePolicy] The cluster upgrade policy.
  BareMetalClusterArgs({
    required pulumi.Output<String> adminClusterMembership,
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> bareMetalVersion,
    pulumi.Output<BareMetalClusterBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<BareMetalClusterClusterOperations>? clusterOperations,
    required pulumi.Output<BareMetalClusterControlPlane> controlPlane,
    pulumi.Output<String>? description,
    required pulumi.Output<BareMetalClusterLoadBalancer> loadBalancer,
    required pulumi.Output<String> location,
    pulumi.Output<BareMetalClusterMaintenanceConfig>? maintenanceConfig,
    pulumi.Output<String>? name,
    required pulumi.Output<BareMetalClusterNetworkConfig> networkConfig,
    pulumi.Output<BareMetalClusterNodeAccessConfig>? nodeAccessConfig,
    pulumi.Output<BareMetalClusterNodeConfig>? nodeConfig,
    pulumi.Output<BareMetalClusterOsEnvironmentConfig>? osEnvironmentConfig,
    pulumi.Output<String>? project,
    pulumi.Output<BareMetalClusterProxy>? proxy,
    pulumi.Output<BareMetalClusterSecurityConfig>? securityConfig,
    required pulumi.Output<BareMetalClusterStorage> storage,
    pulumi.Output<BareMetalClusterUpgradePolicy>? upgradePolicy,
  }) :
      adminClusterMembership = pulumi.Input.asInput<String>(adminClusterMembership),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bareMetalVersion = pulumi.Input.asInput<String>(bareMetalVersion),
      binaryAuthorization = pulumi.Input.asOptionalInput<BareMetalClusterBinaryAuthorization>(binaryAuthorization),
      clusterOperations = pulumi.Input.asOptionalInput<BareMetalClusterClusterOperations>(clusterOperations),
      controlPlane = pulumi.Input.asInput<BareMetalClusterControlPlane>(controlPlane),
      description = pulumi.Input.asOptionalInput<String>(description),
      loadBalancer = pulumi.Input.asInput<BareMetalClusterLoadBalancer>(loadBalancer),
      location = pulumi.Input.asInput<String>(location),
      maintenanceConfig = pulumi.Input.asOptionalInput<BareMetalClusterMaintenanceConfig>(maintenanceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asInput<BareMetalClusterNetworkConfig>(networkConfig),
      nodeAccessConfig = pulumi.Input.asOptionalInput<BareMetalClusterNodeAccessConfig>(nodeAccessConfig),
      nodeConfig = pulumi.Input.asOptionalInput<BareMetalClusterNodeConfig>(nodeConfig),
      osEnvironmentConfig = pulumi.Input.asOptionalInput<BareMetalClusterOsEnvironmentConfig>(osEnvironmentConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<BareMetalClusterProxy>(proxy),
      securityConfig = pulumi.Input.asOptionalInput<BareMetalClusterSecurityConfig>(securityConfig),
      storage = pulumi.Input.asInput<BareMetalClusterStorage>(storage),
      upgradePolicy = pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(upgradePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'annotations': ?annotations,
      'bareMetalVersion': bareMetalVersion,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterOperations': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterClusterOperations, Map<String, dynamic>>(clusterOperations, (value) => value.toMap()),
      'controlPlane': pulumi.Input.mapInputValue<BareMetalClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'description': ?description,
      'loadBalancer': pulumi.Input.mapInputValue<BareMetalClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'location': location,
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': pulumi.Input.mapInputValue<BareMetalClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeAccessConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNodeAccessConfig, Map<String, dynamic>>(nodeAccessConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'osEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterOsEnvironmentConfig, Map<String, dynamic>>(osEnvironmentConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'storage': pulumi.Input.mapInputValue<BareMetalClusterStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterArgs(
      adminClusterMembership: pulumi.Output.create<String>(map['adminClusterMembership'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bareMetalVersion: pulumi.Output.create<String>(map['bareMetalVersion'] as String),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<BareMetalClusterBinaryAuthorization>(BareMetalClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      clusterOperations: map['clusterOperations'] == null ? null : pulumi.Output.create<BareMetalClusterClusterOperations>(BareMetalClusterClusterOperations.fromMap((map['clusterOperations'] as Map).cast<String, dynamic>())),
      controlPlane: pulumi.Output.create<BareMetalClusterControlPlane>(BareMetalClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      loadBalancer: pulumi.Output.create<BareMetalClusterLoadBalancer>(BareMetalClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : pulumi.Output.create<BareMetalClusterMaintenanceConfig>(BareMetalClusterMaintenanceConfig.fromMap((map['maintenanceConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: pulumi.Output.create<BareMetalClusterNetworkConfig>(BareMetalClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : pulumi.Output.create<BareMetalClusterNodeAccessConfig>(BareMetalClusterNodeAccessConfig.fromMap((map['nodeAccessConfig'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<BareMetalClusterNodeConfig>(BareMetalClusterNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null ? null : pulumi.Output.create<BareMetalClusterOsEnvironmentConfig>(BareMetalClusterOsEnvironmentConfig.fromMap((map['osEnvironmentConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<BareMetalClusterProxy>(BareMetalClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      securityConfig: map['securityConfig'] == null ? null : pulumi.Output.create<BareMetalClusterSecurityConfig>(BareMetalClusterSecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())),
      storage: pulumi.Output.create<BareMetalClusterStorage>(BareMetalClusterStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<BareMetalClusterUpgradePolicy>(BareMetalClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

