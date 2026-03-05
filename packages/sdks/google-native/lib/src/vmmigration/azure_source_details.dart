// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_secret_credentials.dart';

/// AzureSourceDetails message describes a specific source details for the Azure source type.
class AzureSourceDetails {
  /// Immutable. The Azure location (region) that the source VMs will be migrated from.
  final pulumi.Input<String>? azureLocation;
  /// Azure Credentials using tenant ID, client ID and secret.
  final pulumi.Input<ClientSecretCredentials>? clientSecretCreds;
  /// User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  final pulumi.Input<Map<String, String>>? migrationResourcesUserTags;
  /// Immutable. Azure subscription ID.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AzureSourceDetails].
  /// [azureLocation] Immutable. The Azure location (region) that the source VMs will be migrated from.
  /// [clientSecretCreds] Azure Credentials using tenant ID, client ID and secret.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  /// [subscriptionId] Immutable. Azure subscription ID.
  AzureSourceDetails({
    this.azureLocation,
    this.clientSecretCreds,
    this.migrationResourcesUserTags,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLocation': ?azureLocation,
      'clientSecretCreds': ?pulumi.Input.mapOptionalInputValue<ClientSecretCredentials, Map<String, dynamic>>(clientSecretCreds, (value) => value.toMap()),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AzureSourceDetails.fromMap(Map<String, dynamic> map) {
    return AzureSourceDetails(
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretCreds: (() { final guardedValue = map['clientSecretCreds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientSecretCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationResourcesUserTags: (() { final guardedValue = map['migrationResourcesUserTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

