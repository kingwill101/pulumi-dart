import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_discovery_workspace_args.dart';
import 'get_storage_discovery_workspace_result.dart';

/// Get a StorageDiscoveryWorkspace
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagediscovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagediscovery_get_storage_discovery_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageDiscoveryWorkspaceResult> getStorageDiscoveryWorkspace(
  GetStorageDiscoveryWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagediscovery:getStorageDiscoveryWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageDiscoveryWorkspaceResult.fromMap(result);
}

pulumi.Output<GetStorageDiscoveryWorkspaceResult> getStorageDiscoveryWorkspaceOutput(
  GetStorageDiscoveryWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagediscovery:getStorageDiscoveryWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageDiscoveryWorkspaceResult.fromMap);
}
