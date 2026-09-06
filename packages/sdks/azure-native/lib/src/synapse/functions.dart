import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_big_data_pool_args.dart';
import 'get_big_data_pool_result.dart';
import 'get_database_principal_assignment_args.dart';
import 'get_database_principal_assignment_result.dart';
import 'get_event_grid_data_connection_args.dart';
import 'get_event_grid_data_connection_result.dart';
import 'get_event_hub_data_connection_args.dart';
import 'get_event_hub_data_connection_result.dart';
import 'get_integration_runtime_args.dart';
import 'get_integration_runtime_connection_info_args.dart';
import 'get_integration_runtime_connection_info_result.dart';
import 'get_integration_runtime_object_metadatum_args.dart';
import 'get_integration_runtime_object_metadatum_result.dart';
import 'get_integration_runtime_result.dart';
import 'get_integration_runtime_status_args.dart';
import 'get_integration_runtime_status_result.dart';
import 'get_iot_hub_data_connection_args.dart';
import 'get_iot_hub_data_connection_result.dart';
import 'get_ip_firewall_rule_args.dart';
import 'get_ip_firewall_rule_result.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_kusto_pool_args.dart';
import 'get_kusto_pool_attached_database_configuration_args.dart';
import 'get_kusto_pool_attached_database_configuration_result.dart';
import 'get_kusto_pool_database_principal_assignment_args.dart';
import 'get_kusto_pool_database_principal_assignment_result.dart';
import 'get_kusto_pool_principal_assignment_args.dart';
import 'get_kusto_pool_principal_assignment_result.dart';
import 'get_kusto_pool_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_private_link_hub_args.dart';
import 'get_private_link_hub_result.dart';
import 'get_read_only_following_database_args.dart';
import 'get_read_only_following_database_result.dart';
import 'get_read_write_database_args.dart';
import 'get_read_write_database_result.dart';
import 'get_sql_pool_args.dart';
import 'get_sql_pool_result.dart';
import 'get_sql_pool_sensitivity_label_args.dart';
import 'get_sql_pool_sensitivity_label_result.dart';
import 'get_sql_pool_transparent_data_encryption_args.dart';
import 'get_sql_pool_transparent_data_encryption_result.dart';
import 'get_sql_pool_vulnerability_assessment_args.dart';
import 'get_sql_pool_vulnerability_assessment_result.dart';
import 'get_sql_pool_vulnerability_assessment_rule_baseline_args.dart';
import 'get_sql_pool_vulnerability_assessment_rule_baseline_result.dart';
import 'get_sql_pool_workload_classifier_args.dart';
import 'get_sql_pool_workload_classifier_result.dart';
import 'get_sql_pool_workload_group_args.dart';
import 'get_sql_pool_workload_group_result.dart';
import 'get_workspace_aad_admin_args.dart';
import 'get_workspace_aad_admin_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_managed_sql_server_vulnerability_assessment_args.dart';
import 'get_workspace_managed_sql_server_vulnerability_assessment_result.dart';
import 'get_workspace_result.dart';
import 'get_workspace_sql_aad_admin_args.dart';
import 'get_workspace_sql_aad_admin_result.dart';
import 'list_integration_runtime_auth_key_args.dart';
import 'list_integration_runtime_auth_key_result.dart';
import 'list_kusto_pool_follower_databases_args.dart';
import 'list_kusto_pool_follower_databases_result.dart';
import 'list_kusto_pool_language_extensions_args.dart';
import 'list_kusto_pool_language_extensions_result.dart';

/// Get a Big Data pool.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_big_data_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBigDataPoolResult> getBigDataPool(
  GetBigDataPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getBigDataPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBigDataPoolResult.fromMap(result);
}

pulumi.Output<GetBigDataPoolResult> getBigDataPoolOutput(
  GetBigDataPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getBigDataPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBigDataPoolResult.fromMap);
}

/// Gets a Kusto pool database principalAssignment.
///
/// Uses Azure REST API version 2021-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_database_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasePrincipalAssignmentResult> getDatabasePrincipalAssignment(
  GetDatabasePrincipalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getDatabasePrincipalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasePrincipalAssignmentResult.fromMap(result);
}

pulumi.Output<GetDatabasePrincipalAssignmentResult> getDatabasePrincipalAssignmentOutput(
  GetDatabasePrincipalAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getDatabasePrincipalAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabasePrincipalAssignmentResult.fromMap);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_event_grid_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventGridDataConnectionResult> getEventGridDataConnection(
  GetEventGridDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getEventGridDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventGridDataConnectionResult.fromMap(result);
}

