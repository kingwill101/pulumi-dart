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
