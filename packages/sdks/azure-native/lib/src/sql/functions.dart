import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_long_term_retention_policy_args.dart';
import 'get_backup_long_term_retention_policy_result.dart';
import 'get_backup_short_term_retention_policy_args.dart';
import 'get_backup_short_term_retention_policy_result.dart';
import 'get_data_masking_policy_args.dart';
import 'get_data_masking_policy_result.dart';
import 'get_database_advisor_args.dart';
import 'get_database_advisor_result.dart';
import 'get_database_args.dart';
import 'get_database_blob_auditing_policy_args.dart';
import 'get_database_blob_auditing_policy_result.dart';
import 'get_database_result.dart';
import 'get_database_security_alert_policy_args.dart';
import 'get_database_security_alert_policy_result.dart';
import 'get_database_sql_vulnerability_assessment_rule_baseline_args.dart';
import 'get_database_sql_vulnerability_assessment_rule_baseline_result.dart';
import 'get_database_threat_detection_policy_args.dart';
import 'get_database_threat_detection_policy_result.dart';
import 'get_database_vulnerability_assessment_args.dart';
import 'get_database_vulnerability_assessment_result.dart';
import 'get_database_vulnerability_assessment_rule_baseline_args.dart';
import 'get_database_vulnerability_assessment_rule_baseline_result.dart';
import 'get_disaster_recovery_configuration_args.dart';
import 'get_disaster_recovery_configuration_result.dart';
import 'get_distributed_availability_group_args.dart';
import 'get_distributed_availability_group_result.dart';
import 'get_elastic_pool_args.dart';
import 'get_elastic_pool_result.dart';
import 'get_encryption_protector_args.dart';
import 'get_encryption_protector_result.dart';
import 'get_extended_database_blob_auditing_policy_args.dart';
import 'get_extended_database_blob_auditing_policy_result.dart';
import 'get_extended_server_blob_auditing_policy_args.dart';
import 'get_extended_server_blob_auditing_policy_result.dart';
import 'get_failover_group_args.dart';
import 'get_failover_group_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_geo_backup_policy_args.dart';
import 'get_geo_backup_policy_result.dart';
import 'get_instance_failover_group_args.dart';
import 'get_instance_failover_group_result.dart';
import 'get_instance_pool_args.dart';
import 'get_instance_pool_result.dart';
import 'get_ipv6_firewall_rule_args.dart';
import 'get_ipv6_firewall_rule_result.dart';
import 'get_job_agent_args.dart';
import 'get_job_agent_result.dart';
import 'get_job_args.dart';
import 'get_job_credential_args.dart';
import 'get_job_credential_result.dart';
import 'get_job_private_endpoint_args.dart';
import 'get_job_private_endpoint_result.dart';
import 'get_job_result.dart';
import 'get_job_step_args.dart';
import 'get_job_step_result.dart';
import 'get_job_target_group_args.dart';
import 'get_job_target_group_result.dart';
import 'get_long_term_retention_policy_args.dart';
import 'get_long_term_retention_policy_result.dart';
import 'get_managed_database_args.dart';
import 'get_managed_database_result.dart';
import 'get_managed_database_sensitivity_label_args.dart';
import 'get_managed_database_sensitivity_label_result.dart';
import 'get_managed_database_vulnerability_assessment_args.dart';
import 'get_managed_database_vulnerability_assessment_result.dart';
import 'get_managed_database_vulnerability_assessment_rule_baseline_args.dart';
import 'get_managed_database_vulnerability_assessment_rule_baseline_result.dart';
import 'get_managed_instance_administrator_args.dart';
import 'get_managed_instance_administrator_result.dart';
import 'get_managed_instance_args.dart';
import 'get_managed_instance_azure_adonly_authentication_args.dart';
import 'get_managed_instance_azure_adonly_authentication_result.dart';
import 'get_managed_instance_key_args.dart';
import 'get_managed_instance_key_result.dart';
import 'get_managed_instance_long_term_retention_policy_args.dart';
import 'get_managed_instance_long_term_retention_policy_result.dart';
import 'get_managed_instance_private_endpoint_connection_args.dart';
import 'get_managed_instance_private_endpoint_connection_result.dart';
import 'get_managed_instance_result.dart';
import 'get_managed_instance_vulnerability_assessment_args.dart';
import 'get_managed_instance_vulnerability_assessment_result.dart';
import 'get_managed_server_dns_alias_args.dart';
import 'get_managed_server_dns_alias_result.dart';
import 'get_outbound_firewall_rule_args.dart';
import 'get_outbound_firewall_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_replication_link_args.dart';
import 'get_replication_link_result.dart';
import 'get_sensitivity_label_args.dart';
import 'get_sensitivity_label_result.dart';
import 'get_server_advisor_args.dart';
import 'get_server_advisor_result.dart';
import 'get_server_args.dart';
import 'get_server_azure_adadministrator_args.dart';
import 'get_server_azure_adadministrator_result.dart';
import 'get_server_azure_adonly_authentication_args.dart';
import 'get_server_azure_adonly_authentication_result.dart';
import 'get_server_blob_auditing_policy_args.dart';
import 'get_server_blob_auditing_policy_result.dart';
import 'get_server_communication_link_args.dart';
import 'get_server_communication_link_result.dart';
import 'get_server_dns_alias_args.dart';
import 'get_server_dns_alias_result.dart';
import 'get_server_key_args.dart';
import 'get_server_key_result.dart';
import 'get_server_result.dart';
import 'get_server_security_alert_policy_args.dart';
import 'get_server_security_alert_policy_result.dart';
import 'get_server_trust_certificate_args.dart';
import 'get_server_trust_certificate_result.dart';
import 'get_server_trust_group_args.dart';
import 'get_server_trust_group_result.dart';
import 'get_server_vulnerability_assessment_args.dart';
import 'get_server_vulnerability_assessment_result.dart';
import 'get_sql_vulnerability_assessment_rule_baseline_args.dart';
import 'get_sql_vulnerability_assessment_rule_baseline_result.dart';
import 'get_sql_vulnerability_assessments_setting_args.dart';
import 'get_sql_vulnerability_assessments_setting_result.dart';
import 'get_start_stop_managed_instance_schedule_args.dart';
import 'get_start_stop_managed_instance_schedule_result.dart';
import 'get_sync_agent_args.dart';
import 'get_sync_agent_result.dart';
import 'get_sync_group_args.dart';
import 'get_sync_group_result.dart';
import 'get_sync_member_args.dart';
import 'get_sync_member_result.dart';
import 'get_transparent_data_encryption_args.dart';
import 'get_transparent_data_encryption_result.dart';
import 'get_virtual_cluster_args.dart';
import 'get_virtual_cluster_result.dart';
import 'get_virtual_network_rule_args.dart';
import 'get_virtual_network_rule_result.dart';
import 'get_workload_classifier_args.dart';
import 'get_workload_classifier_result.dart';
import 'get_workload_group_args.dart';
import 'get_workload_group_result.dart';

