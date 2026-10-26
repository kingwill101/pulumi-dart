import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_api_args.dart';
import 'get_api_product_args.dart';
import 'get_api_product_result.dart';
import 'get_api_result.dart';
import 'get_apicategory_args.dart';
import 'get_apicategory_result.dart';
import 'get_app_group_app_args.dart';
import 'get_app_group_app_key_args.dart';
import 'get_app_group_app_key_result.dart';
import 'get_app_group_app_result.dart';
import 'get_appgroup_args.dart';
import 'get_appgroup_result.dart';
import 'get_archive_deployment_args.dart';
import 'get_archive_deployment_result.dart';
import 'get_canary_evaluation_args.dart';
import 'get_canary_evaluation_result.dart';
import 'get_data_collector_args.dart';
import 'get_data_collector_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_debug_session_args.dart';
import 'get_debug_session_result.dart';
import 'get_developer_app_args.dart';
import 'get_developer_app_key_args.dart';
import 'get_developer_app_key_result.dart';
import 'get_developer_app_result.dart';
import 'get_developer_args.dart';
import 'get_developer_result.dart';
import 'get_endpoint_attachment_args.dart';
import 'get_endpoint_attachment_result.dart';
import 'get_entry_args.dart';
import 'get_entry_result.dart';
import 'get_envgroup_args.dart';
import 'get_envgroup_attachment_args.dart';
import 'get_envgroup_attachment_result.dart';
import 'get_envgroup_result.dart';
import 'get_environment_args.dart';
import 'get_environment_entry_args.dart';
import 'get_environment_entry_result.dart';
import 'get_environment_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_host_query_args.dart';
import 'get_host_query_result.dart';
import 'get_host_security_report_args.dart';
import 'get_host_security_report_result.dart';
import 'get_instance_args.dart';
import 'get_instance_attachment_args.dart';
import 'get_instance_attachment_result.dart';
import 'get_instance_result.dart';
import 'get_keystore_args.dart';
import 'get_keystore_result.dart';
import 'get_nat_address_args.dart';
import 'get_nat_address_result.dart';
import 'get_organization_args.dart';
import 'get_organization_environment_iam_policy_args.dart';
import 'get_organization_environment_iam_policy_result.dart';
import 'get_organization_result.dart';
import 'get_override_args.dart';
import 'get_override_result.dart';
import 'get_query_args.dart';
import 'get_query_result.dart';
import 'get_rate_plan_args.dart';
import 'get_rate_plan_result.dart';
import 'get_reference_args.dart';
import 'get_reference_result.dart';
import 'get_report_args.dart';
import 'get_report_result.dart';
import 'get_resourcefile_args.dart';
import 'get_resourcefile_result.dart';
import 'get_security_action_args.dart';
import 'get_security_action_result.dart';
import 'get_security_profile_args.dart';
import 'get_security_profile_result.dart';
import 'get_security_report_args.dart';
import 'get_security_report_result.dart';
import 'get_sharedflow_args.dart';
import 'get_sharedflow_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_target_server_args.dart';
import 'get_target_server_result.dart';

/// Gets an alias.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

pulumi.Output<GetAliasResult> getAliasOutput(
  GetAliasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getAlias',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAliasResult.fromMap);
}

/// Gets an API proxy including a list of existing revisions.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

pulumi.Output<GetApiResult> getApiOutput(
  GetApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiResult.fromMap);
}

/// Gets configuration details for an API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_api_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiProductResult> getApiProduct(
  GetApiProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApiProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiProductResult.fromMap(result);
}

pulumi.Output<GetApiProductResult> getApiProductOutput(
  GetApiProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getApiProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiProductResult.fromMap);
}

/// Gets an API category.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_apicategory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApicategoryResult> getApicategory(
  GetApicategoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApicategory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApicategoryResult.fromMap(result);
}

pulumi.Output<GetApicategoryResult> getApicategoryOutput(
  GetApicategoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getApicategory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApicategoryResult.fromMap);
}

/// Returns the details for an AppGroup app.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_app_group_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGroupAppResult> getAppGroupApp(
  GetAppGroupAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppResult.fromMap(result);
}

pulumi.Output<GetAppGroupAppResult> getAppGroupAppOutput(
  GetAppGroupAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppGroupAppResult.fromMap);
}

/// Gets details for a consumer key for a AppGroup app, including the key and secret value, associated API products, and other information.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_app_group_app_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGroupAppKeyResult> getAppGroupAppKey(
  GetAppGroupAppKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupAppKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppKeyResult.fromMap(result);
}

pulumi.Output<GetAppGroupAppKeyResult> getAppGroupAppKeyOutput(
  GetAppGroupAppKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupAppKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppGroupAppKeyResult.fromMap);
}

/// Returns the AppGroup details for the provided AppGroup name in the request URI.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_appgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppgroupResult> getAppgroup(
  GetAppgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppgroupResult.fromMap(result);
}

