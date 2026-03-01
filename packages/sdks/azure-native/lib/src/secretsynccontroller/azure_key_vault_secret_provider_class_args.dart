// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_secretsynccontroller_azure_key_vault_secret_provider_class_args_doc}
/// The set of arguments for AzureKeyVaultSecretProviderClass.
/// {@endtemplate}
/// {@macro pulumi_secretsynccontroller_azure_key_vault_secret_provider_class_args_doc}
class AzureKeyVaultSecretProviderClassArgs {
  /// The name of the AzureKeyVaultSecretProviderClass
  final pulumi.Input<String>? azureKeyVaultSecretProviderClassName;
  /// The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  final pulumi.Input<String> clientId;
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The name of the Azure Key Vault to sync secrets from.
  final pulumi.Input<String> keyvaultName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Objects defines the desired state of synced K8s secret objects
  final pulumi.Input<String>? objects;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
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
  AzureKeyVaultSecretProviderClassArgs({
    pulumi.Output<String>? azureKeyVaultSecretProviderClassName,
    required pulumi.Output<String> clientId,
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    required pulumi.Output<String> keyvaultName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? objects,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> tenantId,
  }) :
      azureKeyVaultSecretProviderClassName = pulumi.Input.asOptionalInput<String>(azureKeyVaultSecretProviderClassName),
      clientId = pulumi.Input.asInput<String>(clientId),
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      keyvaultName = pulumi.Input.asInput<String>(keyvaultName),
      location = pulumi.Input.asOptionalInput<String>(location),
      objects = pulumi.Input.asOptionalInput<String>(objects),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asInput<String>(tenantId);

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
      azureKeyVaultSecretProviderClassName: map['azureKeyVaultSecretProviderClassName'] == null ? null : pulumi.Output.create<String>(map['azureKeyVaultSecretProviderClassName'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      keyvaultName: pulumi.Output.create<String>(map['keyvaultName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      objects: map['objects'] == null ? null : pulumi.Output.create<String>(map['objects'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

