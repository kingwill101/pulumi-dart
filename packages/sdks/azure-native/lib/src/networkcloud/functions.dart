import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_bridge_args.dart';
import 'get_access_bridge_result.dart';
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';
import 'get_bare_metal_machine_args.dart';
import 'get_bare_metal_machine_key_set_args.dart';
import 'get_bare_metal_machine_key_set_result.dart';
import 'get_bare_metal_machine_result.dart';
import 'get_bmc_key_set_args.dart';
import 'get_bmc_key_set_result.dart';
import 'get_cloud_services_network_args.dart';
import 'get_cloud_services_network_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_manager_args.dart';
import 'get_cluster_manager_result.dart';
import 'get_cluster_result.dart';
import 'get_console_args.dart';
import 'get_console_result.dart';
import 'get_kubernetes_cluster_args.dart';
import 'get_kubernetes_cluster_feature_args.dart';
import 'get_kubernetes_cluster_feature_result.dart';
import 'get_kubernetes_cluster_result.dart';
import 'get_kubernetes_version_args.dart';
import 'get_kubernetes_version_result.dart';
import 'get_l2_network_args.dart';
import 'get_l2_network_result.dart';
import 'get_l3_network_args.dart';
import 'get_l3_network_result.dart';
import 'get_metrics_configuration_args.dart';
import 'get_metrics_configuration_result.dart';
import 'get_rack_args.dart';
import 'get_rack_result.dart';
import 'get_storage_appliance_args.dart';
import 'get_storage_appliance_result.dart';
import 'get_trunked_network_args.dart';
import 'get_trunked_network_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';

/// Get the properties of the provided access bridge.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_access_bridge_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessBridgeResult> getAccessBridge(
  GetAccessBridgeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getAccessBridge',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessBridgeResult.fromMap(result);
}

pulumi.Output<GetAccessBridgeResult> getAccessBridgeOutput(
  GetAccessBridgeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getAccessBridge',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessBridgeResult.fromMap);
}

/// Get properties of the provided Kubernetes cluster agent pool.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}

pulumi.Output<GetAgentPoolResult> getAgentPoolOutput(
  GetAgentPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getAgentPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentPoolResult.fromMap);
}

/// Get properties of the provided bare metal machine.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_bare_metal_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalMachineResult> getBareMetalMachine(
  GetBareMetalMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getBareMetalMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalMachineResult.fromMap(result);
}

pulumi.Output<GetBareMetalMachineResult> getBareMetalMachineOutput(
  GetBareMetalMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getBareMetalMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalMachineResult.fromMap);
}

/// Get bare metal machine key set of the provided cluster.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_bare_metal_machine_key_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBareMetalMachineKeySetResult> getBareMetalMachineKeySet(
  GetBareMetalMachineKeySetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getBareMetalMachineKeySet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBareMetalMachineKeySetResult.fromMap(result);
}

pulumi.Output<GetBareMetalMachineKeySetResult> getBareMetalMachineKeySetOutput(
  GetBareMetalMachineKeySetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getBareMetalMachineKeySet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBareMetalMachineKeySetResult.fromMap);
}

/// Get baseboard management controller key set of the provided cluster.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_bmc_key_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBmcKeySetResult> getBmcKeySet(
  GetBmcKeySetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getBmcKeySet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBmcKeySetResult.fromMap(result);
}

pulumi.Output<GetBmcKeySetResult> getBmcKeySetOutput(
  GetBmcKeySetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getBmcKeySet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBmcKeySetResult.fromMap);
}

/// Get properties of the provided cloud services network.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_cloud_services_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudServicesNetworkResult> getCloudServicesNetwork(
  GetCloudServicesNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getCloudServicesNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudServicesNetworkResult.fromMap(result);
}

pulumi.Output<GetCloudServicesNetworkResult> getCloudServicesNetworkOutput(
  GetCloudServicesNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getCloudServicesNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudServicesNetworkResult.fromMap);
}

/// Get properties of the provided cluster.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Get the properties of the provided cluster manager.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_cluster_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterManagerResult> getClusterManager(
  GetClusterManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getClusterManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterManagerResult.fromMap(result);
}

