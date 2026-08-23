import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standby_container_group_pool_args.dart';
import 'get_standby_container_group_pool_result.dart';
import 'get_standby_virtual_machine_pool_args.dart';
import 'get_standby_virtual_machine_pool_result.dart';

/// Get a StandbyContainerGroupPoolResource
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-12-01-preview, 2024-03-01-preview, 2025-03-01, 2025-10-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native standbypool [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_standbypool_get_standby_container_group_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandbyContainerGroupPoolResult> getStandbyContainerGroupPool(
  GetStandbyContainerGroupPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:standbypool:getStandbyContainerGroupPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandbyContainerGroupPoolResult.fromMap(result);
}

/// Get a StandbyVirtualMachinePoolResource
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-12-01-preview, 2024-03-01-preview, 2025-03-01, 2025-10-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native standbypool [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_standbypool_get_standby_virtual_machine_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandbyVirtualMachinePoolResult> getStandbyVirtualMachinePool(
  GetStandbyVirtualMachinePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:standbypool:getStandbyVirtualMachinePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandbyVirtualMachinePoolResult.fromMap(result);
}
