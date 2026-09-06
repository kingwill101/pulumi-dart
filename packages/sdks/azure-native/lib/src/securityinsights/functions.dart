import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aaddata_connector_args.dart';
import 'get_aaddata_connector_result.dart';
import 'get_aatpdata_connector_args.dart';
import 'get_aatpdata_connector_result.dart';
import 'get_action_args.dart';
import 'get_action_result.dart';
import 'get_activity_custom_entity_query_args.dart';
import 'get_activity_custom_entity_query_result.dart';
import 'get_anomalies_args.dart';
import 'get_anomalies_result.dart';
import 'get_anomaly_security_mlanalytics_settings_args.dart';
import 'get_anomaly_security_mlanalytics_settings_result.dart';
import 'get_ascdata_connector_args.dart';
import 'get_ascdata_connector_result.dart';
import 'get_automation_rule_args.dart';
import 'get_automation_rule_result.dart';
import 'get_aws_cloud_trail_data_connector_args.dart';
import 'get_aws_cloud_trail_data_connector_result.dart';
import 'get_bookmark_args.dart';
import 'get_bookmark_relation_args.dart';
import 'get_bookmark_relation_result.dart';
import 'get_bookmark_result.dart';
import 'get_content_package_args.dart';
import 'get_content_package_result.dart';
import 'get_content_template_args.dart';
import 'get_content_template_result.dart';
import 'get_customizable_connector_definition_args.dart';
import 'get_customizable_connector_definition_result.dart';
import 'get_entities_get_timeline_args.dart';
import 'get_entities_get_timeline_result.dart';
import 'get_entity_analytics_args.dart';
import 'get_entity_analytics_result.dart';
import 'get_entity_insights_args.dart';
import 'get_entity_insights_result.dart';
import 'get_eyes_on_args.dart';
import 'get_eyes_on_result.dart';
import 'get_file_import_args.dart';
import 'get_file_import_result.dart';
import 'get_fusion_alert_rule_args.dart';
import 'get_fusion_alert_rule_result.dart';
import 'get_hunt_args.dart';
import 'get_hunt_comment_args.dart';
import 'get_hunt_comment_result.dart';
import 'get_hunt_relation_args.dart';
import 'get_hunt_relation_result.dart';
import 'get_hunt_result.dart';
import 'get_incident_args.dart';
import 'get_incident_comment_args.dart';
import 'get_incident_comment_result.dart';
import 'get_incident_relation_args.dart';
import 'get_incident_relation_result.dart';
import 'get_incident_result.dart';
import 'get_incident_task_args.dart';
import 'get_incident_task_result.dart';
import 'get_mcasdata_connector_args.dart';
import 'get_mcasdata_connector_result.dart';
import 'get_mdatpdata_connector_args.dart';
import 'get_mdatpdata_connector_result.dart';
import 'get_metadata_args.dart';
import 'get_metadata_result.dart';
import 'get_microsoft_security_incident_creation_alert_rule_args.dart';
import 'get_microsoft_security_incident_creation_alert_rule_result.dart';
import 'get_mstidata_connector_args.dart';
import 'get_mstidata_connector_result.dart';
import 'get_office_data_connector_args.dart';
import 'get_office_data_connector_result.dart';
import 'get_premium_microsoft_defender_for_threat_intelligence_args.dart';
import 'get_premium_microsoft_defender_for_threat_intelligence_result.dart';
import 'get_rest_api_poller_data_connector_args.dart';
import 'get_rest_api_poller_data_connector_result.dart';
import 'get_scheduled_alert_rule_args.dart';
import 'get_scheduled_alert_rule_result.dart';
import 'get_sentinel_onboarding_state_args.dart';
import 'get_sentinel_onboarding_state_result.dart';
import 'get_source_control_args.dart';
import 'get_source_control_result.dart';
import 'get_threat_intelligence_indicator_args.dart';
import 'get_threat_intelligence_indicator_result.dart';
import 'get_tidata_connector_args.dart';
import 'get_tidata_connector_result.dart';
import 'get_ueba_args.dart';
import 'get_ueba_result.dart';
import 'get_watchlist_args.dart';
import 'get_watchlist_item_args.dart';
import 'get_watchlist_item_result.dart';
import 'get_watchlist_result.dart';
import 'get_workspace_manager_assignment_args.dart';
import 'get_workspace_manager_assignment_result.dart';
import 'get_workspace_manager_configuration_args.dart';
import 'get_workspace_manager_configuration_result.dart';
import 'get_workspace_manager_group_args.dart';
import 'get_workspace_manager_group_result.dart';
import 'get_workspace_manager_member_args.dart';
import 'get_workspace_manager_member_result.dart';
import 'list_geodata_by_ip_args.dart';
import 'list_geodata_by_ip_result.dart';
import 'list_source_control_repositories_args.dart';
import 'list_source_control_repositories_result.dart';
import 'list_whois_by_domain_args.dart';
import 'list_whois_by_domain_result.dart';

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_aaddata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAADDataConnectorResult> getAADDataConnector(
  GetAADDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAADDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAADDataConnectorResult.fromMap(result);
}

