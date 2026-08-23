// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_secret_credentials_response.dart';
import 'status_response.dart';

/// AzureSourceDetails message describes a specific source details for the Azure source type.
class AzureSourceDetailsResponse {
  /// Immutable. The Azure location (region) that the source VMs will be migrated from.
  final pulumi.Input<String> azureLocation;
  /// Azure Credentials using tenant ID, client ID and secret.
  final pulumi.Input<ClientSecretCredentialsResponse> clientSecretCreds;
  /// Provides details on the state of the Source in case of an error.
  final pulumi.Input<StatusResponse> error;
  /// User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  final pulumi.Input<Map<String, String>> migrationResourcesUserTags;
  /// The ID of the Azure resource group that contains all resources related to the migration process of this source.
  final pulumi.Input<String> resourceGroupId;
  /// State of the source as determined by the health check.
  final pulumi.Input<String> state;
  /// Immutable. Azure subscription ID.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [AzureSourceDetailsResponse].
  /// [azureLocation] Immutable. The Azure location (region) that the source VMs will be migrated from.
  /// [clientSecretCreds] Azure Credentials using tenant ID, client ID and secret.
  /// [error] Provides details on the state of the Source in case of an error.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  /// [resourceGroupId] The ID of the Azure resource group that contains all resources related to the migration process of this source.
  /// [state] State of the source as determined by the health check.
  /// [subscriptionId] Immutable. Azure subscription ID.
  const AzureSourceDetailsResponse({
    required this.azureLocation,
    required this.clientSecretCreds,
    required this.error,
    required this.migrationResourcesUserTags,
    required this.resourceGroupId,
    required this.state,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLocation': azureLocation,
      'clientSecretCreds': pulumi.Input.mapInputValue<ClientSecretCredentialsResponse, Map<String, dynamic>>(clientSecretCreds, (value) => value.toMap()),
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'migrationResourcesUserTags': migrationResourcesUserTags,
      'resourceGroupId': resourceGroupId,
      'state': state,
      'subscriptionId': subscriptionId,
    };
  }

  factory AzureSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureSourceDetailsResponse(
      azureLocation: pulumi.Input.fromValue(map['azureLocation'] as String),
      clientSecretCreds: pulumi.Input.fromValue(ClientSecretCredentialsResponse.fromMap((map['clientSecretCreds']! as Map).cast<String, dynamic>())),
      error: pulumi.Input.fromValue(StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      migrationResourcesUserTags: pulumi.Input.fromValue((map['migrationResourcesUserTags'] as Map).cast<String, String>()),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
