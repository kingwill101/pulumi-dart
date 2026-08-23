import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_task_args.dart';
import 'get_storage_task_result.dart';

/// Get the storage task properties
///
/// Uses Azure REST API version 2023-01-01.
///
/// Other available API versions: 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storageactions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storageactions_get_storage_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageTaskResult> getStorageTask(
  GetStorageTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storageactions:getStorageTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageTaskResult.fromMap(result);
}
