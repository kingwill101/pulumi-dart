import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_args.dart';
import 'get_agent_result.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_job_definition_args.dart';
import 'get_job_definition_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_storage_mover_args.dart';
import 'get_storage_mover_result.dart';

/// Gets an Agent resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}

pulumi.Output<GetAgentResult> getAgentOutput(
  GetAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentResult.fromMap);
}

/// Gets a Connection resource.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

pulumi.Output<GetConnectionResult> getConnectionOutput(
  GetConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionResult.fromMap);
}

/// Gets an Endpoint resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

pulumi.Output<GetEndpointResult> getEndpointOutput(
  GetEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointResult.fromMap);
}

/// Gets a Job Definition resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_job_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobDefinitionResult> getJobDefinition(
  GetJobDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getJobDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDefinitionResult.fromMap(result);
}

pulumi.Output<GetJobDefinitionResult> getJobDefinitionOutput(
  GetJobDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getJobDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobDefinitionResult.fromMap);
}

/// Gets a Project resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Gets a Storage Mover resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagemover_get_storage_mover_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageMoverResult> getStorageMover(
  GetStorageMoverArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagemover:getStorageMover',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageMoverResult.fromMap(result);
}

pulumi.Output<GetStorageMoverResult> getStorageMoverOutput(
  GetStorageMoverArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagemover:getStorageMover',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageMoverResult.fromMap);
}
