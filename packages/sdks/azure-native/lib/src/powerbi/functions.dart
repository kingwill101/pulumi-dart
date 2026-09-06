import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_workspace_collection_args.dart';
import 'get_workspace_collection_result.dart';
import 'list_workspace_collection_access_keys_args.dart';
import 'list_workspace_collection_access_keys_result.dart';

/// Get a specific private endpoint connection for Power BI by private endpoint name.
///
/// Uses Azure REST API version 2020-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerbi_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerbi:getPrivateEndpointConnection',
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
    'azure-native:powerbi:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Retrieves an existing Power BI Workspace Collection.
///
/// Uses Azure REST API version 2016-01-29.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerbi_get_workspace_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceCollectionResult> getWorkspaceCollection(
  GetWorkspaceCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerbi:getWorkspaceCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceCollectionResult.fromMap(result);
}

pulumi.Output<GetWorkspaceCollectionResult> getWorkspaceCollectionOutput(
  GetWorkspaceCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:powerbi:getWorkspaceCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceCollectionResult.fromMap);
}

/// Retrieves the primary and secondary access keys for the specified Power BI Workspace Collection.
///
/// Uses Azure REST API version 2016-01-29.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerbi_list_workspace_collection_access_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceCollectionAccessKeysResult> listWorkspaceCollectionAccessKeys(
  ListWorkspaceCollectionAccessKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerbi:listWorkspaceCollectionAccessKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceCollectionAccessKeysResult.fromMap(result);
}

pulumi.Output<ListWorkspaceCollectionAccessKeysResult> listWorkspaceCollectionAccessKeysOutput(
  ListWorkspaceCollectionAccessKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:powerbi:listWorkspaceCollectionAccessKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceCollectionAccessKeysResult.fromMap);
}