pulumi.Output<GetEventGridDataConnectionResult> getEventGridDataConnectionOutput(
  GetEventGridDataConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getEventGridDataConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventGridDataConnectionResult.fromMap);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_event_hub_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventHubDataConnectionResult> getEventHubDataConnection(
  GetEventHubDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getEventHubDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventHubDataConnectionResult.fromMap(result);
}

pulumi.Output<GetEventHubDataConnectionResult> getEventHubDataConnectionOutput(
  GetEventHubDataConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getEventHubDataConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventHubDataConnectionResult.fromMap);
}

/// Get an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeResult> getIntegrationRuntime(
  GetIntegrationRuntimeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntime',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeResult.fromMap(result);
}

pulumi.Output<GetIntegrationRuntimeResult> getIntegrationRuntimeOutput(
  GetIntegrationRuntimeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntime',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationRuntimeResult.fromMap);
}

/// Get connection info for an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_connection_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeConnectionInfoResult> getIntegrationRuntimeConnectionInfo(
  GetIntegrationRuntimeConnectionInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeConnectionInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeConnectionInfoResult.fromMap(result);
}

pulumi.Output<GetIntegrationRuntimeConnectionInfoResult> getIntegrationRuntimeConnectionInfoOutput(
  GetIntegrationRuntimeConnectionInfoArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeConnectionInfo',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationRuntimeConnectionInfoResult.fromMap);
}

/// Get object metadata from an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_object_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeObjectMetadatumResult> getIntegrationRuntimeObjectMetadatum(
  GetIntegrationRuntimeObjectMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeObjectMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeObjectMetadatumResult.fromMap(result);
}

pulumi.Output<GetIntegrationRuntimeObjectMetadatumResult> getIntegrationRuntimeObjectMetadatumOutput(
  GetIntegrationRuntimeObjectMetadatumArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeObjectMetadatum',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationRuntimeObjectMetadatumResult.fromMap);
}

/// Get the integration runtime status
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeStatusResult> getIntegrationRuntimeStatus(
  GetIntegrationRuntimeStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeStatusResult.fromMap(result);
}

pulumi.Output<GetIntegrationRuntimeStatusResult> getIntegrationRuntimeStatusOutput(
  GetIntegrationRuntimeStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIntegrationRuntimeStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationRuntimeStatusResult.fromMap);
}

/// Returns a data connection.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_iot_hub_data_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotHubDataConnectionResult> getIotHubDataConnection(
  GetIotHubDataConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIotHubDataConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotHubDataConnectionResult.fromMap(result);
}

pulumi.Output<GetIotHubDataConnectionResult> getIotHubDataConnectionOutput(
  GetIotHubDataConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIotHubDataConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIotHubDataConnectionResult.fromMap);
}

/// Get a firewall rule
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_ip_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpFirewallRuleResult> getIpFirewallRule(
  GetIpFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getIpFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetIpFirewallRuleResult> getIpFirewallRuleOutput(
  GetIpFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getIpFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpFirewallRuleResult.fromMap);
}

/// Gets a workspace key
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

pulumi.Output<GetKeyResult> getKeyOutput(
  GetKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeyResult.fromMap);
}

/// Gets a Kusto pool.
///
/// Uses Azure REST API version 2021-06-01-preview.
///
/// Other available API versions: 2021-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolResult> getKustoPool(
  GetKustoPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoPoolResult.fromMap(result);
}

pulumi.Output<GetKustoPoolResult> getKustoPoolOutput(
  GetKustoPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoPoolResult.fromMap);
}

/// Returns an attached database configuration.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_attached_database_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolAttachedDatabaseConfigurationResult> getKustoPoolAttachedDatabaseConfiguration(
  GetKustoPoolAttachedDatabaseConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolAttachedDatabaseConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoPoolAttachedDatabaseConfigurationResult.fromMap(result);
}

pulumi.Output<GetKustoPoolAttachedDatabaseConfigurationResult> getKustoPoolAttachedDatabaseConfigurationOutput(
  GetKustoPoolAttachedDatabaseConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolAttachedDatabaseConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoPoolAttachedDatabaseConfigurationResult.fromMap);
}

/// Gets a Kusto pool database principalAssignment.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_database_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolDatabasePrincipalAssignmentResult> getKustoPoolDatabasePrincipalAssignment(
  GetKustoPoolDatabasePrincipalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolDatabasePrincipalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoPoolDatabasePrincipalAssignmentResult.fromMap(result);
}

