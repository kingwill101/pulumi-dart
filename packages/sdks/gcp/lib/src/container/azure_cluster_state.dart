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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AzureClusterAuthorization>? authorization,
    pulumi.Output<String>? azureRegion,
    pulumi.Output<AzureClusterAzureServicesAuthentication>? azureServicesAuthentication,
    pulumi.Output<String>? client,
    pulumi.Output<AzureClusterControlPlane>? controlPlane,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<AzureClusterFleet>? fleet,
    pulumi.Output<String>? location,
    pulumi.Output<AzureClusterLoggingConfig>? loggingConfig,
    pulumi.Output<String>? name,
    pulumi.Output<AzureClusterNetworking>? networking,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<AzureClusterWorkloadIdentityConfig>>? workloadIdentityConfigs,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      authorization = pulumi.Input.asOptionalInput<AzureClusterAuthorization>(authorization),
      azureRegion = pulumi.Input.asOptionalInput<String>(azureRegion),
      azureServicesAuthentication = pulumi.Input.asOptionalInput<AzureClusterAzureServicesAuthentication>(azureServicesAuthentication),
      client = pulumi.Input.asOptionalInput<String>(client),
      controlPlane = pulumi.Input.asOptionalInput<AzureClusterControlPlane>(controlPlane),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleet = pulumi.Input.asOptionalInput<AzureClusterFleet>(fleet),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<AzureClusterLoggingConfig>(loggingConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networking = pulumi.Input.asOptionalInput<AzureClusterNetworking>(networking),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      workloadIdentityConfigs = pulumi.Input.asOptionalInput<List<AzureClusterWorkloadIdentityConfig>>(workloadIdentityConfigs);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<AzureClusterAuthorization>(AzureClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      azureRegion: map['azureRegion'] == null ? null : pulumi.Output.create<String>(map['azureRegion'] as String),
      azureServicesAuthentication: map['azureServicesAuthentication'] == null ? null : pulumi.Output.create<AzureClusterAzureServicesAuthentication>(AzureClusterAzureServicesAuthentication.fromMap((map['azureServicesAuthentication'] as Map).cast<String, dynamic>())),
      client: map['client'] == null ? null : pulumi.Output.create<String>(map['client'] as String),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<AzureClusterControlPlane>(AzureClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleet: map['fleet'] == null ? null : pulumi.Output.create<AzureClusterFleet>(AzureClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<AzureClusterLoggingConfig>(AzureClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networking: map['networking'] == null ? null : pulumi.Output.create<AzureClusterNetworking>(AzureClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      workloadIdentityConfigs: map['workloadIdentityConfigs'] == null ? null : pulumi.Output.create<List<AzureClusterWorkloadIdentityConfig>>(pulumi.Input.decodeList<AzureClusterWorkloadIdentityConfig>(map['workloadIdentityConfigs'], (value) => AzureClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

