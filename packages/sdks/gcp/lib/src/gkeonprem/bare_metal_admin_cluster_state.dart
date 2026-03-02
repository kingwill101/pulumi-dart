// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_cluster_operations.dart';
import 'bare_metal_admin_cluster_control_plane.dart';
import 'bare_metal_admin_cluster_fleet.dart';
import 'bare_metal_admin_cluster_load_balancer.dart';
import 'bare_metal_admin_cluster_maintenance_config.dart';
import 'bare_metal_admin_cluster_network_config.dart';
import 'bare_metal_admin_cluster_node_access_config.dart';
import 'bare_metal_admin_cluster_node_config.dart';
import 'bare_metal_admin_cluster_proxy.dart';
import 'bare_metal_admin_cluster_security_config.dart';
import 'bare_metal_admin_cluster_status.dart';
import 'bare_metal_admin_cluster_storage.dart';
import 'bare_metal_admin_cluster_validation_check.dart';

/// Input properties used for looking up and filtering BareMetalAdminCluster resources.
class BareMetalAdminClusterState {
  /// Annotations on the Bare Metal Admin Cluster.
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
  /// A human readable description of this Bare Metal Admin Cluster.
  final pulumi.Input<String>? bareMetalVersion;
  /// Specifies the Admin Cluster's observability infrastructure.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterClusterOperations>? clusterOperations;
  /// Specifies the control plane configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterControlPlane>? controlPlane;
  /// The time the cluster was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  final pulumi.Input<String>? deleteTime;
  /// A human readable description of this Bare Metal Admin Cluster.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// The IP address name of Bare Metal Admin Cluster's API server.
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
  final pulumi.Input<List<BareMetalAdminClusterFleet>>? fleets;
  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancer>? loadBalancer;
  /// The object name of the Bare Metal Admin Cluster custom resource on the
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
  final pulumi.Input<BareMetalAdminClusterMaintenanceConfig>? maintenanceConfig;
  /// The bare metal admin cluster name.
  final pulumi.Input<String>? name;
  /// Network configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNetworkConfig>? networkConfig;
  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNodeAccessConfig>? nodeAccessConfig;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNodeConfig>? nodeConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterProxy>? proxy;
  /// If set, there are currently changes in flight to the Bare Metal Admin Cluster.
  final pulumi.Input<bool>? reconciling;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterSecurityConfig>? securityConfig;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterStatus>>? statuses;
  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterStorage>? storage;
  /// The unique identifier of the Bare Metal Admin Cluster.
  final pulumi.Input<String>? uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;
  /// Specifies the security related settings for the Bare Metal Admin Cluster.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterValidationCheck>>? validationChecks;

  /// Creates a new [BareMetalAdminClusterState].
  /// [annotations] Annotations on the Bare Metal Admin Cluster.
  /// [bareMetalVersion] A human readable description of this Bare Metal Admin Cluster.
  /// [clusterOperations] Specifies the Admin Cluster's observability infrastructure.
  /// [controlPlane] Specifies the control plane configuration.
  /// [createTime] The time the cluster was created, in RFC3339 text format.
  /// [deleteTime] The time the cluster was deleted, in RFC3339 text format.
  /// [description] A human readable description of this Bare Metal Admin Cluster.
  /// [effectiveAnnotations] Optional.
  /// [endpoint] The IP address name of Bare Metal Admin Cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [fleets] Fleet related configuration.
  /// [loadBalancer] Specifies the load balancer configuration.
  /// [localName] The object name of the Bare Metal Admin Cluster custom resource on the
  /// [location] The location of the resource.
  /// [maintenanceConfig] Specifies the workload node configurations.
  /// [name] The bare metal admin cluster name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Specifies the node access related settings for the bare metal user cluster.
  /// [nodeConfig] Specifies the workload node configurations.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxy] Specifies the cluster proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the Bare Metal Admin Cluster.
  /// [securityConfig] Specifies the security related settings for the Bare Metal User Cluster.
  /// [state] (Output)
  /// [statuses] (Output)
  /// [storage] Specifies the cluster storage configuration.
  /// [uid] The unique identifier of the Bare Metal Admin Cluster.
  /// [updateTime] The time the cluster was last updated, in RFC3339 text format.
  /// [validationChecks] Specifies the security related settings for the Bare Metal Admin Cluster.
  BareMetalAdminClusterState({
    this.annotations,
    this.bareMetalVersion,
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
    this.project,
    this.proxy,
    this.reconciling,
    this.securityConfig,
    this.state,
    this.statuses,
    this.storage,
    this.uid,
    this.updateTime,
    this.validationChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bareMetalVersion': ?bareMetalVersion,
      'clusterOperations': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterClusterOperations, Map<String, dynamic>>(clusterOperations, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleets': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterFleet>, List<Map<String, dynamic>>>(fleets, (value) => pulumi.Input.encodeList<BareMetalAdminClusterFleet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'localName': ?localName,
      'location': ?location,
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeAccessConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterNodeAccessConfig, Map<String, dynamic>>(nodeAccessConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'project': ?project,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<BareMetalAdminClusterStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storage': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'validationChecks': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterValidationCheck>, List<Map<String, dynamic>>>(validationChecks, (value) => pulumi.Input.encodeList<BareMetalAdminClusterValidationCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalAdminClusterState.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      bareMetalVersion: map['bareMetalVersion'] == null ? null : (map['bareMetalVersion']! as String).input(),
      clusterOperations: map['clusterOperations'] == null ? null : (BareMetalAdminClusterClusterOperations.fromMap((map['clusterOperations']! as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (BareMetalAdminClusterControlPlane.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      fleets: map['fleets'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterFleet>(map['fleets']!, (value) => BareMetalAdminClusterFleet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (BareMetalAdminClusterLoadBalancer.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
      localName: map['localName'] == null ? null : (map['localName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : (BareMetalAdminClusterMaintenanceConfig.fromMap((map['maintenanceConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (BareMetalAdminClusterNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : (BareMetalAdminClusterNodeAccessConfig.fromMap((map['nodeAccessConfig']! as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (BareMetalAdminClusterNodeConfig.fromMap((map['nodeConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      proxy: map['proxy'] == null ? null : (BareMetalAdminClusterProxy.fromMap((map['proxy']! as Map).cast<String, dynamic>())).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      securityConfig: map['securityConfig'] == null ? null : (BareMetalAdminClusterSecurityConfig.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterStatus>(map['statuses']!, (value) => BareMetalAdminClusterStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storage: map['storage'] == null ? null : (BareMetalAdminClusterStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      validationChecks: map['validationChecks'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterValidationCheck>(map['validationChecks']!, (value) => BareMetalAdminClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

