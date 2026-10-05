import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_big_query_export_args.dart';
import 'get_folder_big_query_export_result.dart';
import 'get_folder_notification_config_args.dart';
import 'get_folder_notification_config_result.dart';
import 'get_folder_security_health_analytics_setting_custom_module_args.dart';
import 'get_folder_security_health_analytics_setting_custom_module_result.dart';
import 'get_mute_config_args.dart';
import 'get_mute_config_result.dart';
import 'get_notification_config_args.dart';
import 'get_notification_config_result.dart';
import 'get_organization_big_query_export_args.dart';
import 'get_organization_big_query_export_result.dart';
import 'get_organization_event_threat_detection_setting_custom_module_args.dart';
import 'get_organization_event_threat_detection_setting_custom_module_result.dart';
import 'get_organization_mute_config_args.dart';
import 'get_organization_mute_config_result.dart';
import 'get_organization_notification_config_args.dart';
import 'get_organization_notification_config_result.dart';
import 'get_organization_security_health_analytics_setting_custom_module_args.dart';
import 'get_organization_security_health_analytics_setting_custom_module_result.dart';
import 'get_organization_source_iam_policy_args.dart';
import 'get_organization_source_iam_policy_result.dart';
import 'get_organization_source_iam_policy_securitycenter_v1beta1_args.dart';
import 'get_organization_source_iam_policy_securitycenter_v1beta1_result.dart';
import 'get_project_big_query_export_args.dart';
import 'get_project_big_query_export_result.dart';
import 'get_project_security_health_analytics_setting_custom_module_args.dart';
import 'get_project_security_health_analytics_setting_custom_module_result.dart';
import 'get_source_args.dart';
import 'get_source_result.dart';
import 'get_source_securitycenter_v1beta1_args.dart';
import 'get_source_securitycenter_v1beta1_result.dart';

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderBigQueryExportResult> getFolderBigQueryExport(
  GetFolderBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBigQueryExportResult.fromMap(result);
}

pulumi.Output<GetFolderBigQueryExportResult> getFolderBigQueryExportOutput(
  GetFolderBigQueryExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderBigQueryExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderBigQueryExportResult.fromMap);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderNotificationConfigResult> getFolderNotificationConfig(
  GetFolderNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderNotificationConfigResult.fromMap(result);
}

pulumi.Output<GetFolderNotificationConfigResult> getFolderNotificationConfigOutput(
  GetFolderNotificationConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderNotificationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderNotificationConfigResult.fromMap);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderSecurityHealthAnalyticsSettingCustomModuleResult> getFolderSecurityHealthAnalyticsSettingCustomModule(
  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(result);
}

pulumi.Output<GetFolderSecurityHealthAnalyticsSettingCustomModuleResult> getFolderSecurityHealthAnalyticsSettingCustomModuleOutput(
  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderSecurityHealthAnalyticsSettingCustomModule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderSecurityHealthAnalyticsSettingCustomModuleResult.fromMap);
}

/// Gets a mute config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_mute_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMuteConfigResult> getMuteConfig(
  GetMuteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getMuteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMuteConfigResult.fromMap(result);
}

pulumi.Output<GetMuteConfigResult> getMuteConfigOutput(
  GetMuteConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getMuteConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMuteConfigResult.fromMap);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationConfigResult> getNotificationConfig(
  GetNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationConfigResult.fromMap(result);
}

pulumi.Output<GetNotificationConfigResult> getNotificationConfigOutput(
  GetNotificationConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getNotificationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationConfigResult.fromMap);
}

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationBigQueryExportResult> getOrganizationBigQueryExport(
  GetOrganizationBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBigQueryExportResult.fromMap(result);
}

pulumi.Output<GetOrganizationBigQueryExportResult> getOrganizationBigQueryExportOutput(
  GetOrganizationBigQueryExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationBigQueryExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationBigQueryExportResult.fromMap);
}

