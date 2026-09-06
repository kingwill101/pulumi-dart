import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_args.dart';
import 'get_trigger_result.dart';
import 'get_virtual_machine_image_template_args.dart';
import 'get_virtual_machine_image_template_result.dart';

/// Get the specified trigger for the specified image template resource
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-07-01, 2023-07-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native virtualmachineimages [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_virtualmachineimages_get_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:virtualmachineimages:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}

pulumi.Output<GetTriggerResult> getTriggerOutput(
  GetTriggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:virtualmachineimages:getTrigger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTriggerResult.fromMap);
}

/// Get information about a virtual machine image template
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-07-01, 2023-07-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native virtualmachineimages [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_virtualmachineimages_get_virtual_machine_image_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineImageTemplateResult> getVirtualMachineImageTemplate(
  GetVirtualMachineImageTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:virtualmachineimages:getVirtualMachineImageTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineImageTemplateResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineImageTemplateResult> getVirtualMachineImageTemplateOutput(
  GetVirtualMachineImageTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:virtualmachineimages:getVirtualMachineImageTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineImageTemplateResult.fromMap);
}
