// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_authorization.dart';
import 'azure_cluster_azure_services_authentication.dart';
import 'azure_cluster_control_plane.dart';
import 'azure_cluster_fleet.dart';
import 'azure_cluster_logging_config.dart';
import 'azure_cluster_networking.dart';
import 'azure_cluster_workload_identity_config.dart';

/// Input properties used for looking up and filtering AzureCluster resources.
class AzureClusterState {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AzureClusterAuthorization>? authorization;
  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  final pulumi.Input<String>? azureRegion;
  /// Azure authentication configuration for management of Azure resources
  final pulumi.Input<AzureClusterAzureServicesAuthentication>? azureServicesAuthentication;
  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  final pulumi.Input<String>? client;
  /// Configuration related to the cluster control plane.
  final pulumi.Input<AzureClusterControlPlane>? controlPlane;
  /// Output only. The time at which this cluster was created.
  final pulumi.Input<String>? createTime;
  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Output only. The endpoint of the cluster's API server.
  final pulumi.Input<String>? endpoint;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Fleet configuration.
  final pulumi.Input<AzureClusterFleet>? fleet;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Logging configuration.
  final pulumi.Input<AzureClusterLoggingConfig>? loggingConfig;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// Cluster-wide networking configuration.
  final pulumi.Input<AzureClusterNetworking>? networking;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. If set, there are currently changes in flight to the cluster.
  final pulumi.Input<bool>? reconciling;
  /// The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  final pulumi.Input<String>? resourceGroupId;
  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  final pulumi.Input<String>? state;
  /// Output only. A globally unique identifier for the cluster.
  final pulumi.Input<String>? uid;
  /// Output only. The time at which this cluster was last updated.
  final pulumi.Input<String>? updateTime;
  /// Output only. Workload Identity settings.
  final pulumi.Input<List<AzureClusterWorkloadIdentityConfig>>? workloadIdentityConfigs;

  /// Creates a new [AzureClusterState].
  /// [annotations] Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [azureRegion] The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  /// [azureServicesAuthentication] Azure authentication configuration for management of Azure resources
  /// [client] Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [createTime] Output only. The time at which this cluster was created.
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [effectiveAnnotations] Optional.
  /// [endpoint] Output only. The endpoint of the cluster's API server.
  /// [etag] Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  /// [reconciling] Output only. If set, there are currently changes in flight to the cluster.
  /// [resourceGroupId] The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  /// [state] Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  /// [uid] Output only. A globally unique identifier for the cluster.
  /// [updateTime] Output only. The time at which this cluster was last updated.
  /// [workloadIdentityConfigs] Output only. Workload Identity settings.
  AzureClusterState({
    this.annotations,
    this.authorization,
    this.azureRegion,
    this.azureServicesAuthentication,
    this.client,
    this.controlPlane,
    this.createTime,
    this.description,
    this.effectiveAnnotations,
    this.endpoint,
    this.etag,
    this.fleet,
    this.location,
    this.loggingConfig,
    this.name,
    this.networking,
    this.project,
    this.reconciling,
    this.resourceGroupId,
    this.state,
    this.uid,
    this.updateTime,
    this.workloadIdentityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization': ?pulumi.Input.mapOptionalInputValue<AzureClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'azureRegion': ?azureRegion,
      'azureServicesAuthentication': ?pulumi.Input.mapOptionalInputValue<AzureClusterAzureServicesAuthentication, Map<String, dynamic>>(azureServicesAuthentication, (value) => value.toMap()),
      'client': ?client,
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<AzureClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleet': ?pulumi.Input.mapOptionalInputValue<AzureClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<AzureClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'networking': ?pulumi.Input.mapOptionalInputValue<AzureClusterNetworking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'project': ?project,
      'reconciling': ?reconciling,
      'resourceGroupId': ?resourceGroupId,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workloadIdentityConfigs': ?pulumi.Input.mapOptionalInputValue<List<AzureClusterWorkloadIdentityConfig>, List<Map<String, dynamic>>>(workloadIdentityConfigs, (value) => pulumi.Input.encodeList<AzureClusterWorkloadIdentityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureClusterState.fromMap(Map<String, dynamic> map) {
    return AzureClusterState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      authorization: map['authorization'] == null ? null : (AzureClusterAuthorization.fromMap((map['authorization']! as Map).cast<String, dynamic>())).input(),
      azureRegion: map['azureRegion'] == null ? null : (map['azureRegion']! as String).input(),
      azureServicesAuthentication: map['azureServicesAuthentication'] == null ? null : (AzureClusterAzureServicesAuthentication.fromMap((map['azureServicesAuthentication']! as Map).cast<String, dynamic>())).input(),
      client: map['client'] == null ? null : (map['client']! as String).input(),
      controlPlane: map['controlPlane'] == null ? null : (AzureClusterControlPlane.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      fleet: map['fleet'] == null ? null : (AzureClusterFleet.fromMap((map['fleet']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (AzureClusterLoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networking: map['networking'] == null ? null : (AzureClusterNetworking.fromMap((map['networking']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      workloadIdentityConfigs: map['workloadIdentityConfigs'] == null ? null : (pulumi.Input.decodeList<AzureClusterWorkloadIdentityConfig>(map['workloadIdentityConfigs']!, (value) => AzureClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