/// Gets a database's long term retention policy.
///
/// Uses Azure REST API version 2017-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_backup_long_term_retention_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupLongTermRetentionPolicyResult> getBackupLongTermRetentionPolicy(
  GetBackupLongTermRetentionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getBackupLongTermRetentionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupLongTermRetentionPolicyResult.fromMap(result);
}

/// Gets a database's short term retention policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_backup_short_term_retention_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupShortTermRetentionPolicyResult>
getBackupShortTermRetentionPolicy(
  GetBackupShortTermRetentionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getBackupShortTermRetentionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupShortTermRetentionPolicyResult.fromMap(result);
}

/// Gets the database data masking policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2021-11-01, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_data_masking_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataMaskingPolicyResult> getDataMaskingPolicy(
  GetDataMaskingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDataMaskingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataMaskingPolicyResult.fromMap(result);
}

/// Gets a database.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2017-03-01-preview, 2017-10-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets a database advisor.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_advisor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseAdvisorResult> getDatabaseAdvisor(
  GetDatabaseAdvisorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseAdvisor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseAdvisorResult.fromMap(result);
}

/// Gets a database's blob auditing policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_blob_auditing_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseBlobAuditingPolicyResult> getDatabaseBlobAuditingPolicy(
  GetDatabaseBlobAuditingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseBlobAuditingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseBlobAuditingPolicyResult.fromMap(result);
}

/// Gets a database's security alert policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_security_alert_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseSecurityAlertPolicyResult> getDatabaseSecurityAlertPolicy(
  GetDatabaseSecurityAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseSecurityAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSecurityAlertPolicyResult.fromMap(result);
}

/// Gets a database's sql vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_sql_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseSqlVulnerabilityAssessmentRuleBaselineResult>
getDatabaseSqlVulnerabilityAssessmentRuleBaseline(
  GetDatabaseSqlVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseSqlVulnerabilityAssessmentRuleBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSqlVulnerabilityAssessmentRuleBaselineResult.fromMap(
    result,
  );
}