/// Gets an Event Threat Detection custom module.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationEventThreatDetectionSettingCustomModuleResult> getOrganizationEventThreatDetectionSettingCustomModule(
  GetOrganizationEventThreatDetectionSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationEventThreatDetectionSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap(result);
}

pulumi.Output<GetOrganizationEventThreatDetectionSettingCustomModuleResult> getOrganizationEventThreatDetectionSettingCustomModuleOutput(
  GetOrganizationEventThreatDetectionSettingCustomModuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationEventThreatDetectionSettingCustomModule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap);
}

/// Gets a mute config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_mute_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationMuteConfigResult> getOrganizationMuteConfig(
  GetOrganizationMuteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationMuteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationMuteConfigResult.fromMap(result);
}

pulumi.Output<GetOrganizationMuteConfigResult> getOrganizationMuteConfigOutput(
  GetOrganizationMuteConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationMuteConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationMuteConfigResult.fromMap);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationNotificationConfigResult> getOrganizationNotificationConfig(
  GetOrganizationNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationNotificationConfigResult.fromMap(result);
}

pulumi.Output<GetOrganizationNotificationConfigResult> getOrganizationNotificationConfigOutput(
  GetOrganizationNotificationConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationNotificationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationNotificationConfigResult.fromMap);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult> getOrganizationSecurityHealthAnalyticsSettingCustomModule(
  GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(result);
}

pulumi.Output<GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult> getOrganizationSecurityHealthAnalyticsSettingCustomModuleOutput(
  GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSecurityHealthAnalyticsSettingCustomModule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult.fromMap);
}

/// Gets the access control policy on the specified Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSourceIamPolicyResult> getOrganizationSourceIamPolicy(
  GetOrganizationSourceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetOrganizationSourceIamPolicyResult> getOrganizationSourceIamPolicyOutput(
  GetOrganizationSourceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSourceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationSourceIamPolicyResult.fromMap);
}

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_project_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectBigQueryExportResult> getProjectBigQueryExport(
  GetProjectBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectBigQueryExportResult.fromMap(result);
}

pulumi.Output<GetProjectBigQueryExportResult> getProjectBigQueryExportOutput(
  GetProjectBigQueryExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectBigQueryExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectBigQueryExportResult.fromMap);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_project_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectSecurityHealthAnalyticsSettingCustomModuleResult> getProjectSecurityHealthAnalyticsSettingCustomModule(
  GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(result);
}

pulumi.Output<GetProjectSecurityHealthAnalyticsSettingCustomModuleResult> getProjectSecurityHealthAnalyticsSettingCustomModuleOutput(
  GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectSecurityHealthAnalyticsSettingCustomModule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectSecurityHealthAnalyticsSettingCustomModuleResult.fromMap);
}

/// Gets a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceResult.fromMap(result);
}

pulumi.Output<GetSourceResult> getSourceOutput(
  GetSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceResult.fromMap);
}

/// Gets the access control policy on the specified Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1beta1_get_organization_source_iam_policy_securitycenter_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSourceIamPolicySecuritycenterV1beta1Result> getOrganizationSourceIamPolicySecuritycenterV1beta1(
  GetOrganizationSourceIamPolicySecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicySecuritycenterV1beta1Result.fromMap(result);
}

pulumi.Output<GetOrganizationSourceIamPolicySecuritycenterV1beta1Result> getOrganizationSourceIamPolicySecuritycenterV1beta1Output(
  GetOrganizationSourceIamPolicySecuritycenterV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getOrganizationSourceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationSourceIamPolicySecuritycenterV1beta1Result.fromMap);
}

/// Gets a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1beta1_get_source_securitycenter_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceSecuritycenterV1beta1Result> getSourceSecuritycenterV1beta1(
  GetSourceSecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceSecuritycenterV1beta1Result.fromMap(result);
}

pulumi.Output<GetSourceSecuritycenterV1beta1Result> getSourceSecuritycenterV1beta1Output(
  GetSourceSecuritycenterV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceSecuritycenterV1beta1Result.fromMap);
}
