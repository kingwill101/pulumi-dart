// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_binary_authorization.dart';
import 'bare_metal_cluster_cluster_operations.dart';
import 'bare_metal_cluster_control_plane.dart';
import 'bare_metal_cluster_fleet.dart';
import 'bare_metal_cluster_load_balancer.dart';
import 'bare_metal_cluster_maintenance_config.dart';
import 'bare_metal_cluster_network_config.dart';
import 'bare_metal_cluster_node_access_config.dart';
import 'bare_metal_cluster_node_config.dart';
import 'bare_metal_cluster_os_environment_config.dart';
import 'bare_metal_cluster_proxy.dart';
import 'bare_metal_cluster_security_config.dart';
import 'bare_metal_cluster_status.dart';
import 'bare_metal_cluster_storage.dart';
import 'bare_metal_cluster_upgrade_policy.dart';
import 'bare_metal_cluster_validation_check.dart';

/// Input properties used for looking up and filtering BareMetalCluster resources.
class BareMetalClusterState {
  /// The Admin Cluster this Bare Metal User Cluster belongs to.
  /// This is the full resource name of the Admin Cluster's hub membership.
  final pulumi.Input<String>? adminClusterMembership;
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
  final pulumi.Input<String>? bareMetalVersion;
  /// Binary Authorization related configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterBinaryAuthorization>? binaryAuthorization;
  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterClusterOperations>? clusterOperations;
  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterControlPlane>? controlPlane;
  /// The time the cluster was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  final pulumi.Input<String>? deleteTime;
  /// A human readable description of this Bare Metal User Cluster.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// The IP address name of Bare Metal User Cluster's API server.
  final pulumi.Input<String>? endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// See [Anthos Fleets](https://cloud.google.com/anthos/multicluster-management/fleets) for
  /// more details on Anthos multi-cluster capabilities using Fleets.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterFleet>>? fleets;
  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancer>? loadBalancer;
  /// The object name of the Bare Metal Cluster custom resource on the
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
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterMaintenanceConfig>? maintenanceConfig;
  /// The bare metal cluster name.
  final pulumi.Input<String>? name;
  /// Network configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfig>? networkConfig;
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
  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  final pulumi.Input<bool>? reconciling;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterSecurityConfig>? securityConfig;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterStatus>>? statuses;
  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorage>? storage;
  /// The unique identifier of the Bare Metal User Cluster.
  final pulumi.Input<String>? uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;
  /// The cluster upgrade policy.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterUpgradePolicy>? upgradePolicy;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterValidationCheck>>? validationChecks;

