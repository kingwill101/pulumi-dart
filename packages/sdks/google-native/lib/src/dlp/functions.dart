import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deidentify_template_args.dart';
import 'get_deidentify_template_result.dart';
import 'get_discovery_config_args.dart';
import 'get_discovery_config_result.dart';
import 'get_dlp_job_args.dart';
import 'get_dlp_job_result.dart';
import 'get_inspect_template_args.dart';
import 'get_inspect_template_result.dart';
import 'get_job_trigger_args.dart';
import 'get_job_trigger_result.dart';
import 'get_organization_discovery_config_args.dart';
import 'get_organization_discovery_config_result.dart';
import 'get_organization_inspect_template_args.dart';
import 'get_organization_inspect_template_result.dart';
import 'get_organization_job_trigger_args.dart';
import 'get_organization_job_trigger_result.dart';
import 'get_organizations_deidentify_template_args.dart';
import 'get_organizations_deidentify_template_result.dart';
import 'get_stored_info_type_args.dart';
import 'get_stored_info_type_result.dart';

/// Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_deidentify_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeidentifyTemplateResult> getDeidentifyTemplate(
  GetDeidentifyTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDeidentifyTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeidentifyTemplateResult.fromMap(result);
}

/// Gets a discovery configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_discovery_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveryConfigResult> getDiscoveryConfig(
  GetDiscoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDiscoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveryConfigResult.fromMap(result);
}

/// Gets the latest state of a long-running DlpJob. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_dlp_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDlpJobResult> getDlpJob(
  GetDlpJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDlpJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDlpJobResult.fromMap(result);
}

/// Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_inspect_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInspectTemplateResult> getInspectTemplate(
  GetInspectTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getInspectTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInspectTemplateResult.fromMap(result);
}

/// Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_job_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobTriggerResult> getJobTrigger(
  GetJobTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getJobTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobTriggerResult.fromMap(result);
}

/// Gets a discovery configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_organization_discovery_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationDiscoveryConfigResult> getOrganizationDiscoveryConfig(
  GetOrganizationDiscoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationDiscoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationDiscoveryConfigResult.fromMap(result);
}

/// Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_organization_inspect_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationInspectTemplateResult> getOrganizationInspectTemplate(
  GetOrganizationInspectTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationInspectTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationInspectTemplateResult.fromMap(result);
}

/// Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_organization_job_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationJobTriggerResult> getOrganizationJobTrigger(
  GetOrganizationJobTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationJobTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationJobTriggerResult.fromMap(result);
}

/// Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_organizations_deidentify_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationsDeidentifyTemplateResult>
getOrganizationsDeidentifyTemplate(
  GetOrganizationsDeidentifyTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationsDeidentifyTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationsDeidentifyTemplateResult.fromMap(result);
}

/// Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.
/// [args] Arguments passed to this invoke. {@macro pulumi_dlp_v2_get_stored_info_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoredInfoTypeResult> getStoredInfoType(
  GetStoredInfoTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getStoredInfoType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoredInfoTypeResult.fromMap(result);
}
