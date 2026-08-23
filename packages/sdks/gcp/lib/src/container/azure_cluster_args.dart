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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AzureClusterAuthorization> authorization;
  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  final pulumi.Input<String> azureRegion;
  /// Azure authentication configuration for management of Azure resources
  final pulumi.Input<AzureClusterAzureServicesAuthentication>? azureServicesAuthentication;
  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  final pulumi.Input<String>? client;
  /// Configuration related to the cluster control plane.
  final pulumi.Input<AzureClusterControlPlane> controlPlane;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [client] Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  /// [resourceGroupId] The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  const AzureClusterArgs({
    this.annotations,
    required this.authorization,
    required this.azureRegion,
    this.azureServicesAuthentication,
    this.client,
    required this.controlPlane,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorization: pulumi.Input.fromValue(AzureClusterAuthorization.fromMap((map['authorization']! as Map).cast<String, dynamic>())),
      azureRegion: pulumi.Input.fromValue(map['azureRegion'] as String),
      azureServicesAuthentication: (() { final guardedValue = map['azureServicesAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterAzureServicesAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlane: pulumi.Input.fromValue(AzureClusterControlPlane.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleet: pulumi.Input.fromValue(AzureClusterFleet.fromMap((map['fleet']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networking: pulumi.Input.fromValue(AzureClusterNetworking.fromMap((map['networking']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
    );
  }
}
