import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'list_workspace_keys_args.dart';
import 'list_workspace_keys_result.dart';

/// Returns the Workspace resource associated with the given name.
///
/// Uses Azure REST API version 2023-11-13-preview.
///
/// Other available API versions: 2022-01-10-preview, 2025-01-01-preview, 2025-08-11-preview, 2025-11-01-preview, 2025-12-15-preview, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quantum [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_quantum_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:quantum:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

pulumi.Output<GetWorkspaceResult> getWorkspaceOutput(
  GetWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:quantum:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Get the keys to use with the Quantum APIs. A key is used to authenticate and authorize access to the Quantum REST APIs. Only one key is needed at a time; two are given to provide seamless key regeneration.
///
/// Uses Azure REST API version 2023-11-13-preview.
///
/// Other available API versions: 2025-01-01-preview, 2025-08-11-preview, 2025-11-01-preview, 2025-12-15-preview, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quantum [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_quantum_list_workspace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceKeysResult> listWorkspaceKeys(
  ListWorkspaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:quantum:listWorkspaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceKeysResult.fromMap(result);
}

pulumi.Output<ListWorkspaceKeysResult> listWorkspaceKeysOutput(
  ListWorkspaceKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:quantum:listWorkspaceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceKeysResult.fromMap);
}