pulumi.Output<GetAADDataConnectorResult> getAADDataConnectorOutput(
  GetAADDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAADDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAADDataConnectorResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_aatpdata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAATPDataConnectorResult> getAATPDataConnector(
  GetAATPDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAATPDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAATPDataConnectorResult.fromMap(result);
}

pulumi.Output<GetAATPDataConnectorResult> getAATPDataConnectorOutput(
  GetAATPDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAATPDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAATPDataConnectorResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_ascdata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetASCDataConnectorResult> getASCDataConnector(
  GetASCDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getASCDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetASCDataConnectorResult.fromMap(result);
}

pulumi.Output<GetASCDataConnectorResult> getASCDataConnectorOutput(
  GetASCDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getASCDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetASCDataConnectorResult.fromMap);
}

/// Gets the action of alert rule.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActionResult> getAction(
  GetActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActionResult.fromMap(result);
}

pulumi.Output<GetActionResult> getActionOutput(
  GetActionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActionResult.fromMap);
}

/// Gets an entity query.
///
/// Uses Azure REST API version 2025-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_activity_custom_entity_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActivityCustomEntityQueryResult> getActivityCustomEntityQuery(
  GetActivityCustomEntityQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getActivityCustomEntityQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActivityCustomEntityQueryResult.fromMap(result);
}

pulumi.Output<GetActivityCustomEntityQueryResult> getActivityCustomEntityQueryOutput(
  GetActivityCustomEntityQueryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getActivityCustomEntityQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActivityCustomEntityQueryResult.fromMap);
}

/// Gets a setting.
///
/// Uses Azure REST API version 2025-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_anomalies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnomaliesResult> getAnomalies(
  GetAnomaliesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAnomalies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnomaliesResult.fromMap(result);
}

pulumi.Output<GetAnomaliesResult> getAnomaliesOutput(
  GetAnomaliesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAnomalies',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnomaliesResult.fromMap);
}

/// Gets the Security ML Analytics Settings.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_anomaly_security_mlanalytics_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnomalySecurityMLAnalyticsSettingsResult> getAnomalySecurityMLAnalyticsSettings(
  GetAnomalySecurityMLAnalyticsSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAnomalySecurityMLAnalyticsSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnomalySecurityMLAnalyticsSettingsResult.fromMap(result);
}

pulumi.Output<GetAnomalySecurityMLAnalyticsSettingsResult> getAnomalySecurityMLAnalyticsSettingsOutput(
  GetAnomalySecurityMLAnalyticsSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAnomalySecurityMLAnalyticsSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnomalySecurityMLAnalyticsSettingsResult.fromMap);
}

/// Gets the automation rule.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_automation_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutomationRuleResult> getAutomationRule(
  GetAutomationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAutomationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutomationRuleResult.fromMap(result);
}

pulumi.Output<GetAutomationRuleResult> getAutomationRuleOutput(
  GetAutomationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAutomationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutomationRuleResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_aws_cloud_trail_data_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAwsCloudTrailDataConnectorResult> getAwsCloudTrailDataConnector(
  GetAwsCloudTrailDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getAwsCloudTrailDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAwsCloudTrailDataConnectorResult.fromMap(result);
}

pulumi.Output<GetAwsCloudTrailDataConnectorResult> getAwsCloudTrailDataConnectorOutput(
  GetAwsCloudTrailDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getAwsCloudTrailDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAwsCloudTrailDataConnectorResult.fromMap);
}

