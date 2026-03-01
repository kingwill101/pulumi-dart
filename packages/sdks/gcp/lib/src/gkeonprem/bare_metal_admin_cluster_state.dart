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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? bareMetalVersion,
    pulumi.Output<BareMetalAdminClusterClusterOperations>? clusterOperations,
    pulumi.Output<BareMetalAdminClusterControlPlane>? controlPlane,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<List<BareMetalAdminClusterFleet>>? fleets,
    pulumi.Output<BareMetalAdminClusterLoadBalancer>? loadBalancer,
    pulumi.Output<String>? localName,
    pulumi.Output<String>? location,
    pulumi.Output<BareMetalAdminClusterMaintenanceConfig>? maintenanceConfig,
    pulumi.Output<String>? name,
    pulumi.Output<BareMetalAdminClusterNetworkConfig>? networkConfig,
    pulumi.Output<BareMetalAdminClusterNodeAccessConfig>? nodeAccessConfig,
    pulumi.Output<BareMetalAdminClusterNodeConfig>? nodeConfig,
    pulumi.Output<String>? project,
    pulumi.Output<BareMetalAdminClusterProxy>? proxy,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<BareMetalAdminClusterSecurityConfig>? securityConfig,
    pulumi.Output<String>? state,
    pulumi.Output<List<BareMetalAdminClusterStatus>>? statuses,
    pulumi.Output<BareMetalAdminClusterStorage>? storage,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<BareMetalAdminClusterValidationCheck>>? validationChecks,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bareMetalVersion = pulumi.Input.asOptionalInput<String>(bareMetalVersion),
      clusterOperations = pulumi.Input.asOptionalInput<BareMetalAdminClusterClusterOperations>(clusterOperations),
      controlPlane = pulumi.Input.asOptionalInput<BareMetalAdminClusterControlPlane>(controlPlane),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleets = pulumi.Input.asOptionalInput<List<BareMetalAdminClusterFleet>>(fleets),
      loadBalancer = pulumi.Input.asOptionalInput<BareMetalAdminClusterLoadBalancer>(loadBalancer),
      localName = pulumi.Input.asOptionalInput<String>(localName),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfig = pulumi.Input.asOptionalInput<BareMetalAdminClusterMaintenanceConfig>(maintenanceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<BareMetalAdminClusterNetworkConfig>(networkConfig),
      nodeAccessConfig = pulumi.Input.asOptionalInput<BareMetalAdminClusterNodeAccessConfig>(nodeAccessConfig),
      nodeConfig = pulumi.Input.asOptionalInput<BareMetalAdminClusterNodeConfig>(nodeConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxy = pulumi.Input.asOptionalInput<BareMetalAdminClusterProxy>(proxy),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      securityConfig = pulumi.Input.asOptionalInput<BareMetalAdminClusterSecurityConfig>(securityConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<BareMetalAdminClusterStatus>>(statuses),
      storage = pulumi.Input.asOptionalInput<BareMetalAdminClusterStorage>(storage),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      validationChecks = pulumi.Input.asOptionalInput<List<BareMetalAdminClusterValidationCheck>>(validationChecks);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bareMetalVersion: map['bareMetalVersion'] == null ? null : pulumi.Output.create<String>(map['bareMetalVersion'] as String),
      clusterOperations: map['clusterOperations'] == null ? null : pulumi.Output.create<BareMetalAdminClusterClusterOperations>(BareMetalAdminClusterClusterOperations.fromMap((map['clusterOperations'] as Map).cast<String, dynamic>())),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<BareMetalAdminClusterControlPlane>(BareMetalAdminClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleets: map['fleets'] == null ? null : pulumi.Output.create<List<BareMetalAdminClusterFleet>>(pulumi.Input.decodeList<BareMetalAdminClusterFleet>(map['fleets'], (value) => BareMetalAdminClusterFleet.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<BareMetalAdminClusterLoadBalancer>(BareMetalAdminClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      localName: map['localName'] == null ? null : pulumi.Output.create<String>(map['localName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfig: map['maintenanceConfig'] == null ? null : pulumi.Output.create<BareMetalAdminClusterMaintenanceConfig>(BareMetalAdminClusterMaintenanceConfig.fromMap((map['maintenanceConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<BareMetalAdminClusterNetworkConfig>(BareMetalAdminClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      nodeAccessConfig: map['nodeAccessConfig'] == null ? null : pulumi.Output.create<BareMetalAdminClusterNodeAccessConfig>(BareMetalAdminClusterNodeAccessConfig.fromMap((map['nodeAccessConfig'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<BareMetalAdminClusterNodeConfig>(BareMetalAdminClusterNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<BareMetalAdminClusterProxy>(BareMetalAdminClusterProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      securityConfig: map['securityConfig'] == null ? null : pulumi.Output.create<BareMetalAdminClusterSecurityConfig>(BareMetalAdminClusterSecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<BareMetalAdminClusterStatus>>(pulumi.Input.decodeList<BareMetalAdminClusterStatus>(map['statuses'], (value) => BareMetalAdminClusterStatus.fromMap((value as Map).cast<String, dynamic>()))),
      storage: map['storage'] == null ? null : pulumi.Output.create<BareMetalAdminClusterStorage>(BareMetalAdminClusterStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      validationChecks: map['validationChecks'] == null ? null : pulumi.Output.create<List<BareMetalAdminClusterValidationCheck>>(pulumi.Input.decodeList<BareMetalAdminClusterValidationCheck>(map['validationChecks'], (value) => BareMetalAdminClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

