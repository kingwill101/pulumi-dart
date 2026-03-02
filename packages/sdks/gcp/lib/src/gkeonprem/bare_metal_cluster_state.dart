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
    this.adminClusterMembership,
    this.annotations,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.createTime,
    this.deleteTime,
    this.description,
    this.effectiveAnnotations,
    this.endpoint,
    this.etag,
    this.fleets,
    this.loadBalancer,
    this.localName,
    this.location,
    this.maintenanceConfig,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.project,
    this.proxy,
    this.reconciling,
    this.securityConfig,
    this.state,
    this.statuses,
    this.storage,
    this.uid,
    this.updateTime,
    this.upgradePolicy,
    this.validationChecks,
  });

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
      adminClusterMembership: map['adminClusterMembership'] == null ? null : (map['adminClusterMembership'] as String).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      bareMetalVersion: map['bareMetalVersion'] == null ? null : (map['bareMetalVersion'] as String).input(),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : (BareMetalClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())).input(),
      clusterOperations: map['clusterOperations'] == null ? null : (BareMetalClusterClusterOperations.fromMap((map['clusterOperations'] as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (BareMetalClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations'] as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      fleets: map['fleets'] == null ? null : (pulumi.Input.decodeList<BareMetalClusterFleet>(map['fleets'], (value) => BareMetalClusterFleet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (BareMetalClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())).input(),
      localName: map['localName'] == null ? null : (map['localName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : (BareMetalClusterMaintenanceConfig.fromMap((map['maintenanceConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (BareMetalClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : (BareMetalClusterNodeAccessConfig.fromMap((map['nodeAccessConfig'] as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (BareMetalClusterNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      osEnvironmentConfig: map['osEnvironmentConfig'] == null ? null : (BareMetalClusterOsEnvironmentConfig.fromMap((map['osEnvironmentConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      proxy: map['proxy'] == null ? null : (BareMetalClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      securityConfig: map['securityConfig'] == null ? null : (BareMetalClusterSecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<BareMetalClusterStatus>(map['statuses'], (value) => BareMetalClusterStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storage: map['storage'] == null ? null : (BareMetalClusterStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : (BareMetalClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())).input(),
      validationChecks: map['validationChecks'] == null ? null : (pulumi.Input.decodeList<BareMetalClusterValidationCheck>(map['validationChecks'], (value) => BareMetalClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

