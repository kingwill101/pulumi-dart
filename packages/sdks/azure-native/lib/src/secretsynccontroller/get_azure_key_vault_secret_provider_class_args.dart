// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsynccontroller_get_azure_key_vault_secret_provider_class_args_doc}
/// Arguments for getAzureKeyVaultSecretProviderClass.
/// {@endtemplate}
/// {@macro pulumi_secretsynccontroller_get_azure_key_vault_secret_provider_class_args_doc}
class GetAzureKeyVaultSecretProviderClassArgs {
  /// The name of the AzureKeyVaultSecretProviderClass
  final pulumi.Input<String> azureKeyVaultSecretProviderClassName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureKeyVaultSecretProviderClassArgs].
  /// [azureKeyVaultSecretProviderClassName] The name of the AzureKeyVaultSecretProviderClass
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAzureKeyVaultSecretProviderClassArgs({
    required this.azureKeyVaultSecretProviderClassName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultSecretProviderClassName': azureKeyVaultSecretProviderClassName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureKeyVaultSecretProviderClassArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureKeyVaultSecretProviderClassArgs(
      azureKeyVaultSecretProviderClassName: (map['azureKeyVaultSecretProviderClassName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

