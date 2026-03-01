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
    required pulumi.Output<String> azureKeyVaultSecretProviderClassName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureKeyVaultSecretProviderClassName = pulumi.Input.asInput<String>(azureKeyVaultSecretProviderClassName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultSecretProviderClassName': azureKeyVaultSecretProviderClassName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureKeyVaultSecretProviderClassArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureKeyVaultSecretProviderClassArgs(
      azureKeyVaultSecretProviderClassName: pulumi.Output.create<String>(map['azureKeyVaultSecretProviderClassName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