/// Gets a bookmark.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_bookmark_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBookmarkResult> getBookmark(
  GetBookmarkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getBookmark',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBookmarkResult.fromMap(result);
}

pulumi.Output<GetBookmarkResult> getBookmarkOutput(
  GetBookmarkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getBookmark',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBookmarkResult.fromMap);
}

/// Gets a bookmark relation.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_bookmark_relation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBookmarkRelationResult> getBookmarkRelation(
  GetBookmarkRelationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getBookmarkRelation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBookmarkRelationResult.fromMap(result);
}

pulumi.Output<GetBookmarkRelationResult> getBookmarkRelationOutput(
  GetBookmarkRelationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getBookmarkRelation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBookmarkRelationResult.fromMap);
}

/// Gets an installed packages by its id.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_content_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentPackageResult> getContentPackage(
  GetContentPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getContentPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentPackageResult.fromMap(result);
}

pulumi.Output<GetContentPackageResult> getContentPackageOutput(
  GetContentPackageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getContentPackage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentPackageResult.fromMap);
}

/// Gets a template byt its identifier.
/// Expandable properties:
/// - properties/mainTemplate
/// - properties/dependantTemplates
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_content_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContentTemplateResult> getContentTemplate(
  GetContentTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getContentTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContentTemplateResult.fromMap(result);
}

pulumi.Output<GetContentTemplateResult> getContentTemplateOutput(
  GetContentTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getContentTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContentTemplateResult.fromMap);
}

/// Gets a data connector definition.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_customizable_connector_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomizableConnectorDefinitionResult> getCustomizableConnectorDefinition(
  GetCustomizableConnectorDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getCustomizableConnectorDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomizableConnectorDefinitionResult.fromMap(result);
}

pulumi.Output<GetCustomizableConnectorDefinitionResult> getCustomizableConnectorDefinitionOutput(
  GetCustomizableConnectorDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getCustomizableConnectorDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomizableConnectorDefinitionResult.fromMap);
}

/// Timeline for an entity.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_entities_get_timeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntitiesGetTimelineResult> getEntitiesGetTimeline(
  GetEntitiesGetTimelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntitiesGetTimeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitiesGetTimelineResult.fromMap(result);
}

pulumi.Output<GetEntitiesGetTimelineResult> getEntitiesGetTimelineOutput(
  GetEntitiesGetTimelineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntitiesGetTimeline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntitiesGetTimelineResult.fromMap);
}

/// Gets a setting.
///
/// Uses Azure REST API version 2025-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_entity_analytics_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityAnalyticsResult> getEntityAnalytics(
  GetEntityAnalyticsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntityAnalytics',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityAnalyticsResult.fromMap(result);
}

pulumi.Output<GetEntityAnalyticsResult> getEntityAnalyticsOutput(
  GetEntityAnalyticsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntityAnalytics',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityAnalyticsResult.fromMap);
}

/// Execute Insights for an entity.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_entity_insights_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityInsightsResult> getEntityInsights(
  GetEntityInsightsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntityInsights',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityInsightsResult.fromMap(result);
}

pulumi.Output<GetEntityInsightsResult> getEntityInsightsOutput(
  GetEntityInsightsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getEntityInsights',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityInsightsResult.fromMap);
}

/// Gets a setting.
///
/// Uses Azure REST API version 2025-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_eyes_on_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEyesOnResult> getEyesOn(
  GetEyesOnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getEyesOn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEyesOnResult.fromMap(result);
}

pulumi.Output<GetEyesOnResult> getEyesOnOutput(
  GetEyesOnArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getEyesOn',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEyesOnResult.fromMap);
}

/// Gets a file import.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_file_import_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileImportResult> getFileImport(
  GetFileImportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getFileImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileImportResult.fromMap(result);
}

pulumi.Output<GetFileImportResult> getFileImportOutput(
  GetFileImportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getFileImport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFileImportResult.fromMap);
}

