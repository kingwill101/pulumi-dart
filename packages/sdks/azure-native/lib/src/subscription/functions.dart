import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_subscription_tar_directory_args.dart';
import 'get_subscription_tar_directory_result.dart';

/// Get Alias Subscription.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native subscription [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_subscription_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:subscription:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

pulumi.Output<GetAliasResult> getAliasOutput(
  GetAliasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:subscription:getAlias',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAliasResult.fromMap);
}

/// The operation to view Initiator Subscription Changed Request
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native subscription [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_subscription_get_subscription_tar_directory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionTarDirectoryResult> getSubscriptionTarDirectory(
  GetSubscriptionTarDirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:subscription:getSubscriptionTarDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionTarDirectoryResult.fromMap(result);
}

pulumi.Output<GetSubscriptionTarDirectoryResult> getSubscriptionTarDirectoryOutput(
  GetSubscriptionTarDirectoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:subscription:getSubscriptionTarDirectory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionTarDirectoryResult.fromMap);
}
