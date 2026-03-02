// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_authorization.dart';
import 'azure_cluster_azure_services_authentication.dart';
import 'azure_cluster_control_plane.dart';
import 'azure_cluster_fleet.dart';
import 'azure_cluster_logging_config.dart';
import 'azure_cluster_networking.dart';

/// {@template pulumi_container_azure_cluster_azure_cluster_args_doc}
/// The set of arguments for AzureCluster.
/// {@endtemplate}
/// {@macro pulumi_container_azure_cluster_azure_cluster_args_doc}
class AzureClusterArgs {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AzureClusterAuthorization> authorization;
  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  final pulumi.Input<String> azureRegion;
  /// Azure authentication configuration for management of Azure resources
  final pulumi.Input<AzureClusterAzureServicesAuthentication>? azureServicesAuthentication;
  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  final pulumi.Input<String>? client;
  /// Configuration related to the cluster control plane.
  final pulumi.Input<AzureClusterControlPlane> controlPlane;
  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;
  /// Fleet configuration.
  final pulumi.Input<AzureClusterFleet> fleet;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Logging configuration.
  final pulumi.Input<AzureClusterLoggingConfig>? loggingConfig;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// Cluster-wide networking configuration.
  final pulumi.Input<AzureClusterNetworking> networking;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [AzureClusterArgs].
  /// [annotations] Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [azureRegion] The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  /// [azureServicesAuthentication] Azure authentication configuration for management of Azure resources
  /// [client] Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  /// [resourceGroupId] The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  AzureClusterArgs({
    this.annotations,
    required this.authorization,
    required this.azureRegion,
    this.azureServicesAuthentication,
    this.client,
    required this.controlPlane,
    this.description,
    required this.fleet,
    required this.location,
    this.loggingConfig,
    this.name,
    required this.networking,
    this.project,
    required this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization': pulumi.Input.mapInputValue<AzureClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'azureRegion': azureRegion,
      'azureServicesAuthentication': ?pulumi.Input.mapOptionalInputValue<AzureClusterAzureServicesAuthentication, Map<String, dynamic>>(azureServicesAuthentication, (value) => value.toMap()),
      'client': ?client,
      'controlPlane': pulumi.Input.mapInputValue<AzureClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'description': ?description,
      'fleet': pulumi.Input.mapInputValue<AzureClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'location': location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<AzureClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'networking': pulumi.Input.mapInputValue<AzureClusterNetworking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'project': ?project,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory AzureClusterArgs.fromMap(Map<String, dynamic> map) {
    return AzureClusterArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      authorization: (AzureClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())).input(),
      azureRegion: (map['azureRegion'] as String).input(),
      azureServicesAuthentication: map['azureServicesAuthentication'] == null ? null : (AzureClusterAzureServicesAuthentication.fromMap((map['azureServicesAuthentication'] as Map).cast<String, dynamic>())).input(),
      client: map['client'] == null ? null : (map['client'] as String).input(),
      controlPlane: (AzureClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fleet: (AzureClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (AzureClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networking: (AzureClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
    );
  }
}