  /// Creates a new [BareMetalClusterState].
  /// [adminClusterMembership] The Admin Cluster this Bare Metal User Cluster belongs to.
  /// [annotations] Annotations on the Bare Metal User Cluster.
  /// [bareMetalVersion] A human readable description of this Bare Metal User Cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Specifies the User Cluster's observability infrastructure.
  /// [controlPlane] Specifies the control plane configuration.
  /// [createTime] The time the cluster was created, in RFC3339 text format.
  /// [deleteTime] The time the cluster was deleted, in RFC3339 text format.
  /// [description] A human readable description of this Bare Metal User Cluster.
  /// [effectiveAnnotations] Optional.
  /// [endpoint] The IP address name of Bare Metal User Cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [fleets] Fleet related configuration.
  /// [loadBalancer] Specifies the load balancer configuration.
  /// [localName] The object name of the Bare Metal Cluster custom resource on the
  /// [location] The location of the resource.
  /// [maintenanceConfig] Specifies the workload node configurations.
  /// [name] The bare metal cluster name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Specifies the node access related settings for the bare metal user cluster.
  /// [nodeConfig] Specifies the workload node configurations.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Specifies the cluster proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the Bare Metal User Cluster.
  /// [securityConfig] Specifies the security related settings for the Bare Metal User Cluster.
  /// [state] (Output)
  /// [statuses] (Output)
  /// [storage] Specifies the cluster storage configuration.
  /// [uid] The unique identifier of the Bare Metal User Cluster.
  /// [updateTime] The time the cluster was last updated, in RFC3339 text format.
  /// [upgradePolicy] The cluster upgrade policy.
  /// [validationChecks] Specifies the security related settings for the Bare Metal User Cluster.
  BareMetalClusterState({
    pulumi.Output<String>? adminClusterMembership,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? bareMetalVersion,
    pulumi.Output<BareMetalClusterBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<BareMetalClusterClusterOperations>? clusterOperations,
    pulumi.Output<BareMetalClusterControlPlane>? controlPlane,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<List<BareMetalClusterFleet>>? fleets,
    pulumi.Output<BareMetalClusterLoadBalancer>? loadBalancer,
    pulumi.Output<String>? localName,
    pulumi.Output<String>? location,
    pulumi.Output<BareMetalClusterMaintenanceConfig>? maintenanceConfig,
    pulumi.Output<String>? name,
    pulumi.Output<BareMetalClusterNetworkConfig>? networkConfig,
    pulumi.Output<BareMetalClusterNodeAccessConfig>? nodeAccessConfig,
    pulumi.Output<BareMetalClusterNodeConfig>? nodeConfig,
    pulumi.Output<BareMetalClusterOsEnvironmentConfig>? osEnvironmentConfig,
    pulumi.Output<String>? project,
    pulumi.Output<BareMetalClusterProxy>? proxy,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<BareMetalClusterSecurityConfig>? securityConfig,
    pulumi.Output<String>? state,
    pulumi.Output<List<BareMetalClusterStatus>>? statuses,
    pulumi.Output<BareMetalClusterStorage>? storage,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<BareMetalClusterUpgradePolicy>? upgradePolicy,
    pulumi.Output<List<BareMetalClusterValidationCheck>>? validationChecks,
  }) :
      adminClusterMembership = pulumi.Input.asOptionalInput<String>(adminClusterMembership),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bareMetalVersion = pulumi.Input.asOptionalInput<String>(bareMetalVersion),
      binaryAuthorization = pulumi.Input.asOptionalInput<BareMetalClusterBinaryAuthorization>(binaryAuthorization),
      clusterOperations = pulumi.Input.asOptionalInput<BareMetalClusterClusterOperations>(clusterOperations),
      controlPlane = pulumi.Input.asOptionalInput<BareMetalClusterControlPlane>(controlPlane),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleets = pulumi.Input.asOptionalInput<List<BareMetalClusterFleet>>(fleets),
      loadBalancer = pulumi.Input.asOptionalInput<BareMetalClusterLoadBalancer>(loadBalancer),
      localName = pulumi.Input.asOptionalInput<String>(localName),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfig = pulumi.Input.asOptionalInput<BareMetalClusterMaintenanceConfig>(maintenanceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<BareMetalClusterNetworkConfig>(networkConfig),
      nodeAccessConfig = pulumi.Input.asOptionalInput<BareMetalClusterNodeAccessConfig>(nodeAccessConfig),
      nodeConfig = pulumi.Input.asOptionalInput<BareMetalClusterNodeConfig>(nodeConfig),
      osEnvironmentConfig = pulumi.Input.asOptionalInput<BareMetalClusterOsEnvironmentConfig>(osEnvironmentConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<BareMetalClusterProxy>(proxy),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      securityConfig = pulumi.Input.asOptionalInput<BareMetalClusterSecurityConfig>(securityConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<BareMetalClusterStatus>>(statuses),
      storage = pulumi.Input.asOptionalInput<BareMetalClusterStorage>(storage),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      upgradePolicy = pulumi.Input.asOptionalInput<BareMetalClusterUpgradePolicy>(upgradePolicy),
      validationChecks = pulumi.Input.asOptionalInput<List<BareMetalClusterValidationCheck>>(validationChecks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': ?adminClusterMembership,
      'annotations': ?annotations,
      'bareMetalVersion': ?bareMetalVersion,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterOperations': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterClusterOperations, Map<String, dynamic>>(clusterOperations, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleets': ?pulumi.Input.mapOptionalInputValue<List<BareMetalClusterFleet>, List<Map<String, dynamic>>>(fleets, (value) => pulumi.Input.encodeList<BareMetalClusterFleet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'localName': ?localName,
      'location': ?location,
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeAccessConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNodeAccessConfig, Map<String, dynamic>>(nodeAccessConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'osEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterOsEnvironmentConfig, Map<String, dynamic>>(osEnvironmentConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<BareMetalClusterStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<BareMetalClusterStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storage': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'validationChecks': ?pulumi.Input.mapOptionalInputValue<List<BareMetalClusterValidationCheck>, List<Map<String, dynamic>>>(validationChecks, (value) => pulumi.Input.encodeList<BareMetalClusterValidationCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalClusterState.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterState(
      adminClusterMembership: map['adminClusterMembership'] == null ? null : pulumi.Output.create<String>(map['adminClusterMembership'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bareMetalVersion: map['bareMetalVersion'] == null ? null : pulumi.Output.create<String>(map['bareMetalVersion'] as String),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<BareMetalClusterBinaryAuthorization>(BareMetalClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      clusterOperations: map['clusterOperations'] == null ? null : pulumi.Output.create<BareMetalClusterClusterOperations>(BareMetalClusterClusterOperations.fromMap((map['clusterOperations'] as Map).cast<String, dynamic>())),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<BareMetalClusterControlPlane>(BareMetalClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleets: map['fleets'] == null ? null : pulumi.Output.create<List<BareMetalClusterFleet>>(pulumi.Input.decodeList<BareMetalClusterFleet>(map['fleets'], (value) => BareMetalClusterFleet.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<BareMetalClusterLoadBalancer>(BareMetalClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      localName: map['localName'] == null ? null : pulumi.Output.create<String>(map['localName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : pulumi.Output.create<BareMetalClusterMaintenanceConfig>(BareMetalClusterMaintenanceConfig.fromMap((map['maintenanceConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<BareMetalClusterNetworkConfig>(BareMetalClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : pulumi.Output.create<BareMetalClusterNodeAccessConfig>(BareMetalClusterNodeAccessConfig.fromMap((map['nodeAccessConfig'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<BareMetalClusterNodeConfig>(BareMetalClusterNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null ? null : pulumi.Output.create<BareMetalClusterOsEnvironmentConfig>(BareMetalClusterOsEnvironmentConfig.fromMap((map['osEnvironmentConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<BareMetalClusterProxy>(BareMetalClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      securityConfig: map['securityConfig'] == null ? null : pulumi.Output.create<BareMetalClusterSecurityConfig>(BareMetalClusterSecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<BareMetalClusterStatus>>(pulumi.Input.decodeList<BareMetalClusterStatus>(map['statuses'], (value) => BareMetalClusterStatus.fromMap((value as Map).cast<String, dynamic>()))),
      storage: map['storage'] == null ? null : pulumi.Output.create<BareMetalClusterStorage>(BareMetalClusterStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<BareMetalClusterUpgradePolicy>(BareMetalClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      validationChecks: map['validationChecks'] == null ? null : pulumi.Output.create<List<BareMetalClusterValidationCheck>>(pulumi.Input.decodeList<BareMetalClusterValidationCheck>(map['validationChecks'], (value) => BareMetalClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

