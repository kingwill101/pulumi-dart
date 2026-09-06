import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availability_set_args.dart';
import 'get_availability_set_result.dart';
import 'get_cloud_args.dart';
import 'get_cloud_result.dart';
import 'get_guest_agent_args.dart';
import 'get_guest_agent_result.dart';
import 'get_hybrid_identity_metadata_args.dart';
import 'get_hybrid_identity_metadata_result.dart';
import 'get_inventory_item_args.dart';
import 'get_inventory_item_result.dart';
import 'get_machine_extension_args.dart';
import 'get_machine_extension_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_instance_args.dart';
import 'get_virtual_machine_instance_result.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_machine_template_args.dart';
import 'get_virtual_machine_template_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_result.dart';
import 'get_vminstance_guest_agent_args.dart';
import 'get_vminstance_guest_agent_result.dart';
import 'get_vmm_server_args.dart';
import 'get_vmm_server_result.dart';

/// Implements AvailabilitySet GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_availability_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilitySetResult> getAvailabilitySet(
  GetAvailabilitySetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getAvailabilitySet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilitySetResult.fromMap(result);
}

pulumi.Output<GetAvailabilitySetResult> getAvailabilitySetOutput(
  GetAvailabilitySetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getAvailabilitySet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvailabilitySetResult.fromMap);
}

/// Implements Cloud GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_cloud_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudResult> getCloud(
  GetCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudResult.fromMap(result);
}

pulumi.Output<GetCloudResult> getCloudOutput(
  GetCloudArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getCloud',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudResult.fromMap);
}

/// Implements GuestAgent GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_guest_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestAgentResult> getGuestAgent(
  GetGuestAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getGuestAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestAgentResult.fromMap(result);
}

pulumi.Output<GetGuestAgentResult> getGuestAgentOutput(
  GetGuestAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getGuestAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestAgentResult.fromMap);
}

/// Implements HybridIdentityMetadata GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_hybrid_identity_metadata_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridIdentityMetadataResult> getHybridIdentityMetadata(
  GetHybridIdentityMetadataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getHybridIdentityMetadata',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridIdentityMetadataResult.fromMap(result);
}

pulumi.Output<GetHybridIdentityMetadataResult> getHybridIdentityMetadataOutput(
  GetHybridIdentityMetadataArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getHybridIdentityMetadata',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHybridIdentityMetadataResult.fromMap);
}

/// Shows an inventory item.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_inventory_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInventoryItemResult> getInventoryItem(
  GetInventoryItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getInventoryItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInventoryItemResult.fromMap(result);
}

pulumi.Output<GetInventoryItemResult> getInventoryItemOutput(
  GetInventoryItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getInventoryItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInventoryItemResult.fromMap);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_machine_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineExtensionResult> getMachineExtension(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getMachineExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineExtensionResult.fromMap(result);
}

pulumi.Output<GetMachineExtensionResult> getMachineExtensionOutput(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getMachineExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineExtensionResult.fromMap);
}

/// Implements GuestAgent GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_vminstance_guest_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVMInstanceGuestAgentResult> getVMInstanceGuestAgent(
  GetVMInstanceGuestAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVMInstanceGuestAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVMInstanceGuestAgentResult.fromMap(result);
}

pulumi.Output<GetVMInstanceGuestAgentResult> getVMInstanceGuestAgentOutput(
  GetVMInstanceGuestAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getVMInstanceGuestAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVMInstanceGuestAgentResult.fromMap);
}

/// Implements VirtualMachine GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualMachine',
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
    'azure-native:scvmm:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
}

/// Retrieves information about a virtual machine instance.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_virtual_machine_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineInstanceResult> getVirtualMachineInstance(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualMachineInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineInstanceResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineInstanceResult> getVirtualMachineInstanceOutput(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualMachineInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineInstanceResult.fromMap);
}

/// Implements VirtualMachineTemplate GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_virtual_machine_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineTemplateResult> getVirtualMachineTemplate(
  GetVirtualMachineTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualMachineTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineTemplateResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineTemplateResult> getVirtualMachineTemplateOutput(
  GetVirtualMachineTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualMachineTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineTemplateResult.fromMap);
}

/// Implements VirtualNetwork GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkResult> getVirtualNetworkOutput(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkResult.fromMap);
}

/// Implements VMMServer GET method.
///
/// Uses Azure REST API version 2023-04-01-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_scvmm_get_vmm_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmmServerResult> getVmmServer(
  GetVmmServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scvmm:getVmmServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmmServerResult.fromMap(result);
}

pulumi.Output<GetVmmServerResult> getVmmServerOutput(
  GetVmmServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scvmm:getVmmServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmmServerResult.fromMap);
}
