// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_secret_credentials_vmmigration_v1alpha1.dart';

/// AzureSourceDetails message describes a specific source details for the Azure source type.
class AzureSourceDetailsVmmigrationV1alpha1 {
  /// Immutable. The Azure location (region) that the source VMs will be migrated from.
  final pulumi.Input<String>? azureLocation;
  /// Azure Credentials using tenant ID, client ID and secret.
  final pulumi.Input<ClientSecretCredentialsVmmigrationV1alpha1>? clientSecretCreds;
  /// User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  final pulumi.Input<Map<String, String>>? migrationResourcesUserTags;
  /// Immutable. Azure subscription ID.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AzureSourceDetailsVmmigrationV1alpha1].
  /// [azureLocation] Immutable. The Azure location (region) that the source VMs will be migrated from.
  /// [clientSecretCreds] Azure Credentials using tenant ID, client ID and secret.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  /// [subscriptionId] Immutable. Azure subscription ID.
  AzureSourceDetailsVmmigrationV1alpha1({
    this.azureLocation,
    this.clientSecretCreds,
    this.migrationResourcesUserTags,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLocation': ?azureLocation,
      'clientSecretCreds': ?pulumi.Input.mapOptionalInputValue<ClientSecretCredentialsVmmigrationV1alpha1, Map<String, dynamic>>(clientSecretCreds, (value) => value.toMap()),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AzureSourceDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AzureSourceDetailsVmmigrationV1alpha1(
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation'] as String).input(),
      clientSecretCreds: map['clientSecretCreds'] == null ? null : (ClientSecretCredentialsVmmigrationV1alpha1.fromMap((map['clientSecretCreds'] as Map).cast<String, dynamic>())).input(),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null ? null : ((map['migrationResourcesUserTags'] as Map).cast<String, String>()).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