pulumi.Output<GetKustoPoolDatabasePrincipalAssignmentResult> getKustoPoolDatabasePrincipalAssignmentOutput(
  GetKustoPoolDatabasePrincipalAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolDatabasePrincipalAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoPoolDatabasePrincipalAssignmentResult.fromMap);
}

/// Gets a Kusto pool principalAssignment.
///
/// Uses Azure REST API version 2021-06-01-preview.
///
/// Other available API versions: 2021-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolPrincipalAssignmentResult> getKustoPoolPrincipalAssignment(
  GetKustoPoolPrincipalAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolPrincipalAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoPoolPrincipalAssignmentResult.fromMap(result);
}

pulumi.Output<GetKustoPoolPrincipalAssignmentResult> getKustoPoolPrincipalAssignmentOutput(
  GetKustoPoolPrincipalAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getKustoPoolPrincipalAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoPoolPrincipalAssignmentResult.fromMap);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets a privateLinkHub
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_private_link_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkHubResult> getPrivateLinkHub(
  GetPrivateLinkHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getPrivateLinkHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkHubResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkHubResult> getPrivateLinkHubOutput(
  GetPrivateLinkHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getPrivateLinkHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkHubResult.fromMap);
}

/// Returns a database.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_read_only_following_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReadOnlyFollowingDatabaseResult> getReadOnlyFollowingDatabase(
  GetReadOnlyFollowingDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getReadOnlyFollowingDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReadOnlyFollowingDatabaseResult.fromMap(result);
}

pulumi.Output<GetReadOnlyFollowingDatabaseResult> getReadOnlyFollowingDatabaseOutput(
  GetReadOnlyFollowingDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getReadOnlyFollowingDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReadOnlyFollowingDatabaseResult.fromMap);
}

/// Returns a database.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_read_write_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReadWriteDatabaseResult> getReadWriteDatabase(
  GetReadWriteDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getReadWriteDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReadWriteDatabaseResult.fromMap(result);
}

pulumi.Output<GetReadWriteDatabaseResult> getReadWriteDatabaseOutput(
  GetReadWriteDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getReadWriteDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReadWriteDatabaseResult.fromMap);
}

/// Get SQL pool properties
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolResult> getSqlPool(
  GetSqlPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolResult.fromMap(result);
}

pulumi.Output<GetSqlPoolResult> getSqlPoolOutput(
  GetSqlPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolResult.fromMap);
}

/// Gets the sensitivity label of a given column
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_sensitivity_label_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolSensitivityLabelResult> getSqlPoolSensitivityLabel(
  GetSqlPoolSensitivityLabelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolSensitivityLabel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolSensitivityLabelResult.fromMap(result);
}

pulumi.Output<GetSqlPoolSensitivityLabelResult> getSqlPoolSensitivityLabelOutput(
  GetSqlPoolSensitivityLabelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolSensitivityLabel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolSensitivityLabelResult.fromMap);
}

/// Get a SQL pool's transparent data encryption configuration.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_transparent_data_encryption_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolTransparentDataEncryptionResult> getSqlPoolTransparentDataEncryption(
  GetSqlPoolTransparentDataEncryptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolTransparentDataEncryption',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolTransparentDataEncryptionResult.fromMap(result);
}

pulumi.Output<GetSqlPoolTransparentDataEncryptionResult> getSqlPoolTransparentDataEncryptionOutput(
  GetSqlPoolTransparentDataEncryptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolTransparentDataEncryption',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolTransparentDataEncryptionResult.fromMap);
}

/// Gets the Sql pool's vulnerability assessment.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolVulnerabilityAssessmentResult> getSqlPoolVulnerabilityAssessment(
  GetSqlPoolVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolVulnerabilityAssessmentResult.fromMap(result);
}

pulumi.Output<GetSqlPoolVulnerabilityAssessmentResult> getSqlPoolVulnerabilityAssessmentOutput(
  GetSqlPoolVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolVulnerabilityAssessment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolVulnerabilityAssessmentResult.fromMap);
}

/// Gets a SqlPool's vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolVulnerabilityAssessmentRuleBaselineResult> getSqlPoolVulnerabilityAssessmentRuleBaseline(
  GetSqlPoolVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolVulnerabilityAssessmentRuleBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolVulnerabilityAssessmentRuleBaselineResult.fromMap(result);
}

pulumi.Output<GetSqlPoolVulnerabilityAssessmentRuleBaselineResult> getSqlPoolVulnerabilityAssessmentRuleBaselineOutput(
  GetSqlPoolVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolVulnerabilityAssessmentRuleBaseline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolVulnerabilityAssessmentRuleBaselineResult.fromMap);
}