/// Gets a database's threat detection policy.
///
/// Uses Azure REST API version 2014-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_threat_detection_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseThreatDetectionPolicyResult> getDatabaseThreatDetectionPolicy(
  GetDatabaseThreatDetectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseThreatDetectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseThreatDetectionPolicyResult.fromMap(result);
}

/// Gets the database's vulnerability assessment.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseVulnerabilityAssessmentResult>
getDatabaseVulnerabilityAssessment(
  GetDatabaseVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseVulnerabilityAssessmentResult.fromMap(result);
}

/// Gets a database's vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseVulnerabilityAssessmentRuleBaselineResult>
getDatabaseVulnerabilityAssessmentRuleBaseline(
  GetDatabaseVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDatabaseVulnerabilityAssessmentRuleBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseVulnerabilityAssessmentRuleBaselineResult.fromMap(result);
}

/// Gets a disaster recovery configuration.
///
/// Uses Azure REST API version 2014-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_disaster_recovery_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDisasterRecoveryConfigurationResult> getDisasterRecoveryConfiguration(
  GetDisasterRecoveryConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDisasterRecoveryConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDisasterRecoveryConfigurationResult.fromMap(result);
}

/// Gets a distributed availability group info.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_distributed_availability_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDistributedAvailabilityGroupResult> getDistributedAvailabilityGroup(
  GetDistributedAvailabilityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getDistributedAvailabilityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributedAvailabilityGroupResult.fromMap(result);
}

/// Gets an elastic pool.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_elastic_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticPoolResult> getElasticPool(
  GetElasticPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getElasticPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticPoolResult.fromMap(result);
}

/// Gets a server encryption protector.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_encryption_protector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionProtectorResult> getEncryptionProtector(
  GetEncryptionProtectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getEncryptionProtector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionProtectorResult.fromMap(result);
}

/// Gets an extended database's blob auditing policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_extended_database_blob_auditing_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtendedDatabaseBlobAuditingPolicyResult>
getExtendedDatabaseBlobAuditingPolicy(
  GetExtendedDatabaseBlobAuditingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getExtendedDatabaseBlobAuditingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtendedDatabaseBlobAuditingPolicyResult.fromMap(result);
}

/// Gets an extended server's blob auditing policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_extended_server_blob_auditing_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtendedServerBlobAuditingPolicyResult>
getExtendedServerBlobAuditingPolicy(
  GetExtendedServerBlobAuditingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getExtendedServerBlobAuditingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtendedServerBlobAuditingPolicyResult.fromMap(result);
}

/// Gets a failover group.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_failover_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFailoverGroupResult> getFailoverGroup(
  GetFailoverGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getFailoverGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFailoverGroupResult.fromMap(result);
}

/// Gets a firewall rule.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Gets a Geo backup policy for the given database resource.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2021-11-01, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_geo_backup_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGeoBackupPolicyResult> getGeoBackupPolicy(
  GetGeoBackupPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getGeoBackupPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGeoBackupPolicyResult.fromMap(result);
}

/// Gets an IPv6 firewall rule.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_ipv6_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIPv6FirewallRuleResult> getIPv6FirewallRule(
  GetIPv6FirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getIPv6FirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIPv6FirewallRuleResult.fromMap(result);
}

/// Gets a failover group.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_instance_failover_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceFailoverGroupResult> getInstanceFailoverGroup(
  GetInstanceFailoverGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getInstanceFailoverGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFailoverGroupResult.fromMap(result);
}

/// Gets an instance pool.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_instance_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancePoolResult> getInstancePool(
  GetInstancePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getInstancePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancePoolResult.fromMap(result);
}

/// Gets a job.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Gets a job agent.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobAgentResult> getJobAgent(
  GetJobAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJobAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobAgentResult.fromMap(result);
}

/// Gets a jobs credential.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobCredentialResult> getJobCredential(
  GetJobCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJobCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobCredentialResult.fromMap(result);
}

/// Gets a private endpoint.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobPrivateEndpointResult> getJobPrivateEndpoint(
  GetJobPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJobPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobPrivateEndpointResult.fromMap(result);
}

/// Gets a job step in a job's current version.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_step_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobStepResult> getJobStep(
  GetJobStepArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJobStep',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobStepResult.fromMap(result);
}

/// Gets a target group.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_job_target_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobTargetGroupResult> getJobTargetGroup(
  GetJobTargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getJobTargetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobTargetGroupResult.fromMap(result);
}

