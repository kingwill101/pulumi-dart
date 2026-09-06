import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_data_export_args.dart';
import 'get_data_export_result.dart';
import 'get_data_source_args.dart';
import 'get_data_source_result.dart';
import 'get_linked_service_args.dart';
import 'get_linked_service_result.dart';
import 'get_linked_storage_account_args.dart';
import 'get_linked_storage_account_result.dart';
import 'get_machine_group_args.dart';
import 'get_machine_group_result.dart';
import 'get_query_args.dart';
import 'get_query_pack_args.dart';
import 'get_query_pack_result.dart';
import 'get_query_result.dart';
import 'get_saved_search_args.dart';
import 'get_saved_search_result.dart';
import 'get_shared_keys_args.dart';
import 'get_shared_keys_result.dart';
import 'get_storage_insight_config_args.dart';
import 'get_storage_insight_config_result.dart';
import 'get_summary_log_args.dart';
import 'get_summary_log_result.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'get_workspace_shared_keys_args.dart';
import 'get_workspace_shared_keys_result.dart';

/// Gets a Log Analytics cluster instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2020-10-01, 2021-06-01, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getCluster',
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
    'azure-native:operationalinsights:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Gets a data export instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_data_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExportResult> getDataExport(
  GetDataExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getDataExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExportResult.fromMap(result);
}

pulumi.Output<GetDataExportResult> getDataExportOutput(
  GetDataExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getDataExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataExportResult.fromMap);
}

/// Gets a datasource instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2015-11-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_data_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourceResult> getDataSource(
  GetDataSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getDataSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceResult.fromMap(result);
}

pulumi.Output<GetDataSourceResult> getDataSourceOutput(
  GetDataSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getDataSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSourceResult.fromMap);
}

/// Gets a linked service instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2015-11-01-preview, 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_linked_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedServiceResult> getLinkedService(
  GetLinkedServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getLinkedService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedServiceResult.fromMap(result);
}

pulumi.Output<GetLinkedServiceResult> getLinkedServiceOutput(
  GetLinkedServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getLinkedService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkedServiceResult.fromMap);
}

/// Gets all linked storage account of a specific data source type associated with the specified workspace.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_linked_storage_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedStorageAccountResult> getLinkedStorageAccount(
  GetLinkedStorageAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getLinkedStorageAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedStorageAccountResult.fromMap(result);
}

pulumi.Output<GetLinkedStorageAccountResult> getLinkedStorageAccountOutput(
  GetLinkedStorageAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getLinkedStorageAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkedStorageAccountResult.fromMap);
}

/// Returns the specified machine group as it existed during the specified time interval.
///
/// Uses Azure REST API version 2015-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_machine_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineGroupResult> getMachineGroup(
  GetMachineGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getMachineGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineGroupResult.fromMap(result);
}

pulumi.Output<GetMachineGroupResult> getMachineGroupOutput(
  GetMachineGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getMachineGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineGroupResult.fromMap);
}

/// Gets a specific Log Analytics Query defined within a Log Analytics QueryPack.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2019-09-01, 2019-09-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueryResult> getQuery(
  GetQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueryResult.fromMap(result);
}

pulumi.Output<GetQueryResult> getQueryOutput(
  GetQueryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueryResult.fromMap);
}

/// Returns a Log Analytics QueryPack.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2019-09-01, 2019-09-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_query_pack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueryPackResult> getQueryPack(
  GetQueryPackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getQueryPack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueryPackResult.fromMap(result);
}

pulumi.Output<GetQueryPackResult> getQueryPackOutput(
  GetQueryPackArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getQueryPack',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueryPackResult.fromMap);
}

/// Gets the specified saved search for a given workspace.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_saved_search_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSavedSearchResult> getSavedSearch(
  GetSavedSearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSavedSearch',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSavedSearchResult.fromMap(result);
}

pulumi.Output<GetSavedSearchResult> getSavedSearchOutput(
  GetSavedSearchArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSavedSearch',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSavedSearchResult.fromMap);
}

/// Gets the shared keys for a workspace.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_shared_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedKeysResult> getSharedKeys(
  GetSharedKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSharedKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedKeysResult.fromMap(result);
}

pulumi.Output<GetSharedKeysResult> getSharedKeysOutput(
  GetSharedKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSharedKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSharedKeysResult.fromMap);
}

/// Gets a storage insight instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_storage_insight_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageInsightConfigResult> getStorageInsightConfig(
  GetStorageInsightConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getStorageInsightConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageInsightConfigResult.fromMap(result);
}

pulumi.Output<GetStorageInsightConfigResult> getStorageInsightConfigOutput(
  GetStorageInsightConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getStorageInsightConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageInsightConfigResult.fromMap);
}

/// Gets Log Analytics workspace Summary rules.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_summary_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSummaryLogResult> getSummaryLog(
  GetSummaryLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSummaryLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSummaryLogResult.fromMap(result);
}

pulumi.Output<GetSummaryLogResult> getSummaryLogOutput(
  GetSummaryLogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getSummaryLog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSummaryLogResult.fromMap);
}

/// Gets a Log Analytics workspace table.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2021-12-01-preview, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

pulumi.Output<GetTableResult> getTableOutput(
  GetTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResult.fromMap);
}

/// Gets a workspace instance.
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2015-11-01-preview, 2020-03-01-preview, 2020-08-01, 2020-10-01, 2021-06-01, 2021-12-01-preview, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getWorkspace',
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
    'azure-native:operationalinsights:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Gets the shared keys for a workspace.
///
/// Uses Azure REST API version 2015-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_workspace_shared_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceSharedKeysResult> getWorkspaceSharedKeys(
  GetWorkspaceSharedKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationalinsights:getWorkspaceSharedKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceSharedKeysResult.fromMap(result);
}

pulumi.Output<GetWorkspaceSharedKeysResult> getWorkspaceSharedKeysOutput(
  GetWorkspaceSharedKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationalinsights:getWorkspaceSharedKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceSharedKeysResult.fromMap);
}
