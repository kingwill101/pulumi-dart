import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_group_listener_args.dart';
import 'get_availability_group_listener_result.dart';
import 'get_sql_virtual_machine_args.dart';
import 'get_sql_virtual_machine_group_args.dart';
import 'get_sql_virtual_machine_group_result.dart';
import 'get_sql_virtual_machine_result.dart';

/// Gets an availability group listener.
///
/// Uses Azure REST API version 2023-10-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqlvirtualmachine_get_availability_group_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilityGroupListenerResult> getAvailabilityGroupListener(
  GetAvailabilityGroupListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getAvailabilityGroupListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityGroupListenerResult.fromMap(result);
}

pulumi.Output<GetAvailabilityGroupListenerResult> getAvailabilityGroupListenerOutput(
  GetAvailabilityGroupListenerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getAvailabilityGroupListener',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvailabilityGroupListenerResult.fromMap);
}

/// Gets a SQL virtual machine.
///
/// Uses Azure REST API version 2023-10-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqlvirtualmachine_get_sql_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlVirtualMachineResult> getSqlVirtualMachine(
  GetSqlVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getSqlVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlVirtualMachineResult.fromMap(result);
}

pulumi.Output<GetSqlVirtualMachineResult> getSqlVirtualMachineOutput(
  GetSqlVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getSqlVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlVirtualMachineResult.fromMap);
}

/// Gets a SQL virtual machine group.
///
/// Uses Azure REST API version 2023-10-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sqlvirtualmachine_get_sql_virtual_machine_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlVirtualMachineGroupResult> getSqlVirtualMachineGroup(
  GetSqlVirtualMachineGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getSqlVirtualMachineGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlVirtualMachineGroupResult.fromMap(result);
}

pulumi.Output<GetSqlVirtualMachineGroupResult> getSqlVirtualMachineGroupOutput(
  GetSqlVirtualMachineGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sqlvirtualmachine:getSqlVirtualMachineGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlVirtualMachineGroupResult.fromMap);
}