/// Gets a database's long term retention policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_long_term_retention_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLongTermRetentionPolicyResult> getLongTermRetentionPolicy(
  GetLongTermRetentionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getLongTermRetentionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLongTermRetentionPolicyResult.fromMap(result);
}

/// Gets a managed database.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2018-06-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDatabaseResult> getManagedDatabase(
  GetManagedDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDatabaseResult.fromMap(result);
}

/// Gets the sensitivity label of a given column
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_database_sensitivity_label_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDatabaseSensitivityLabelResult>
getManagedDatabaseSensitivityLabel(
  GetManagedDatabaseSensitivityLabelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedDatabaseSensitivityLabel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDatabaseSensitivityLabelResult.fromMap(result);
}

/// Gets the database's vulnerability assessment.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_database_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDatabaseVulnerabilityAssessmentResult>
getManagedDatabaseVulnerabilityAssessment(
  GetManagedDatabaseVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedDatabaseVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDatabaseVulnerabilityAssessmentResult.fromMap(result);
}

/// Gets a database's vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_database_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedDatabaseVulnerabilityAssessmentRuleBaselineResult>
getManagedDatabaseVulnerabilityAssessmentRuleBaseline(
  GetManagedDatabaseVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedDatabaseVulnerabilityAssessmentRuleBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedDatabaseVulnerabilityAssessmentRuleBaselineResult.fromMap(
    result,
  );
}

/// Gets a managed instance.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceResult> getManagedInstance(
  GetManagedInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceResult.fromMap(result);
}

/// Gets a managed instance administrator.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_administrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceAdministratorResult> getManagedInstanceAdministrator(
  GetManagedInstanceAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstanceAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceAdministratorResult.fromMap(result);
}

/// Gets a specific Azure Active Directory only authentication property.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_azure_adonly_authentication_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceAzureADOnlyAuthenticationResult>
getManagedInstanceAzureADOnlyAuthentication(
  GetManagedInstanceAzureADOnlyAuthenticationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstanceAzureADOnlyAuthentication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceAzureADOnlyAuthenticationResult.fromMap(result);
}

/// Gets a managed instance key.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceKeyResult> getManagedInstanceKey(
  GetManagedInstanceKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstanceKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceKeyResult.fromMap(result);
}

/// Gets a managed database's long term retention policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_long_term_retention_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceLongTermRetentionPolicyResult>
getManagedInstanceLongTermRetentionPolicy(
  GetManagedInstanceLongTermRetentionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstanceLongTermRetentionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceLongTermRetentionPolicyResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstancePrivateEndpointConnectionResult>
getManagedInstancePrivateEndpointConnection(
  GetManagedInstancePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstancePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstancePrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the managed instance's vulnerability assessment.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_instance_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedInstanceVulnerabilityAssessmentResult>
getManagedInstanceVulnerabilityAssessment(
  GetManagedInstanceVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedInstanceVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedInstanceVulnerabilityAssessmentResult.fromMap(result);
}

/// Gets a server DNS alias.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_managed_server_dns_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedServerDnsAliasResult> getManagedServerDnsAlias(
  GetManagedServerDnsAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getManagedServerDnsAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedServerDnsAliasResult.fromMap(result);
}

/// Gets an outbound firewall rule.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_outbound_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutboundFirewallRuleResult> getOutboundFirewallRule(
  GetOutboundFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getOutboundFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutboundFirewallRuleResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets a replication link.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_replication_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationLinkResult> getReplicationLink(
  GetReplicationLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getReplicationLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationLinkResult.fromMap(result);
}

/// Gets the sensitivity label of a given column
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sensitivity_label_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSensitivityLabelResult> getSensitivityLabel(
  GetSensitivityLabelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSensitivityLabel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSensitivityLabelResult.fromMap(result);
}

/// Gets a server.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}

/// Gets a server advisor.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_advisor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerAdvisorResult> getServerAdvisor(
  GetServerAdvisorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerAdvisor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerAdvisorResult.fromMap(result);
}

/// Gets a Azure Active Directory administrator.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2018-06-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_azure_adadministrator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerAzureADAdministratorResult> getServerAzureADAdministrator(
  GetServerAzureADAdministratorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerAzureADAdministrator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerAzureADAdministratorResult.fromMap(result);
}

/// Gets a specific Azure Active Directory only authentication property.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_azure_adonly_authentication_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerAzureADOnlyAuthenticationResult>
getServerAzureADOnlyAuthentication(
  GetServerAzureADOnlyAuthenticationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerAzureADOnlyAuthentication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerAzureADOnlyAuthenticationResult.fromMap(result);
}