/// Get a workload classifier of Sql pool's workload group.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_workload_classifier_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolWorkloadClassifierResult> getSqlPoolWorkloadClassifier(
  GetSqlPoolWorkloadClassifierArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolWorkloadClassifier',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolWorkloadClassifierResult.fromMap(result);
}

pulumi.Output<GetSqlPoolWorkloadClassifierResult> getSqlPoolWorkloadClassifierOutput(
  GetSqlPoolWorkloadClassifierArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolWorkloadClassifier',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolWorkloadClassifierResult.fromMap);
}

/// Get a Sql pool's workload group.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_workload_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolWorkloadGroupResult> getSqlPoolWorkloadGroup(
  GetSqlPoolWorkloadGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolWorkloadGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlPoolWorkloadGroupResult.fromMap(result);
}

pulumi.Output<GetSqlPoolWorkloadGroupResult> getSqlPoolWorkloadGroupOutput(
  GetSqlPoolWorkloadGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getSqlPoolWorkloadGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlPoolWorkloadGroupResult.fromMap);
}

/// Gets a workspace
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspace',
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
    'azure-native:synapse:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Gets a workspace active directory admin
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_aad_admin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceAadAdminResult> getWorkspaceAadAdmin(
  GetWorkspaceAadAdminArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceAadAdmin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceAadAdminResult.fromMap(result);
}

pulumi.Output<GetWorkspaceAadAdminResult> getWorkspaceAadAdminOutput(
  GetWorkspaceAadAdminArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceAadAdmin',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceAadAdminResult.fromMap);
}

/// Get workspace managed sql server's vulnerability assessment.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_managed_sql_server_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult> getWorkspaceManagedSqlServerVulnerabilityAssessment(
  GetWorkspaceManagedSqlServerVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceManagedSqlServerVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult.fromMap(result);
}

pulumi.Output<GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult> getWorkspaceManagedSqlServerVulnerabilityAssessmentOutput(
  GetWorkspaceManagedSqlServerVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceManagedSqlServerVulnerabilityAssessment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult.fromMap);
}

/// Gets a workspace SQL active directory admin
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_sql_aad_admin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceSqlAadAdminResult> getWorkspaceSqlAadAdmin(
  GetWorkspaceSqlAadAdminArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceSqlAadAdmin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceSqlAadAdminResult.fromMap(result);
}

pulumi.Output<GetWorkspaceSqlAadAdminResult> getWorkspaceSqlAadAdminOutput(
  GetWorkspaceSqlAadAdminArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceSqlAadAdmin',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceSqlAadAdminResult.fromMap);
}

/// List authentication keys in an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_list_integration_runtime_auth_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationRuntimeAuthKeyResult> listIntegrationRuntimeAuthKey(
  ListIntegrationRuntimeAuthKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:listIntegrationRuntimeAuthKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationRuntimeAuthKeyResult.fromMap(result);
}

pulumi.Output<ListIntegrationRuntimeAuthKeyResult> listIntegrationRuntimeAuthKeyOutput(
  ListIntegrationRuntimeAuthKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:listIntegrationRuntimeAuthKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIntegrationRuntimeAuthKeyResult.fromMap);
}

/// Returns a list of databases that are owned by this Kusto Pool and were followed by another Kusto Pool.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_list_kusto_pool_follower_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<ListKustoPoolFollowerDatabasesResult> listKustoPoolFollowerDatabases(
  ListKustoPoolFollowerDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:listKustoPoolFollowerDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListKustoPoolFollowerDatabasesResult.fromMap(result);
}

pulumi.Output<ListKustoPoolFollowerDatabasesResult> listKustoPoolFollowerDatabasesOutput(
  ListKustoPoolFollowerDatabasesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:listKustoPoolFollowerDatabases',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListKustoPoolFollowerDatabasesResult.fromMap);
}

/// Returns a list of language extensions that can run within KQL queries.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_list_kusto_pool_language_extensions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListKustoPoolLanguageExtensionsResult> listKustoPoolLanguageExtensions(
  ListKustoPoolLanguageExtensionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:listKustoPoolLanguageExtensions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListKustoPoolLanguageExtensionsResult.fromMap(result);
}

pulumi.Output<ListKustoPoolLanguageExtensionsResult> listKustoPoolLanguageExtensionsOutput(
  ListKustoPoolLanguageExtensionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:synapse:listKustoPoolLanguageExtensions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListKustoPoolLanguageExtensionsResult.fromMap);
}
