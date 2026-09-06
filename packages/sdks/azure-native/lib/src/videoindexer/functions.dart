import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Gets the properties of an Azure Video Indexer account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-08-01, 2024-04-01-preview, 2024-06-01-preview, 2024-09-23-preview, 2025-01-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native videoindexer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_videoindexer_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:videoindexer:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:videoindexer:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Get the specified private endpoint connection associated with the Video Indexer account.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native videoindexer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_videoindexer_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:videoindexer:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:videoindexer:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}