/// Gets a server's blob auditing policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_blob_auditing_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerBlobAuditingPolicyResult> getServerBlobAuditingPolicy(
  GetServerBlobAuditingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerBlobAuditingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerBlobAuditingPolicyResult.fromMap(result);
}

/// Returns a server communication link.
///
/// Uses Azure REST API version 2014-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_communication_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCommunicationLinkResult> getServerCommunicationLink(
  GetServerCommunicationLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerCommunicationLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCommunicationLinkResult.fromMap(result);
}

/// Gets a server DNS alias.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_dns_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerDnsAliasResult> getServerDnsAlias(
  GetServerDnsAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerDnsAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerDnsAliasResult.fromMap(result);
}

/// Gets a server key.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerKeyResult> getServerKey(
  GetServerKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerKeyResult.fromMap(result);
}

/// Get a server's security alert policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_security_alert_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerSecurityAlertPolicyResult> getServerSecurityAlertPolicy(
  GetServerSecurityAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerSecurityAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerSecurityAlertPolicyResult.fromMap(result);
}

/// Gets a server trust certificate that was uploaded from SQL Server to SQL Managed Instance.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_trust_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTrustCertificateResult> getServerTrustCertificate(
  GetServerTrustCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerTrustCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTrustCertificateResult.fromMap(result);
}

/// Gets a server trust group.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_trust_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTrustGroupResult> getServerTrustGroup(
  GetServerTrustGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerTrustGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTrustGroupResult.fromMap(result);
}

/// Gets the server's vulnerability assessment.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_server_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerVulnerabilityAssessmentResult> getServerVulnerabilityAssessment(
  GetServerVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getServerVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerVulnerabilityAssessmentResult.fromMap(result);
}

/// Gets a system database's sql vulnerability assessment rule baseline.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sql_vulnerability_assessment_rule_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlVulnerabilityAssessmentRuleBaselineResult>
getSqlVulnerabilityAssessmentRuleBaseline(
  GetSqlVulnerabilityAssessmentRuleBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSqlVulnerabilityAssessmentRuleBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlVulnerabilityAssessmentRuleBaselineResult.fromMap(result);
}

/// Gets SQL Vulnerability Assessment policy.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sql_vulnerability_assessments_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlVulnerabilityAssessmentsSettingResult>
getSqlVulnerabilityAssessmentsSetting(
  GetSqlVulnerabilityAssessmentsSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSqlVulnerabilityAssessmentsSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlVulnerabilityAssessmentsSettingResult.fromMap(result);
}

/// Gets the managed instance's Start/Stop schedule.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_start_stop_managed_instance_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStartStopManagedInstanceScheduleResult>
getStartStopManagedInstanceSchedule(
  GetStartStopManagedInstanceScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getStartStopManagedInstanceSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStartStopManagedInstanceScheduleResult.fromMap(result);
}

/// Gets a sync agent.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sync_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncAgentResult> getSyncAgent(
  GetSyncAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSyncAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncAgentResult.fromMap(result);
}

/// Gets a sync group.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sync_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncGroupResult> getSyncGroup(
  GetSyncGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSyncGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncGroupResult.fromMap(result);
}

/// Gets a sync member.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_sync_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncMemberResult> getSyncMember(
  GetSyncMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getSyncMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncMemberResult.fromMap(result);
}

/// Gets a logical database's transparent data encryption.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2014-04-01, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_transparent_data_encryption_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransparentDataEncryptionResult> getTransparentDataEncryption(
  GetTransparentDataEncryptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getTransparentDataEncryption',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransparentDataEncryptionResult.fromMap(result);
}

/// Gets a virtual cluster.
///
/// Uses Azure REST API version 2024-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_virtual_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualClusterResult> getVirtualCluster(
  GetVirtualClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getVirtualCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualClusterResult.fromMap(result);
}

/// Gets a virtual network rule.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkRuleResult> getVirtualNetworkRule(
  GetVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkRuleResult.fromMap(result);
}

/// Gets a workload classifier
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_workload_classifier_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadClassifierResult> getWorkloadClassifier(
  GetWorkloadClassifierArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getWorkloadClassifier',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadClassifierResult.fromMap(result);
}

/// Gets a workload group
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_workload_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadGroupResult> getWorkloadGroup(
  GetWorkloadGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sql:getWorkloadGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadGroupResult.fromMap(result);
}