/// Gets the alert rule.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_fusion_alert_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFusionAlertRuleResult> getFusionAlertRule(
  GetFusionAlertRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getFusionAlertRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFusionAlertRuleResult.fromMap(result);
}

pulumi.Output<GetFusionAlertRuleResult> getFusionAlertRuleOutput(
  GetFusionAlertRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getFusionAlertRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFusionAlertRuleResult.fromMap);
}

/// Gets a hunt, without relations and comments.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_hunt_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHuntResult> getHunt(
  GetHuntArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getHunt',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHuntResult.fromMap(result);
}

pulumi.Output<GetHuntResult> getHuntOutput(
  GetHuntArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getHunt',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHuntResult.fromMap);
}

/// Gets a hunt comment
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_hunt_comment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHuntCommentResult> getHuntComment(
  GetHuntCommentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getHuntComment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHuntCommentResult.fromMap(result);
}

pulumi.Output<GetHuntCommentResult> getHuntCommentOutput(
  GetHuntCommentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getHuntComment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHuntCommentResult.fromMap);
}

/// Gets a hunt relation
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_hunt_relation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHuntRelationResult> getHuntRelation(
  GetHuntRelationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getHuntRelation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHuntRelationResult.fromMap(result);
}

pulumi.Output<GetHuntRelationResult> getHuntRelationOutput(
  GetHuntRelationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getHuntRelation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHuntRelationResult.fromMap);
}

/// Gets a given incident.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_incident_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIncidentResult> getIncident(
  GetIncidentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncident',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIncidentResult.fromMap(result);
}

pulumi.Output<GetIncidentResult> getIncidentOutput(
  GetIncidentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncident',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIncidentResult.fromMap);
}

/// Gets a comment for a given incident.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_incident_comment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIncidentCommentResult> getIncidentComment(
  GetIncidentCommentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentComment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIncidentCommentResult.fromMap(result);
}

pulumi.Output<GetIncidentCommentResult> getIncidentCommentOutput(
  GetIncidentCommentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentComment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIncidentCommentResult.fromMap);
}

/// Gets a relation for a given incident.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_incident_relation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIncidentRelationResult> getIncidentRelation(
  GetIncidentRelationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentRelation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIncidentRelationResult.fromMap(result);
}

pulumi.Output<GetIncidentRelationResult> getIncidentRelationOutput(
  GetIncidentRelationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentRelation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIncidentRelationResult.fromMap);
}

/// Gets an incident task.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_incident_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIncidentTaskResult> getIncidentTask(
  GetIncidentTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIncidentTaskResult.fromMap(result);
}

pulumi.Output<GetIncidentTaskResult> getIncidentTaskOutput(
  GetIncidentTaskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getIncidentTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIncidentTaskResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_mcasdata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMCASDataConnectorResult> getMCASDataConnector(
  GetMCASDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getMCASDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMCASDataConnectorResult.fromMap(result);
}

pulumi.Output<GetMCASDataConnectorResult> getMCASDataConnectorOutput(
  GetMCASDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getMCASDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMCASDataConnectorResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_mdatpdata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMDATPDataConnectorResult> getMDATPDataConnector(
  GetMDATPDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getMDATPDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMDATPDataConnectorResult.fromMap(result);
}

pulumi.Output<GetMDATPDataConnectorResult> getMDATPDataConnectorOutput(
  GetMDATPDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getMDATPDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMDATPDataConnectorResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_mstidata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMSTIDataConnectorResult> getMSTIDataConnector(
  GetMSTIDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getMSTIDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMSTIDataConnectorResult.fromMap(result);
}

pulumi.Output<GetMSTIDataConnectorResult> getMSTIDataConnectorOutput(
  GetMSTIDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getMSTIDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMSTIDataConnectorResult.fromMap);
}

/// Get a Metadata.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_metadata_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataResult> getMetadata(
  GetMetadataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getMetadata',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataResult.fromMap(result);
}

pulumi.Output<GetMetadataResult> getMetadataOutput(
  GetMetadataArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getMetadata',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataResult.fromMap);
}

/// Gets the alert rule.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_microsoft_security_incident_creation_alert_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMicrosoftSecurityIncidentCreationAlertRuleResult> getMicrosoftSecurityIncidentCreationAlertRule(
  GetMicrosoftSecurityIncidentCreationAlertRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getMicrosoftSecurityIncidentCreationAlertRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMicrosoftSecurityIncidentCreationAlertRuleResult.fromMap(result);
}

