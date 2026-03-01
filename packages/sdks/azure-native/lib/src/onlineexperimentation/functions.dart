import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_online_experimentation_workspace_args.dart';
import 'get_online_experimentation_workspace_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Gets an online experimentation workspace.
///
/// Uses Azure REST API version 2025-05-31-preview.
///
/// Other available API versions: 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native onlineexperimentation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_onlineexperimentation_get_online_experimentation_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOnlineExperimentationWorkspaceResult> getOnlineExperimentationWorkspace(
  GetOnlineExperimentationWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:onlineexperimentation:getOnlineExperimentationWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOnlineExperimentationWorkspaceResult.fromMap(result);
}

/// Gets the private endpoint connection details for an online experimentation workspace resource.
///
/// Uses Azure REST API version 2025-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_onlineexperimentation_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:onlineexperimentation:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
