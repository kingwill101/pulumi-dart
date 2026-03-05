import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_key_vault_secret_provider_class_args.dart';
import 'get_azure_key_vault_secret_provider_class_result.dart';
import 'get_secret_sync_args.dart';
import 'get_secret_sync_result.dart';

/// Gets the properties of an AzureKeyVaultSecretProviderClass instance.
///
/// Uses Azure REST API version 2024-08-21-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsynccontroller_get_azure_key_vault_secret_provider_class_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureKeyVaultSecretProviderClassResult> getAzureKeyVaultSecretProviderClass(
  GetAzureKeyVaultSecretProviderClassArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:secretsynccontroller:getAzureKeyVaultSecretProviderClass',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureKeyVaultSecretProviderClassResult.fromMap(result);
}

/// Gets the properties of a SecretSync instance.
///
/// Uses Azure REST API version 2024-08-21-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsynccontroller_get_secret_sync_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretSyncResult> getSecretSync(
  GetSecretSyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:secretsynccontroller:getSecretSync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretSyncResult.fromMap(result);
}