pulumi.Output<GetMicrosoftSecurityIncidentCreationAlertRuleResult> getMicrosoftSecurityIncidentCreationAlertRuleOutput(
  GetMicrosoftSecurityIncidentCreationAlertRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getMicrosoftSecurityIncidentCreationAlertRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMicrosoftSecurityIncidentCreationAlertRuleResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_office_data_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOfficeDataConnectorResult> getOfficeDataConnector(
  GetOfficeDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getOfficeDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOfficeDataConnectorResult.fromMap(result);
}

pulumi.Output<GetOfficeDataConnectorResult> getOfficeDataConnectorOutput(
  GetOfficeDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getOfficeDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOfficeDataConnectorResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_premium_microsoft_defender_for_threat_intelligence_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPremiumMicrosoftDefenderForThreatIntelligenceResult> getPremiumMicrosoftDefenderForThreatIntelligence(
  GetPremiumMicrosoftDefenderForThreatIntelligenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getPremiumMicrosoftDefenderForThreatIntelligence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPremiumMicrosoftDefenderForThreatIntelligenceResult.fromMap(result);
}

pulumi.Output<GetPremiumMicrosoftDefenderForThreatIntelligenceResult> getPremiumMicrosoftDefenderForThreatIntelligenceOutput(
  GetPremiumMicrosoftDefenderForThreatIntelligenceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getPremiumMicrosoftDefenderForThreatIntelligence',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPremiumMicrosoftDefenderForThreatIntelligenceResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_rest_api_poller_data_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestApiPollerDataConnectorResult> getRestApiPollerDataConnector(
  GetRestApiPollerDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getRestApiPollerDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestApiPollerDataConnectorResult.fromMap(result);
}

pulumi.Output<GetRestApiPollerDataConnectorResult> getRestApiPollerDataConnectorOutput(
  GetRestApiPollerDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getRestApiPollerDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRestApiPollerDataConnectorResult.fromMap);
}

/// Gets the alert rule.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_scheduled_alert_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledAlertRuleResult> getScheduledAlertRule(
  GetScheduledAlertRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getScheduledAlertRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledAlertRuleResult.fromMap(result);
}

pulumi.Output<GetScheduledAlertRuleResult> getScheduledAlertRuleOutput(
  GetScheduledAlertRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getScheduledAlertRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledAlertRuleResult.fromMap);
}

/// Get Sentinel onboarding state
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_sentinel_onboarding_state_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSentinelOnboardingStateResult> getSentinelOnboardingState(
  GetSentinelOnboardingStateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getSentinelOnboardingState',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSentinelOnboardingStateResult.fromMap(result);
}

pulumi.Output<GetSentinelOnboardingStateResult> getSentinelOnboardingStateOutput(
  GetSentinelOnboardingStateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getSentinelOnboardingState',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSentinelOnboardingStateResult.fromMap);
}

/// Gets a source control byt its identifier.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_source_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceControlResult> getSourceControl(
  GetSourceControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getSourceControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceControlResult.fromMap(result);
}

pulumi.Output<GetSourceControlResult> getSourceControlOutput(
  GetSourceControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getSourceControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceControlResult.fromMap);
}

/// Gets a data connector.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_tidata_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTIDataConnectorResult> getTIDataConnector(
  GetTIDataConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getTIDataConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTIDataConnectorResult.fromMap(result);
}

pulumi.Output<GetTIDataConnectorResult> getTIDataConnectorOutput(
  GetTIDataConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getTIDataConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTIDataConnectorResult.fromMap);
}

/// View a threat intelligence indicator by name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_threat_intelligence_indicator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetThreatIntelligenceIndicatorResult> getThreatIntelligenceIndicator(
  GetThreatIntelligenceIndicatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getThreatIntelligenceIndicator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThreatIntelligenceIndicatorResult.fromMap(result);
}