pulumi.Output<GetClusterManagerResult> getClusterManagerOutput(
  GetClusterManagerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getClusterManager',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterManagerResult.fromMap);
}

/// Get properties of the provided virtual machine console.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_console_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsoleResult> getConsole(
  GetConsoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getConsole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsoleResult.fromMap(result);
}

pulumi.Output<GetConsoleResult> getConsoleOutput(
  GetConsoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getConsole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConsoleResult.fromMap);
}

/// Get properties of the provided the Kubernetes cluster.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_kubernetes_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesClusterResult> getKubernetesCluster(
  GetKubernetesClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesClusterResult.fromMap(result);
}

pulumi.Output<GetKubernetesClusterResult> getKubernetesClusterOutput(
  GetKubernetesClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubernetesClusterResult.fromMap);
}

/// Get properties of the provided the Kubernetes cluster feature.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_kubernetes_cluster_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesClusterFeatureResult> getKubernetesClusterFeature(
  GetKubernetesClusterFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesClusterFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesClusterFeatureResult.fromMap(result);
}

pulumi.Output<GetKubernetesClusterFeatureResult> getKubernetesClusterFeatureOutput(
  GetKubernetesClusterFeatureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesClusterFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubernetesClusterFeatureResult.fromMap);
}

/// Retrieve the Kubernetes version resource that describes the available Kubernetes versions for deployment.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_kubernetes_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesVersionResult> getKubernetesVersion(
  GetKubernetesVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesVersionResult.fromMap(result);
}

pulumi.Output<GetKubernetesVersionResult> getKubernetesVersionOutput(
  GetKubernetesVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getKubernetesVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubernetesVersionResult.fromMap);
}

/// Get properties of the provided layer 2 (L2) network.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_l2_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetL2NetworkResult> getL2Network(
  GetL2NetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getL2Network',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetL2NetworkResult.fromMap(result);
}

pulumi.Output<GetL2NetworkResult> getL2NetworkOutput(
  GetL2NetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getL2Network',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetL2NetworkResult.fromMap);
}

/// Get properties of the provided layer 3 (L3) network.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_l3_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetL3NetworkResult> getL3Network(
  GetL3NetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getL3Network',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetL3NetworkResult.fromMap(result);
}

pulumi.Output<GetL3NetworkResult> getL3NetworkOutput(
  GetL3NetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getL3Network',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetL3NetworkResult.fromMap);
}

/// Get metrics configuration of the provided cluster.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_metrics_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricsConfigurationResult> getMetricsConfiguration(
  GetMetricsConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getMetricsConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricsConfigurationResult.fromMap(result);
}

pulumi.Output<GetMetricsConfigurationResult> getMetricsConfigurationOutput(
  GetMetricsConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getMetricsConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetricsConfigurationResult.fromMap);
}

/// Get properties of the provided rack.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_rack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRackResult> getRack(
  GetRackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getRack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRackResult.fromMap(result);
}

pulumi.Output<GetRackResult> getRackOutput(
  GetRackArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getRack',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRackResult.fromMap);
}

/// Get properties of the provided storage appliance.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_storage_appliance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageApplianceResult> getStorageAppliance(
  GetStorageApplianceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getStorageAppliance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageApplianceResult.fromMap(result);
}

pulumi.Output<GetStorageApplianceResult> getStorageApplianceOutput(
  GetStorageApplianceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getStorageAppliance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageApplianceResult.fromMap);
}

/// Get properties of the provided trunked network.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_trunked_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrunkedNetworkResult> getTrunkedNetwork(
  GetTrunkedNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getTrunkedNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrunkedNetworkResult.fromMap(result);
}

pulumi.Output<GetTrunkedNetworkResult> getTrunkedNetworkOutput(
  GetTrunkedNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getTrunkedNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrunkedNetworkResult.fromMap);
}

/// Get properties of the provided virtual machine.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getVirtualMachine',
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
    'azure-native:networkcloud:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
}

/// Get properties of the provided volume.
///
/// Uses Azure REST API version 2025-02-01.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkcloud_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:networkcloud:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

pulumi.Output<GetVolumeResult> getVolumeOutput(
  GetVolumeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:networkcloud:getVolume',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVolumeResult.fromMap);
}