pulumi.Output<GetAppgroupResult> getAppgroupOutput(
  GetAppgroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppgroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppgroupResult.fromMap);
}

/// Gets the specified ArchiveDeployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_archive_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArchiveDeploymentResult> getArchiveDeployment(
  GetArchiveDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getArchiveDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArchiveDeploymentResult.fromMap(result);
}

pulumi.Output<GetArchiveDeploymentResult> getArchiveDeploymentOutput(
  GetArchiveDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getArchiveDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArchiveDeploymentResult.fromMap);
}

/// Gets a CanaryEvaluation for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_canary_evaluation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCanaryEvaluationResult> getCanaryEvaluation(
  GetCanaryEvaluationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getCanaryEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCanaryEvaluationResult.fromMap(result);
}

pulumi.Output<GetCanaryEvaluationResult> getCanaryEvaluationOutput(
  GetCanaryEvaluationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getCanaryEvaluation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCanaryEvaluationResult.fromMap);
}

/// Gets a data collector.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_data_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectorResult> getDataCollector(
  GetDataCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDataCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectorResult.fromMap(result);
}

pulumi.Output<GetDataCollectorResult> getDataCollectorOutput(
  GetDataCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDataCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataCollectorResult.fromMap);
}

/// Get a Datastore
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

pulumi.Output<GetDatastoreResult> getDatastoreOutput(
  GetDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatastoreResult.fromMap);
}

/// Retrieves a debug session.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_debug_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDebugSessionResult> getDebugSession(
  GetDebugSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDebugSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugSessionResult.fromMap(result);
}

pulumi.Output<GetDebugSessionResult> getDebugSessionOutput(
  GetDebugSessionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDebugSession',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDebugSessionResult.fromMap);
}

/// Returns the developer details, including the developer's name, email address, apps, and other information. **Note**: The response includes only the first 100 developer apps.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperResult> getDeveloper(
  GetDeveloperArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloper',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperResult.fromMap(result);
}

pulumi.Output<GetDeveloperResult> getDeveloperOutput(
  GetDeveloperArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloper',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeveloperResult.fromMap);
}

/// Returns the details for a developer app.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperAppResult> getDeveloperApp(
  GetDeveloperAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppResult.fromMap(result);
}

pulumi.Output<GetDeveloperAppResult> getDeveloperAppOutput(
  GetDeveloperAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeveloperAppResult.fromMap);
}

/// Gets details for a consumer key for a developer app, including the key and secret value, associated API products, and other information.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_app_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperAppKeyResult> getDeveloperAppKey(
  GetDeveloperAppKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperAppKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppKeyResult.fromMap(result);
}

pulumi.Output<GetDeveloperAppKeyResult> getDeveloperAppKeyOutput(
  GetDeveloperAppKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperAppKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeveloperAppKeyResult.fromMap);
}

/// Gets the endpoint attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_endpoint_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAttachmentResult> getEndpointAttachment(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEndpointAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentResult.fromMap(result);
}

pulumi.Output<GetEndpointAttachmentResult> getEndpointAttachmentOutput(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEndpointAttachment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointAttachmentResult.fromMap);
}

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryResult> getEntry(
  GetEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryResult.fromMap(result);
}

pulumi.Output<GetEntryResult> getEntryOutput(
  GetEntryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEntry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryResult.fromMap);
}

/// Gets an environment group.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_envgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvgroupResult> getEnvgroup(
  GetEnvgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupResult.fromMap(result);
}

pulumi.Output<GetEnvgroupResult> getEnvgroupOutput(
  GetEnvgroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvgroupResult.fromMap);
}

/// Gets an environment group attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_envgroup_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvgroupAttachmentResult> getEnvgroupAttachment(
  GetEnvgroupAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroupAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupAttachmentResult.fromMap(result);
}

pulumi.Output<GetEnvgroupAttachmentResult> getEnvgroupAttachmentOutput(
  GetEnvgroupAttachmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroupAttachment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvgroupAttachmentResult.fromMap);
}

/// Gets environment details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_environment_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentEntryResult> getEnvironmentEntry(
  GetEnvironmentEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironmentEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentEntryResult.fromMap(result);
}

pulumi.Output<GetEnvironmentEntryResult> getEnvironmentEntryOutput(
  GetEnvironmentEntryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironmentEntry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentEntryResult.fromMap);
}

/// Gets the details and status of an analytics export job. If the export job is still in progress, its `state` is set to "running". After the export job has completed successfully, its `state` is set to "completed". If the export job fails, its `state` is set to `failed`.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

pulumi.Output<GetExportResult> getExportOutput(
  GetExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExportResult.fromMap);
}

/// Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_host_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostQueryResult> getHostQuery(
  GetHostQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostQueryResult.fromMap(result);
}

pulumi.Output<GetHostQueryResult> getHostQueryOutput(
  GetHostQueryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostQueryResult.fromMap);
}

/// Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_host_security_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostSecurityReportResult> getHostSecurityReport(
  GetHostSecurityReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostSecurityReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostSecurityReportResult.fromMap(result);
}

pulumi.Output<GetHostSecurityReportResult> getHostSecurityReportOutput(
  GetHostSecurityReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostSecurityReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostSecurityReportResult.fromMap);
}

/// Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Gets an attachment. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_instance_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAttachmentResult> getInstanceAttachment(
  GetInstanceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstanceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentResult.fromMap(result);
}

pulumi.Output<GetInstanceAttachmentResult> getInstanceAttachmentOutput(
  GetInstanceAttachmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstanceAttachment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceAttachmentResult.fromMap);
}

/// Gets a keystore or truststore.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_keystore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeystoreResult> getKeystore(
  GetKeystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getKeystore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeystoreResult.fromMap(result);
}

pulumi.Output<GetKeystoreResult> getKeystoreOutput(
  GetKeystoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getKeystore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeystoreResult.fromMap);
}

/// Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_nat_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatAddressResult> getNatAddress(
  GetNatAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getNatAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatAddressResult.fromMap(result);
}

pulumi.Output<GetNatAddressResult> getNatAddressOutput(
  GetNatAddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getNatAddress',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNatAddressResult.fromMap);
}

/// Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}

pulumi.Output<GetOrganizationResult> getOrganizationOutput(
  GetOrganizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationResult.fromMap);
}

/// Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.getIamPolicy` permission to call this API.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_organization_environment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationEnvironmentIamPolicyResult> getOrganizationEnvironmentIamPolicy(
  GetOrganizationEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganizationEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEnvironmentIamPolicyResult.fromMap(result);
}

pulumi.Output<GetOrganizationEnvironmentIamPolicyResult> getOrganizationEnvironmentIamPolicyOutput(
  GetOrganizationEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganizationEnvironmentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationEnvironmentIamPolicyResult.fromMap);
}

/// Gets a trace configuration override.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_override_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOverrideResult> getOverride(
  GetOverrideArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOverride',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOverrideResult.fromMap(result);
}

pulumi.Output<GetOverrideResult> getOverrideOutput(
  GetOverrideArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getOverride',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOverrideResult.fromMap);
}

/// Get query status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueryResult> getQuery(
  GetQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getQuery',
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
    'google-native:apigee/v1:getQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueryResult.fromMap);
}

/// Gets the details of a rate plan.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_rate_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRatePlanResult> getRatePlan(
  GetRatePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getRatePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRatePlanResult.fromMap(result);
}

pulumi.Output<GetRatePlanResult> getRatePlanOutput(
  GetRatePlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getRatePlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRatePlanResult.fromMap);
}

/// Gets a Reference resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReferenceResult> getReference(
  GetReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceResult.fromMap(result);
}

pulumi.Output<GetReferenceResult> getReferenceOutput(
  GetReferenceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getReference',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReferenceResult.fromMap);
}

/// Retrieve a custom report definition.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}

pulumi.Output<GetReportResult> getReportOutput(
  GetReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportResult.fromMap);
}

/// Gets the contents of a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_resourcefile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcefileResult> getResourcefile(
  GetResourcefileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getResourcefile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcefileResult.fromMap(result);
}

pulumi.Output<GetResourcefileResult> getResourcefileOutput(
  GetResourcefileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getResourcefile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourcefileResult.fromMap);
}

/// Get a SecurityAction by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityActionResult> getSecurityAction(
  GetSecurityActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityActionResult.fromMap(result);
}

pulumi.Output<GetSecurityActionResult> getSecurityActionOutput(
  GetSecurityActionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityAction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityActionResult.fromMap);
}

/// GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is not present for the specified organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}

pulumi.Output<GetSecurityProfileResult> getSecurityProfileOutput(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityProfileResult.fromMap);
}

/// Get security report status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityReportResult> getSecurityReport(
  GetSecurityReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityReportResult.fromMap(result);
}

pulumi.Output<GetSecurityReportResult> getSecurityReportOutput(
  GetSecurityReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityReportResult.fromMap);
}

/// Gets a shared flow by name, including a list of its revisions.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_sharedflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedflowResult> getSharedflow(
  GetSharedflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSharedflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedflowResult.fromMap(result);
}

pulumi.Output<GetSharedflowResult> getSharedflowOutput(
  GetSharedflowArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getSharedflow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSharedflowResult.fromMap);
}

/// Gets details for an API product subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

pulumi.Output<GetSubscriptionResult> getSubscriptionOutput(
  GetSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionResult.fromMap);
}

/// Gets a TargetServer resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_target_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetServerResult> getTargetServer(
  GetTargetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getTargetServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetServerResult.fromMap(result);
}

pulumi.Output<GetTargetServerResult> getTargetServerOutput(
  GetTargetServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigee/v1:getTargetServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetServerResult.fromMap);
}