pulumi.Output<GetThreatIntelligenceIndicatorResult> getThreatIntelligenceIndicatorOutput(
  GetThreatIntelligenceIndicatorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getThreatIntelligenceIndicator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetThreatIntelligenceIndicatorResult.fromMap);
}

/// Gets a setting.
///
/// Uses Azure REST API version 2025-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_ueba_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUebaResult> getUeba(
  GetUebaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getUeba',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUebaResult.fromMap(result);
}

pulumi.Output<GetUebaResult> getUebaOutput(
  GetUebaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getUeba',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUebaResult.fromMap);
}

/// Get a watchlist, without its watchlist items.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_watchlist_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWatchlistResult> getWatchlist(
  GetWatchlistArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWatchlist',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWatchlistResult.fromMap(result);
}

pulumi.Output<GetWatchlistResult> getWatchlistOutput(
  GetWatchlistArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWatchlist',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWatchlistResult.fromMap);
}

/// Get a watchlist item.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_watchlist_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWatchlistItemResult> getWatchlistItem(
  GetWatchlistItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWatchlistItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWatchlistItemResult.fromMap(result);
}

pulumi.Output<GetWatchlistItemResult> getWatchlistItemOutput(
  GetWatchlistItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWatchlistItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWatchlistItemResult.fromMap);
}

/// Gets a workspace manager assignment
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_workspace_manager_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagerAssignmentResult> getWorkspaceManagerAssignment(
  GetWorkspaceManagerAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagerAssignmentResult.fromMap(result);
}

pulumi.Output<GetWorkspaceManagerAssignmentResult> getWorkspaceManagerAssignmentOutput(
  GetWorkspaceManagerAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceManagerAssignmentResult.fromMap);
}

/// Gets a workspace manager configuration
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_workspace_manager_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagerConfigurationResult> getWorkspaceManagerConfiguration(
  GetWorkspaceManagerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagerConfigurationResult.fromMap(result);
}

pulumi.Output<GetWorkspaceManagerConfigurationResult> getWorkspaceManagerConfigurationOutput(
  GetWorkspaceManagerConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceManagerConfigurationResult.fromMap);
}

/// Gets a workspace manager group
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_workspace_manager_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagerGroupResult> getWorkspaceManagerGroup(
  GetWorkspaceManagerGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagerGroupResult.fromMap(result);
}

pulumi.Output<GetWorkspaceManagerGroupResult> getWorkspaceManagerGroupOutput(
  GetWorkspaceManagerGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceManagerGroupResult.fromMap);
}

/// Gets a workspace manager member
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_get_workspace_manager_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceManagerMemberResult> getWorkspaceManagerMember(
  GetWorkspaceManagerMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceManagerMemberResult.fromMap(result);
}

pulumi.Output<GetWorkspaceManagerMemberResult> getWorkspaceManagerMemberOutput(
  GetWorkspaceManagerMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:getWorkspaceManagerMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceManagerMemberResult.fromMap);
}

/// Get geodata for a single IP address
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_list_geodata_by_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGeodataByIpResult> listGeodataByIp(
  ListGeodataByIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:listGeodataByIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGeodataByIpResult.fromMap(result);
}

pulumi.Output<ListGeodataByIpResult> listGeodataByIpOutput(
  ListGeodataByIpArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:listGeodataByIp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListGeodataByIpResult.fromMap);
}

/// Gets a list of repositories metadata.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_list_source_control_repositories_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSourceControlRepositoriesResult> listSourceControlRepositories(
  ListSourceControlRepositoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:listSourceControlRepositories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSourceControlRepositoriesResult.fromMap(result);
}

pulumi.Output<ListSourceControlRepositoriesResult> listSourceControlRepositoriesOutput(
  ListSourceControlRepositoriesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:listSourceControlRepositories',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSourceControlRepositoriesResult.fromMap);
}

/// Get whois information for a single domain name
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_securityinsights_list_whois_by_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWhoisByDomainResult> listWhoisByDomain(
  ListWhoisByDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:securityinsights:listWhoisByDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWhoisByDomainResult.fromMap(result);
}

pulumi.Output<ListWhoisByDomainResult> listWhoisByDomainOutput(
  ListWhoisByDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:securityinsights:listWhoisByDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWhoisByDomainResult.fromMap);
}
