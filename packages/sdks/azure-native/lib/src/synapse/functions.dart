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

/// Get connection info for an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_connection_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeConnectionInfoResult>
getIntegrationRuntimeConnectionInfo(
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

/// Get object metadata from an integration runtime
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_integration_runtime_object_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeObjectMetadatumResult>
getIntegrationRuntimeObjectMetadatum(
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

/// Returns an attached database configuration.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_attached_database_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolAttachedDatabaseConfigurationResult>
getKustoPoolAttachedDatabaseConfiguration(
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

/// Gets a Kusto pool database principalAssignment.
///
/// Uses Azure REST API version 2021-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_kusto_pool_database_principal_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoPoolDatabasePrincipalAssignmentResult>
getKustoPoolDatabasePrincipalAssignment(
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

/// Get a SQL pool's transparent data encryption configuration.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_transparent_data_encryption_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolTransparentDataEncryptionResult>
getSqlPoolTransparentDataEncryption(
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

/// Gets the Sql pool's vulnerability assessment.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolVulnerabilityAssessmentResult>
getSqlPoolVulnerabilityAssessment(
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

/// Gets a SqlPool's vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_sql_pool_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlPoolVulnerabilityAssessmentRuleBaselineResult>
getSqlPoolVulnerabilityAssessmentRuleBaseline(
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

/// Get workspace managed sql server's vulnerability assessment.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_managed_sql_server_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult>
getWorkspaceManagedSqlServerVulnerabilityAssessment(
  GetWorkspaceManagedSqlServerVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:synapse:getWorkspaceManagedSqlServerVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagedSqlServerVulnerabilityAssessmentResult.fromMap(
    result,
  );
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
