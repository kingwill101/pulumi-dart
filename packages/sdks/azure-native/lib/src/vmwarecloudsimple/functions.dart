import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_cloud_node_args.dart';
import 'get_dedicated_cloud_node_result.dart';
import 'get_dedicated_cloud_service_args.dart';
import 'get_dedicated_cloud_service_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_result.dart';

/// Returns dedicated cloud node
///
/// Uses Azure REST API version 2019-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwarecloudsimple_get_dedicated_cloud_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedCloudNodeResult> getDedicatedCloudNode(
  GetDedicatedCloudNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getDedicatedCloudNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedCloudNodeResult.fromMap(result);
}

pulumi.Output<GetDedicatedCloudNodeResult> getDedicatedCloudNodeOutput(
  GetDedicatedCloudNodeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getDedicatedCloudNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedCloudNodeResult.fromMap);
}

/// Returns Dedicate Cloud Service
///
/// Uses Azure REST API version 2019-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwarecloudsimple_get_dedicated_cloud_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedCloudServiceResult> getDedicatedCloudService(
  GetDedicatedCloudServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getDedicatedCloudService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedCloudServiceResult.fromMap(result);
}

pulumi.Output<GetDedicatedCloudServiceResult> getDedicatedCloudServiceOutput(
  GetDedicatedCloudServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getDedicatedCloudService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedCloudServiceResult.fromMap);
}

/// Get virtual machine
///
/// Uses Azure REST API version 2019-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwarecloudsimple_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineResult> getVirtualMachineOutput(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:vmwarecloudsimple:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
}
