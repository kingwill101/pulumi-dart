import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_az_resiliency_status_args.dart';
import 'get_managed_az_resiliency_status_result.dart';
import 'get_managed_cluster_application_args.dart';
import 'get_managed_cluster_application_result.dart';
import 'get_managed_cluster_application_type_args.dart';
import 'get_managed_cluster_application_type_result.dart';
import 'get_managed_cluster_application_type_version_args.dart';
import 'get_managed_cluster_application_type_version_result.dart';
import 'get_managed_cluster_args.dart';
import 'get_managed_cluster_fault_simulation_args.dart';
import 'get_managed_cluster_fault_simulation_result.dart';
import 'get_managed_cluster_result.dart';
import 'get_managed_cluster_service_args.dart';
import 'get_managed_cluster_service_result.dart';
import 'get_managed_maintenance_window_status_args.dart';
import 'get_managed_maintenance_window_status_result.dart';
import 'get_node_type_args.dart';
import 'get_node_type_fault_simulation_args.dart';
import 'get_node_type_fault_simulation_result.dart';
import 'get_node_type_result.dart';
import 'list_managed_cluster_fault_simulation_args.dart';
import 'list_managed_cluster_fault_simulation_result.dart';
import 'list_node_type_fault_simulation_args.dart';
import 'list_node_type_fault_simulation_result.dart';

/// Action to get Az Resiliency Status of all the Base resources constituting Service Fabric Managed Clusters.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_az_resiliency_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedAzResiliencyStatusResult> getManagedAzResiliencyStatus(
  GetManagedAzResiliencyStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedAzResiliencyStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedAzResiliencyStatusResult.fromMap(result);
}

pulumi.Output<GetManagedAzResiliencyStatusResult> getManagedAzResiliencyStatusOutput(
  GetManagedAzResiliencyStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedAzResiliencyStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedAzResiliencyStatusResult.fromMap);
}

/// Get a Service Fabric managed cluster resource created or in the process of being created in the specified resource group.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterResult> getManagedCluster(
  GetManagedClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterResult.fromMap(result);
}

pulumi.Output<GetManagedClusterResult> getManagedClusterOutput(
  GetManagedClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterResult.fromMap);
}

/// Get a Service Fabric managed application resource created or in the process of being created in the Service Fabric cluster resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterApplicationResult> getManagedClusterApplication(
  GetManagedClusterApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterApplicationResult.fromMap(result);
}

pulumi.Output<GetManagedClusterApplicationResult> getManagedClusterApplicationOutput(
  GetManagedClusterApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterApplicationResult.fromMap);
}

/// Get a Service Fabric application type name resource created or in the process of being created in the Service Fabric managed cluster resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_application_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterApplicationTypeResult> getManagedClusterApplicationType(
  GetManagedClusterApplicationTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplicationType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterApplicationTypeResult.fromMap(result);
}

pulumi.Output<GetManagedClusterApplicationTypeResult> getManagedClusterApplicationTypeOutput(
  GetManagedClusterApplicationTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplicationType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterApplicationTypeResult.fromMap);
}

/// Get a Service Fabric managed application type version resource created or in the process of being created in the Service Fabric managed application type name resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_application_type_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterApplicationTypeVersionResult> getManagedClusterApplicationTypeVersion(
  GetManagedClusterApplicationTypeVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplicationTypeVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterApplicationTypeVersionResult.fromMap(result);
}

pulumi.Output<GetManagedClusterApplicationTypeVersionResult> getManagedClusterApplicationTypeVersionOutput(
  GetManagedClusterApplicationTypeVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterApplicationTypeVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterApplicationTypeVersionResult.fromMap);
}

/// Gets a fault simulation by the simulationId.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_fault_simulation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterFaultSimulationResult> getManagedClusterFaultSimulation(
  GetManagedClusterFaultSimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterFaultSimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterFaultSimulationResult.fromMap(result);
}

pulumi.Output<GetManagedClusterFaultSimulationResult> getManagedClusterFaultSimulationOutput(
  GetManagedClusterFaultSimulationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterFaultSimulation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterFaultSimulationResult.fromMap);
}

/// Get a Service Fabric service resource created or in the process of being created in the Service Fabric managed application resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_cluster_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterServiceResult> getManagedClusterService(
  GetManagedClusterServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterServiceResult.fromMap(result);
}

pulumi.Output<GetManagedClusterServiceResult> getManagedClusterServiceOutput(
  GetManagedClusterServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedClusterService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterServiceResult.fromMap);
}

/// Action to get Maintenance Window Status of the Service Fabric Managed Clusters.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_managed_maintenance_window_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedMaintenanceWindowStatusResult> getManagedMaintenanceWindowStatus(
  GetManagedMaintenanceWindowStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedMaintenanceWindowStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedMaintenanceWindowStatusResult.fromMap(result);
}

pulumi.Output<GetManagedMaintenanceWindowStatusResult> getManagedMaintenanceWindowStatusOutput(
  GetManagedMaintenanceWindowStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getManagedMaintenanceWindowStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedMaintenanceWindowStatusResult.fromMap);
}

/// Get a Service Fabric node type of a given managed cluster.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_node_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTypeResult> getNodeType(
  GetNodeTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getNodeType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTypeResult.fromMap(result);
}

pulumi.Output<GetNodeTypeResult> getNodeTypeOutput(
  GetNodeTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getNodeType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeTypeResult.fromMap);
}

/// Gets a fault simulation by the simulationId.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_get_node_type_fault_simulation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTypeFaultSimulationResult> getNodeTypeFaultSimulation(
  GetNodeTypeFaultSimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:getNodeTypeFaultSimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTypeFaultSimulationResult.fromMap(result);
}

pulumi.Output<GetNodeTypeFaultSimulationResult> getNodeTypeFaultSimulationOutput(
  GetNodeTypeFaultSimulationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:getNodeTypeFaultSimulation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeTypeFaultSimulationResult.fromMap);
}

/// Gets the list of recent fault simulations for the cluster.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_list_managed_cluster_fault_simulation_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedClusterFaultSimulationResult> listManagedClusterFaultSimulation(
  ListManagedClusterFaultSimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:listManagedClusterFaultSimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedClusterFaultSimulationResult.fromMap(result);
}

pulumi.Output<ListManagedClusterFaultSimulationResult> listManagedClusterFaultSimulationOutput(
  ListManagedClusterFaultSimulationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:listManagedClusterFaultSimulation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedClusterFaultSimulationResult.fromMap);
}

/// Gets the list of recent fault simulations for the node type.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabric_list_node_type_fault_simulation_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNodeTypeFaultSimulationResult> listNodeTypeFaultSimulation(
  ListNodeTypeFaultSimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabric:listNodeTypeFaultSimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNodeTypeFaultSimulationResult.fromMap(result);
}

pulumi.Output<ListNodeTypeFaultSimulationResult> listNodeTypeFaultSimulationOutput(
  ListNodeTypeFaultSimulationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabric:listNodeTypeFaultSimulation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNodeTypeFaultSimulationResult.fromMap);
}
