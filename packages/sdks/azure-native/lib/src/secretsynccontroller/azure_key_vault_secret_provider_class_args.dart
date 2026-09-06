// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_secretsynccontroller_azure_key_vault_secret_provider_class_args_doc}
/// The set of arguments for AzureKeyVaultSecretProviderClass.
/// {@endtemplate}
/// {@macro pulumi_secretsynccontroller_azure_key_vault_secret_provider_class_args_doc}
class AzureKeyVaultSecretProviderClassArgs {
  /// The name of the AzureKeyVaultSecretProviderClass
  final pulumi.Input<String?>? azureKeyVaultSecretProviderClassName;
  /// The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  final pulumi.Input<String> clientId;
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation?>? extendedLocation;
  /// The name of the Azure Key Vault to sync secrets from.
  final pulumi.Input<String> keyvaultName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Objects defines the desired state of synced K8s secret objects
  final pulumi.Input<String?>? objects;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AzureKeyVaultSecretProviderClassArgs].
  /// [azureKeyVaultSecretProviderClassName] The name of the AzureKeyVaultSecretProviderClass
  /// [clientId] The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  /// [extendedLocation] The complex type of the extended location.
  /// [keyvaultName] The name of the Azure Key Vault to sync secrets from.
  /// [location] The geo-location where the resource lives
  /// [objects] Objects defines the desired state of synced K8s secret objects
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  const AzureKeyVaultSecretProviderClassArgs({
    this.azureKeyVaultSecretProviderClassName,
    required this.clientId,
    this.extendedLocation,
    required this.keyvaultName,
    this.location,
    this.objects,
    required this.resourceGroupName,
    this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultSecretProviderClassName': ?azureKeyVaultSecretProviderClassName,
      'clientId': clientId,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'keyvaultName': keyvaultName,
      'location': ?location,
      'objects': ?objects,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tenantId': tenantId,
    };
  }

  factory AzureKeyVaultSecretProviderClassArgs.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultSecretProviderClassArgs(
      azureKeyVaultSecretProviderClassName: (() { final guardedValue = map['azureKeyVaultSecretProviderClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyvaultName: pulumi.Input.fromValue(map['keyvaultName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objects: (() { final guardedValue = map['objects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
