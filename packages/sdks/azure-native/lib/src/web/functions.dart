import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_args.dart';
import 'get_ai_gateway_result.dart';
import 'get_app_service_environment_args.dart';
import 'get_app_service_environment_ase_custom_dns_suffix_configuration_args.dart';
import 'get_app_service_environment_ase_custom_dns_suffix_configuration_result.dart';
import 'get_app_service_environment_private_endpoint_connection_args.dart';
import 'get_app_service_environment_private_endpoint_connection_result.dart';
import 'get_app_service_environment_result.dart';
import 'get_app_service_plan_args.dart';
import 'get_app_service_plan_result.dart';
import 'get_app_service_plan_server_farm_rdp_password_args.dart';
import 'get_app_service_plan_server_farm_rdp_password_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_connection_args.dart';
import 'get_connection_gateway_args.dart';
import 'get_connection_gateway_result.dart';
import 'get_connection_result.dart';
import 'get_custom_api_args.dart';
import 'get_custom_api_result.dart';
import 'get_kube_environment_args.dart';
import 'get_kube_environment_result.dart';
import 'get_site_certificate_args.dart';
import 'get_site_certificate_result.dart';
import 'get_site_certificate_slot_args.dart';
import 'get_site_certificate_slot_result.dart';
import 'get_static_site_args.dart';
import 'get_static_site_build_database_connection_args.dart';
import 'get_static_site_build_database_connection_result.dart';
import 'get_static_site_custom_domain_args.dart';
import 'get_static_site_custom_domain_result.dart';
import 'get_static_site_database_connection_args.dart';
import 'get_static_site_database_connection_result.dart';
import 'get_static_site_linked_backend_args.dart';
import 'get_static_site_linked_backend_for_build_args.dart';
import 'get_static_site_linked_backend_for_build_result.dart';
import 'get_static_site_linked_backend_result.dart';
import 'get_static_site_private_endpoint_connection_args.dart';
import 'get_static_site_private_endpoint_connection_result.dart';
import 'get_static_site_result.dart';
import 'get_static_site_user_provided_function_app_for_static_site_args.dart';
import 'get_static_site_user_provided_function_app_for_static_site_build_args.dart';
import 'get_static_site_user_provided_function_app_for_static_site_build_result.dart';
import 'get_static_site_user_provided_function_app_for_static_site_result.dart';
import 'get_web_app_args.dart';
import 'get_web_app_auth_settings_v2_without_secrets_args.dart';
import 'get_web_app_auth_settings_v2_without_secrets_result.dart';
import 'get_web_app_auth_settings_v2_without_secrets_slot_args.dart';
import 'get_web_app_auth_settings_v2_without_secrets_slot_result.dart';
import 'get_web_app_deployment_args.dart';
import 'get_web_app_deployment_result.dart';
import 'get_web_app_deployment_slot_args.dart';
import 'get_web_app_deployment_slot_result.dart';
import 'get_web_app_diagnostic_logs_configuration_args.dart';
import 'get_web_app_diagnostic_logs_configuration_result.dart';
import 'get_web_app_diagnostic_logs_configuration_slot_args.dart';
import 'get_web_app_diagnostic_logs_configuration_slot_result.dart';
import 'get_web_app_domain_ownership_identifier_args.dart';
import 'get_web_app_domain_ownership_identifier_result.dart';
import 'get_web_app_domain_ownership_identifier_slot_args.dart';
import 'get_web_app_domain_ownership_identifier_slot_result.dart';
import 'get_web_app_ftp_allowed_args.dart';
import 'get_web_app_ftp_allowed_result.dart';
import 'get_web_app_ftp_allowed_slot_args.dart';
import 'get_web_app_ftp_allowed_slot_result.dart';
import 'get_web_app_function_args.dart';
import 'get_web_app_function_result.dart';
import 'get_web_app_host_name_binding_args.dart';
import 'get_web_app_host_name_binding_result.dart';
import 'get_web_app_host_name_binding_slot_args.dart';
import 'get_web_app_host_name_binding_slot_result.dart';
import 'get_web_app_hybrid_connection_args.dart';
import 'get_web_app_hybrid_connection_result.dart';
import 'get_web_app_hybrid_connection_slot_args.dart';
import 'get_web_app_hybrid_connection_slot_result.dart';
import 'get_web_app_instance_function_slot_args.dart';
import 'get_web_app_instance_function_slot_result.dart';
import 'get_web_app_premier_add_on_args.dart';
import 'get_web_app_premier_add_on_result.dart';
import 'get_web_app_premier_add_on_slot_args.dart';
import 'get_web_app_premier_add_on_slot_result.dart';
import 'get_web_app_private_endpoint_connection_args.dart';
import 'get_web_app_private_endpoint_connection_result.dart';
import 'get_web_app_private_endpoint_connection_slot_args.dart';
import 'get_web_app_private_endpoint_connection_slot_result.dart';
import 'get_web_app_public_certificate_args.dart';
import 'get_web_app_public_certificate_result.dart';
import 'get_web_app_public_certificate_slot_args.dart';
import 'get_web_app_public_certificate_slot_result.dart';
import 'get_web_app_relay_service_connection_args.dart';
import 'get_web_app_relay_service_connection_result.dart';
import 'get_web_app_relay_service_connection_slot_args.dart';
import 'get_web_app_relay_service_connection_slot_result.dart';
import 'get_web_app_result.dart';
import 'get_web_app_scm_allowed_args.dart';
import 'get_web_app_scm_allowed_result.dart';
import 'get_web_app_scm_allowed_slot_args.dart';
import 'get_web_app_scm_allowed_slot_result.dart';
import 'get_web_app_site_container_args.dart';
import 'get_web_app_site_container_result.dart';
import 'get_web_app_site_container_slot_args.dart';
import 'get_web_app_site_container_slot_result.dart';
import 'get_web_app_site_extension_args.dart';
import 'get_web_app_site_extension_result.dart';
import 'get_web_app_site_extension_slot_args.dart';
import 'get_web_app_site_extension_slot_result.dart';
import 'get_web_app_slot_args.dart';
import 'get_web_app_slot_configuration_names_args.dart';
import 'get_web_app_slot_configuration_names_result.dart';
import 'get_web_app_slot_result.dart';
import 'get_web_app_source_control_args.dart';
import 'get_web_app_source_control_result.dart';
import 'get_web_app_source_control_slot_args.dart';
import 'get_web_app_source_control_slot_result.dart';
import 'get_web_app_swift_virtual_network_connection_args.dart';
import 'get_web_app_swift_virtual_network_connection_result.dart';
import 'get_web_app_swift_virtual_network_connection_slot_args.dart';
import 'get_web_app_swift_virtual_network_connection_slot_result.dart';
import 'get_web_app_vnet_connection_args.dart';
import 'get_web_app_vnet_connection_result.dart';
import 'get_web_app_vnet_connection_slot_args.dart';
import 'get_web_app_vnet_connection_slot_result.dart';
import 'list_app_service_plan_hybrid_connection_keys_args.dart';
import 'list_app_service_plan_hybrid_connection_keys_result.dart';
import 'list_app_service_plan_server_farm_instance_details_args.dart';
import 'list_app_service_plan_server_farm_instance_details_result.dart';
import 'list_connection_consent_links_args.dart';
import 'list_connection_consent_links_result.dart';
import 'list_connection_keys_args.dart';
import 'list_connection_keys_result.dart';
import 'list_custom_api_wsdl_interfaces_args.dart';
import 'list_custom_api_wsdl_interfaces_result.dart';
import 'list_site_identifiers_assigned_to_host_name_args.dart';
import 'list_site_identifiers_assigned_to_host_name_result.dart';
import 'list_static_site_app_settings_args.dart';
import 'list_static_site_app_settings_result.dart';
import 'list_static_site_build_app_settings_args.dart';
import 'list_static_site_build_app_settings_result.dart';
import 'list_static_site_build_function_app_settings_args.dart';
import 'list_static_site_build_function_app_settings_result.dart';
import 'list_static_site_configured_roles_args.dart';
import 'list_static_site_configured_roles_result.dart';
import 'list_static_site_function_app_settings_args.dart';
import 'list_static_site_function_app_settings_result.dart';
import 'list_static_site_secrets_args.dart';
import 'list_static_site_secrets_result.dart';
import 'list_static_site_users_args.dart';
import 'list_static_site_users_result.dart';
import 'list_web_app_application_settings_args.dart';
import 'list_web_app_application_settings_result.dart';
import 'list_web_app_application_settings_slot_args.dart';
import 'list_web_app_application_settings_slot_result.dart';
import 'list_web_app_auth_settings_args.dart';
import 'list_web_app_auth_settings_result.dart';
import 'list_web_app_auth_settings_slot_args.dart';
import 'list_web_app_auth_settings_slot_result.dart';
import 'list_web_app_azure_storage_accounts_args.dart';
import 'list_web_app_azure_storage_accounts_result.dart';
import 'list_web_app_azure_storage_accounts_slot_args.dart';
import 'list_web_app_azure_storage_accounts_slot_result.dart';
import 'list_web_app_backup_configuration_args.dart';
import 'list_web_app_backup_configuration_result.dart';
import 'list_web_app_backup_configuration_slot_args.dart';
import 'list_web_app_backup_configuration_slot_result.dart';
import 'list_web_app_backup_status_secrets_args.dart';
import 'list_web_app_backup_status_secrets_result.dart';
import 'list_web_app_backup_status_secrets_slot_args.dart';
import 'list_web_app_backup_status_secrets_slot_result.dart';
import 'list_web_app_connection_strings_args.dart';
import 'list_web_app_connection_strings_result.dart';
import 'list_web_app_connection_strings_slot_args.dart';
import 'list_web_app_connection_strings_slot_result.dart';
import 'list_web_app_function_keys_args.dart';
import 'list_web_app_function_keys_result.dart';
import 'list_web_app_function_keys_slot_args.dart';
import 'list_web_app_function_keys_slot_result.dart';
import 'list_web_app_function_secrets_args.dart';
import 'list_web_app_function_secrets_result.dart';
import 'list_web_app_function_secrets_slot_args.dart';
import 'list_web_app_function_secrets_slot_result.dart';
import 'list_web_app_host_keys_args.dart';
import 'list_web_app_host_keys_result.dart';
import 'list_web_app_host_keys_slot_args.dart';
import 'list_web_app_host_keys_slot_result.dart';
import 'list_web_app_hybrid_connection_keys_args.dart';
import 'list_web_app_hybrid_connection_keys_result.dart';
import 'list_web_app_hybrid_connection_keys_slot_args.dart';
import 'list_web_app_hybrid_connection_keys_slot_result.dart';
import 'list_web_app_metadata_args.dart';
import 'list_web_app_metadata_result.dart';
import 'list_web_app_metadata_slot_args.dart';
import 'list_web_app_metadata_slot_result.dart';
import 'list_web_app_publishing_credentials_args.dart';
import 'list_web_app_publishing_credentials_result.dart';
import 'list_web_app_publishing_credentials_slot_args.dart';
import 'list_web_app_publishing_credentials_slot_result.dart';
import 'list_web_app_site_backups_args.dart';
import 'list_web_app_site_backups_result.dart';
import 'list_web_app_site_backups_slot_args.dart';
import 'list_web_app_site_backups_slot_result.dart';
import 'list_web_app_site_push_settings_args.dart';
import 'list_web_app_site_push_settings_result.dart';
import 'list_web_app_site_push_settings_slot_args.dart';
import 'list_web_app_site_push_settings_slot_result.dart';
import 'list_web_app_sync_function_triggers_args.dart';
import 'list_web_app_sync_function_triggers_result.dart';
import 'list_web_app_sync_function_triggers_slot_args.dart';
import 'list_web_app_sync_function_triggers_slot_result.dart';
import 'list_web_app_workflows_connections_args.dart';
import 'list_web_app_workflows_connections_result.dart';
import 'list_web_app_workflows_connections_slot_args.dart';
import 'list_web_app_workflows_connections_slot_result.dart';
import 'list_workflow_run_action_expression_traces_args.dart';
import 'list_workflow_run_action_expression_traces_result.dart';
import 'list_workflow_run_action_repetition_expression_traces_args.dart';
import 'list_workflow_run_action_repetition_expression_traces_result.dart';
import 'list_workflow_trigger_callback_url_args.dart';
import 'list_workflow_trigger_callback_url_result.dart';

/// Get a AiGateway
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_ai_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiGatewayResult> getAiGateway(
  GetAiGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAiGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiGatewayResult.fromMap(result);
}

pulumi.Output<GetAiGatewayResult> getAiGatewayOutput(
  GetAiGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAiGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiGatewayResult.fromMap);
}

/// Description for Get the properties of an App Service Environment.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_app_service_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceEnvironmentResult> getAppServiceEnvironment(
  GetAppServiceEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceEnvironmentResult.fromMap(result);
}

pulumi.Output<GetAppServiceEnvironmentResult> getAppServiceEnvironmentOutput(
  GetAppServiceEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServiceEnvironmentResult.fromMap);
}

/// Get Custom Dns Suffix configuration of an App Service Environment
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult> getAppServiceEnvironmentAseCustomDnsSuffixConfiguration(
  GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironmentAseCustomDnsSuffixConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult.fromMap(result);
}

pulumi.Output<GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult> getAppServiceEnvironmentAseCustomDnsSuffixConfigurationOutput(
  GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironmentAseCustomDnsSuffixConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult.fromMap);
}

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_app_service_environment_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServiceEnvironmentPrivateEndpointConnectionResult> getAppServiceEnvironmentPrivateEndpointConnection(
  GetAppServiceEnvironmentPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironmentPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServiceEnvironmentPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetAppServiceEnvironmentPrivateEndpointConnectionResult> getAppServiceEnvironmentPrivateEndpointConnectionOutput(
  GetAppServiceEnvironmentPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAppServiceEnvironmentPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServiceEnvironmentPrivateEndpointConnectionResult.fromMap);
}

/// Description for Get an App Service plan.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_app_service_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServicePlanResult> getAppServicePlan(
  GetAppServicePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAppServicePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServicePlanResult.fromMap(result);
}

pulumi.Output<GetAppServicePlanResult> getAppServicePlanOutput(
  GetAppServicePlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAppServicePlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServicePlanResult.fromMap);
}

/// Description for Get the RDP password for an IsCustomMode ServerFarm.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_app_service_plan_server_farm_rdp_password_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppServicePlanServerFarmRdpPasswordResult> getAppServicePlanServerFarmRdpPassword(
  GetAppServicePlanServerFarmRdpPasswordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getAppServicePlanServerFarmRdpPassword',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppServicePlanServerFarmRdpPasswordResult.fromMap(result);
}

pulumi.Output<GetAppServicePlanServerFarmRdpPasswordResult> getAppServicePlanServerFarmRdpPasswordOutput(
  GetAppServicePlanServerFarmRdpPasswordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getAppServicePlanServerFarmRdpPassword',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppServicePlanServerFarmRdpPasswordResult.fromMap);
}

/// Description for Get a certificate.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-03-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Get a specific connection
///
/// Uses Azure REST API version 2016-06-01.
///
/// Other available API versions: 2015-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getConnection',
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
    'azure-native:web:getConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionResult.fromMap);
}

/// Gets a specific gateway under a subscription and in a specific resource group
///
/// Uses Azure REST API version 2016-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_connection_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionGatewayResult> getConnectionGateway(
  GetConnectionGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getConnectionGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionGatewayResult.fromMap(result);
}

pulumi.Output<GetConnectionGatewayResult> getConnectionGatewayOutput(
  GetConnectionGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getConnectionGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionGatewayResult.fromMap);
}

/// Gets a custom API by name for a specific subscription and resource group
///
/// Uses Azure REST API version 2016-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_custom_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomApiResult> getCustomApi(
  GetCustomApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getCustomApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomApiResult.fromMap(result);
}

pulumi.Output<GetCustomApiResult> getCustomApiOutput(
  GetCustomApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getCustomApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomApiResult.fromMap);
}

/// Description for Get the properties of a Kubernetes Environment.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_kube_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubeEnvironmentResult> getKubeEnvironment(
  GetKubeEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getKubeEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubeEnvironmentResult.fromMap(result);
}

pulumi.Output<GetKubeEnvironmentResult> getKubeEnvironmentOutput(
  GetKubeEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getKubeEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKubeEnvironmentResult.fromMap);
}

/// Get a certificate belonging to a given site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_site_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteCertificateResult> getSiteCertificate(
  GetSiteCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getSiteCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteCertificateResult.fromMap(result);
}

pulumi.Output<GetSiteCertificateResult> getSiteCertificateOutput(
  GetSiteCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getSiteCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteCertificateResult.fromMap);
}

/// Get a certificate for a given site and deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_site_certificate_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteCertificateSlotResult> getSiteCertificateSlot(
  GetSiteCertificateSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getSiteCertificateSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteCertificateSlotResult.fromMap(result);
}

pulumi.Output<GetSiteCertificateSlotResult> getSiteCertificateSlotOutput(
  GetSiteCertificateSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getSiteCertificateSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteCertificateSlotResult.fromMap);
}

/// Description for Gets the details of a static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteResult> getStaticSite(
  GetStaticSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteResult.fromMap(result);
}

pulumi.Output<GetStaticSiteResult> getStaticSiteOutput(
  GetStaticSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteResult.fromMap);
}

/// Returns overview of a database connection for a static site build by name
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_build_database_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteBuildDatabaseConnectionResult> getStaticSiteBuildDatabaseConnection(
  GetStaticSiteBuildDatabaseConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteBuildDatabaseConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteBuildDatabaseConnectionResult.fromMap(result);
}

pulumi.Output<GetStaticSiteBuildDatabaseConnectionResult> getStaticSiteBuildDatabaseConnectionOutput(
  GetStaticSiteBuildDatabaseConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteBuildDatabaseConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteBuildDatabaseConnectionResult.fromMap);
}

/// Description for Gets an existing custom domain for a particular static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteCustomDomainResult> getStaticSiteCustomDomain(
  GetStaticSiteCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteCustomDomainResult.fromMap(result);
}

pulumi.Output<GetStaticSiteCustomDomainResult> getStaticSiteCustomDomainOutput(
  GetStaticSiteCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteCustomDomainResult.fromMap);
}

/// Returns overview of a database connection for a static site by name
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_database_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteDatabaseConnectionResult> getStaticSiteDatabaseConnection(
  GetStaticSiteDatabaseConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteDatabaseConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteDatabaseConnectionResult.fromMap(result);
}

pulumi.Output<GetStaticSiteDatabaseConnectionResult> getStaticSiteDatabaseConnectionOutput(
  GetStaticSiteDatabaseConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteDatabaseConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteDatabaseConnectionResult.fromMap);
}

/// Returns the details of a linked backend linked to a static site by name
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_linked_backend_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteLinkedBackendResult> getStaticSiteLinkedBackend(
  GetStaticSiteLinkedBackendArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteLinkedBackend',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteLinkedBackendResult.fromMap(result);
}

pulumi.Output<GetStaticSiteLinkedBackendResult> getStaticSiteLinkedBackendOutput(
  GetStaticSiteLinkedBackendArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteLinkedBackend',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteLinkedBackendResult.fromMap);
}

/// Returns the details of a linked backend linked to a static site build by name
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_linked_backend_for_build_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteLinkedBackendForBuildResult> getStaticSiteLinkedBackendForBuild(
  GetStaticSiteLinkedBackendForBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteLinkedBackendForBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteLinkedBackendForBuildResult.fromMap(result);
}

pulumi.Output<GetStaticSiteLinkedBackendForBuildResult> getStaticSiteLinkedBackendForBuildOutput(
  GetStaticSiteLinkedBackendForBuildArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteLinkedBackendForBuild',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteLinkedBackendForBuildResult.fromMap);
}

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSitePrivateEndpointConnectionResult> getStaticSitePrivateEndpointConnection(
  GetStaticSitePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSitePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSitePrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetStaticSitePrivateEndpointConnectionResult> getStaticSitePrivateEndpointConnectionOutput(
  GetStaticSitePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSitePrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSitePrivateEndpointConnectionResult.fromMap);
}

/// Description for Gets the details of the user provided function app registered with a static site
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_user_provided_function_app_for_static_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteUserProvidedFunctionAppForStaticSiteResult> getStaticSiteUserProvidedFunctionAppForStaticSite(
  GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteUserProvidedFunctionAppForStaticSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteUserProvidedFunctionAppForStaticSiteResult.fromMap(result);
}

pulumi.Output<GetStaticSiteUserProvidedFunctionAppForStaticSiteResult> getStaticSiteUserProvidedFunctionAppForStaticSiteOutput(
  GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteUserProvidedFunctionAppForStaticSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteUserProvidedFunctionAppForStaticSiteResult.fromMap);
}

/// Description for Gets the details of the user provided function app registered with a static site build
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_static_site_user_provided_function_app_for_static_site_build_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult> getStaticSiteUserProvidedFunctionAppForStaticSiteBuild(
  GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteUserProvidedFunctionAppForStaticSiteBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult.fromMap(result);
}

pulumi.Output<GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult> getStaticSiteUserProvidedFunctionAppForStaticSiteBuildOutput(
  GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getStaticSiteUserProvidedFunctionAppForStaticSiteBuild',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult.fromMap);
}

/// Description for Gets the details of a web, mobile, or API app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppResult> getWebApp(
  GetWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppResult.fromMap(result);
}

pulumi.Output<GetWebAppResult> getWebAppOutput(
  GetWebAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppResult.fromMap);
}

/// Description for Gets site's Authentication / Authorization settings for apps via the V2 format
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_auth_settings_v2_without_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppAuthSettingsV2WithoutSecretsResult> getWebAppAuthSettingsV2WithoutSecrets(
  GetWebAppAuthSettingsV2WithoutSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppAuthSettingsV2WithoutSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppAuthSettingsV2WithoutSecretsResult.fromMap(result);
}

pulumi.Output<GetWebAppAuthSettingsV2WithoutSecretsResult> getWebAppAuthSettingsV2WithoutSecretsOutput(
  GetWebAppAuthSettingsV2WithoutSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppAuthSettingsV2WithoutSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppAuthSettingsV2WithoutSecretsResult.fromMap);
}

/// Gets site's Authentication / Authorization settings for apps via the V2 format
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_auth_settings_v2_without_secrets_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppAuthSettingsV2WithoutSecretsSlotResult> getWebAppAuthSettingsV2WithoutSecretsSlot(
  GetWebAppAuthSettingsV2WithoutSecretsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppAuthSettingsV2WithoutSecretsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppAuthSettingsV2WithoutSecretsSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppAuthSettingsV2WithoutSecretsSlotResult> getWebAppAuthSettingsV2WithoutSecretsSlotOutput(
  GetWebAppAuthSettingsV2WithoutSecretsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppAuthSettingsV2WithoutSecretsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppAuthSettingsV2WithoutSecretsSlotResult.fromMap);
}

/// Description for Get a deployment by its ID for an app, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDeploymentResult> getWebAppDeployment(
  GetWebAppDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDeploymentResult.fromMap(result);
}

pulumi.Output<GetWebAppDeploymentResult> getWebAppDeploymentOutput(
  GetWebAppDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDeploymentResult.fromMap);
}

/// Description for Get a deployment by its ID for an app, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_deployment_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDeploymentSlotResult> getWebAppDeploymentSlot(
  GetWebAppDeploymentSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDeploymentSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDeploymentSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppDeploymentSlotResult> getWebAppDeploymentSlotOutput(
  GetWebAppDeploymentSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDeploymentSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDeploymentSlotResult.fromMap);
}

/// Description for Gets the logging configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_diagnostic_logs_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDiagnosticLogsConfigurationResult> getWebAppDiagnosticLogsConfiguration(
  GetWebAppDiagnosticLogsConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDiagnosticLogsConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDiagnosticLogsConfigurationResult.fromMap(result);
}

pulumi.Output<GetWebAppDiagnosticLogsConfigurationResult> getWebAppDiagnosticLogsConfigurationOutput(
  GetWebAppDiagnosticLogsConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDiagnosticLogsConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDiagnosticLogsConfigurationResult.fromMap);
}

/// Description for Gets the logging configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_diagnostic_logs_configuration_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDiagnosticLogsConfigurationSlotResult> getWebAppDiagnosticLogsConfigurationSlot(
  GetWebAppDiagnosticLogsConfigurationSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDiagnosticLogsConfigurationSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDiagnosticLogsConfigurationSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppDiagnosticLogsConfigurationSlotResult> getWebAppDiagnosticLogsConfigurationSlotOutput(
  GetWebAppDiagnosticLogsConfigurationSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDiagnosticLogsConfigurationSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDiagnosticLogsConfigurationSlotResult.fromMap);
}

/// Description for Get domain ownership identifier for web app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_domain_ownership_identifier_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDomainOwnershipIdentifierResult> getWebAppDomainOwnershipIdentifier(
  GetWebAppDomainOwnershipIdentifierArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDomainOwnershipIdentifier',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDomainOwnershipIdentifierResult.fromMap(result);
}

pulumi.Output<GetWebAppDomainOwnershipIdentifierResult> getWebAppDomainOwnershipIdentifierOutput(
  GetWebAppDomainOwnershipIdentifierArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDomainOwnershipIdentifier',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDomainOwnershipIdentifierResult.fromMap);
}

/// Description for Get domain ownership identifier for web app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_domain_ownership_identifier_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDomainOwnershipIdentifierSlotResult> getWebAppDomainOwnershipIdentifierSlot(
  GetWebAppDomainOwnershipIdentifierSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppDomainOwnershipIdentifierSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDomainOwnershipIdentifierSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppDomainOwnershipIdentifierSlotResult> getWebAppDomainOwnershipIdentifierSlotOutput(
  GetWebAppDomainOwnershipIdentifierSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppDomainOwnershipIdentifierSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDomainOwnershipIdentifierSlotResult.fromMap);
}

/// Description for Returns whether FTP is allowed on the site or not.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_ftp_allowed_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppFtpAllowedResult> getWebAppFtpAllowed(
  GetWebAppFtpAllowedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppFtpAllowed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppFtpAllowedResult.fromMap(result);
}

pulumi.Output<GetWebAppFtpAllowedResult> getWebAppFtpAllowedOutput(
  GetWebAppFtpAllowedArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppFtpAllowed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppFtpAllowedResult.fromMap);
}

/// Description for Returns whether FTP is allowed on the site or not.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_ftp_allowed_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppFtpAllowedSlotResult> getWebAppFtpAllowedSlot(
  GetWebAppFtpAllowedSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppFtpAllowedSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppFtpAllowedSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppFtpAllowedSlotResult> getWebAppFtpAllowedSlotOutput(
  GetWebAppFtpAllowedSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppFtpAllowedSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppFtpAllowedSlotResult.fromMap);
}

/// Description for Get function information by its ID for web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppFunctionResult> getWebAppFunction(
  GetWebAppFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppFunctionResult.fromMap(result);
}

pulumi.Output<GetWebAppFunctionResult> getWebAppFunctionOutput(
  GetWebAppFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppFunctionResult.fromMap);
}

/// Description for Get the named hostname binding for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_host_name_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppHostNameBindingResult> getWebAppHostNameBinding(
  GetWebAppHostNameBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppHostNameBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppHostNameBindingResult.fromMap(result);
}

pulumi.Output<GetWebAppHostNameBindingResult> getWebAppHostNameBindingOutput(
  GetWebAppHostNameBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppHostNameBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppHostNameBindingResult.fromMap);
}

/// Description for Get the named hostname binding for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_host_name_binding_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppHostNameBindingSlotResult> getWebAppHostNameBindingSlot(
  GetWebAppHostNameBindingSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppHostNameBindingSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppHostNameBindingSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppHostNameBindingSlotResult> getWebAppHostNameBindingSlotOutput(
  GetWebAppHostNameBindingSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppHostNameBindingSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppHostNameBindingSlotResult.fromMap);
}

/// Description for Retrieves a specific Service Bus Hybrid Connection used by this Web App.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_hybrid_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppHybridConnectionResult> getWebAppHybridConnection(
  GetWebAppHybridConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppHybridConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppHybridConnectionResult.fromMap(result);
}

pulumi.Output<GetWebAppHybridConnectionResult> getWebAppHybridConnectionOutput(
  GetWebAppHybridConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppHybridConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppHybridConnectionResult.fromMap);
}

/// Description for Retrieves a specific Service Bus Hybrid Connection used by this Web App.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_hybrid_connection_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppHybridConnectionSlotResult> getWebAppHybridConnectionSlot(
  GetWebAppHybridConnectionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppHybridConnectionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppHybridConnectionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppHybridConnectionSlotResult> getWebAppHybridConnectionSlotOutput(
  GetWebAppHybridConnectionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppHybridConnectionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppHybridConnectionSlotResult.fromMap);
}

/// Description for Get function information by its ID for web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_instance_function_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppInstanceFunctionSlotResult> getWebAppInstanceFunctionSlot(
  GetWebAppInstanceFunctionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppInstanceFunctionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppInstanceFunctionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppInstanceFunctionSlotResult> getWebAppInstanceFunctionSlotOutput(
  GetWebAppInstanceFunctionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppInstanceFunctionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppInstanceFunctionSlotResult.fromMap);
}

/// Description for Gets a named add-on of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_premier_add_on_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPremierAddOnResult> getWebAppPremierAddOn(
  GetWebAppPremierAddOnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPremierAddOn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPremierAddOnResult.fromMap(result);
}

pulumi.Output<GetWebAppPremierAddOnResult> getWebAppPremierAddOnOutput(
  GetWebAppPremierAddOnArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPremierAddOn',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPremierAddOnResult.fromMap);
}

/// Description for Gets a named add-on of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_premier_add_on_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPremierAddOnSlotResult> getWebAppPremierAddOnSlot(
  GetWebAppPremierAddOnSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPremierAddOnSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPremierAddOnSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppPremierAddOnSlotResult> getWebAppPremierAddOnSlotOutput(
  GetWebAppPremierAddOnSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPremierAddOnSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPremierAddOnSlotResult.fromMap);
}

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPrivateEndpointConnectionResult> getWebAppPrivateEndpointConnection(
  GetWebAppPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetWebAppPrivateEndpointConnectionResult> getWebAppPrivateEndpointConnectionOutput(
  GetWebAppPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPrivateEndpointConnectionResult.fromMap);
}

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_private_endpoint_connection_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPrivateEndpointConnectionSlotResult> getWebAppPrivateEndpointConnectionSlot(
  GetWebAppPrivateEndpointConnectionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPrivateEndpointConnectionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPrivateEndpointConnectionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppPrivateEndpointConnectionSlotResult> getWebAppPrivateEndpointConnectionSlotOutput(
  GetWebAppPrivateEndpointConnectionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPrivateEndpointConnectionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPrivateEndpointConnectionSlotResult.fromMap);
}

/// Description for Get the named public certificate for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_public_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPublicCertificateResult> getWebAppPublicCertificate(
  GetWebAppPublicCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPublicCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPublicCertificateResult.fromMap(result);
}

pulumi.Output<GetWebAppPublicCertificateResult> getWebAppPublicCertificateOutput(
  GetWebAppPublicCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPublicCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPublicCertificateResult.fromMap);
}

/// Description for Get the named public certificate for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_public_certificate_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppPublicCertificateSlotResult> getWebAppPublicCertificateSlot(
  GetWebAppPublicCertificateSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppPublicCertificateSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppPublicCertificateSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppPublicCertificateSlotResult> getWebAppPublicCertificateSlotOutput(
  GetWebAppPublicCertificateSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppPublicCertificateSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppPublicCertificateSlotResult.fromMap);
}

/// Description for Gets a hybrid connection configuration by its name.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_relay_service_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppRelayServiceConnectionResult> getWebAppRelayServiceConnection(
  GetWebAppRelayServiceConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppRelayServiceConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppRelayServiceConnectionResult.fromMap(result);
}

pulumi.Output<GetWebAppRelayServiceConnectionResult> getWebAppRelayServiceConnectionOutput(
  GetWebAppRelayServiceConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppRelayServiceConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppRelayServiceConnectionResult.fromMap);
}

/// Description for Gets a hybrid connection configuration by its name.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_relay_service_connection_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppRelayServiceConnectionSlotResult> getWebAppRelayServiceConnectionSlot(
  GetWebAppRelayServiceConnectionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppRelayServiceConnectionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppRelayServiceConnectionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppRelayServiceConnectionSlotResult> getWebAppRelayServiceConnectionSlotOutput(
  GetWebAppRelayServiceConnectionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppRelayServiceConnectionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppRelayServiceConnectionSlotResult.fromMap);
}

/// Description for Returns whether Scm basic auth is allowed on the site or not.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_scm_allowed_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppScmAllowedResult> getWebAppScmAllowed(
  GetWebAppScmAllowedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppScmAllowed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppScmAllowedResult.fromMap(result);
}

pulumi.Output<GetWebAppScmAllowedResult> getWebAppScmAllowedOutput(
  GetWebAppScmAllowedArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppScmAllowed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppScmAllowedResult.fromMap);
}

/// Description for Returns whether Scm basic auth is allowed on the site or not.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_scm_allowed_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppScmAllowedSlotResult> getWebAppScmAllowedSlot(
  GetWebAppScmAllowedSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppScmAllowedSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppScmAllowedSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppScmAllowedSlotResult> getWebAppScmAllowedSlotOutput(
  GetWebAppScmAllowedSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppScmAllowedSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppScmAllowedSlotResult.fromMap);
}

/// Gets a site container of a site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_site_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSiteContainerResult> getWebAppSiteContainer(
  GetWebAppSiteContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSiteContainerResult.fromMap(result);
}

pulumi.Output<GetWebAppSiteContainerResult> getWebAppSiteContainerOutput(
  GetWebAppSiteContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSiteContainerResult.fromMap);
}

/// Gets a site container of a site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_site_container_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSiteContainerSlotResult> getWebAppSiteContainerSlot(
  GetWebAppSiteContainerSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteContainerSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSiteContainerSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppSiteContainerSlotResult> getWebAppSiteContainerSlotOutput(
  GetWebAppSiteContainerSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteContainerSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSiteContainerSlotResult.fromMap);
}

/// Description for Get site extension information by its ID for a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_site_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSiteExtensionResult> getWebAppSiteExtension(
  GetWebAppSiteExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSiteExtensionResult.fromMap(result);
}

pulumi.Output<GetWebAppSiteExtensionResult> getWebAppSiteExtensionOutput(
  GetWebAppSiteExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSiteExtensionResult.fromMap);
}

/// Description for Get site extension information by its ID for a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_site_extension_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSiteExtensionSlotResult> getWebAppSiteExtensionSlot(
  GetWebAppSiteExtensionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteExtensionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSiteExtensionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppSiteExtensionSlotResult> getWebAppSiteExtensionSlotOutput(
  GetWebAppSiteExtensionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSiteExtensionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSiteExtensionSlotResult.fromMap);
}

/// Description for Gets the details of a web, mobile, or API app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSlotResult> getWebAppSlot(
  GetWebAppSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppSlotResult> getWebAppSlotOutput(
  GetWebAppSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSlotResult.fromMap);
}

/// Description for Gets the names of app settings and connection strings that stick to the slot (not swapped).
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_slot_configuration_names_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSlotConfigurationNamesResult> getWebAppSlotConfigurationNames(
  GetWebAppSlotConfigurationNamesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSlotConfigurationNames',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSlotConfigurationNamesResult.fromMap(result);
}

pulumi.Output<GetWebAppSlotConfigurationNamesResult> getWebAppSlotConfigurationNamesOutput(
  GetWebAppSlotConfigurationNamesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSlotConfigurationNames',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSlotConfigurationNamesResult.fromMap);
}

/// Description for Gets the source control configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_source_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSourceControlResult> getWebAppSourceControl(
  GetWebAppSourceControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSourceControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSourceControlResult.fromMap(result);
}

pulumi.Output<GetWebAppSourceControlResult> getWebAppSourceControlOutput(
  GetWebAppSourceControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSourceControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSourceControlResult.fromMap);
}

/// Description for Gets the source control configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_source_control_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSourceControlSlotResult> getWebAppSourceControlSlot(
  GetWebAppSourceControlSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSourceControlSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSourceControlSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppSourceControlSlotResult> getWebAppSourceControlSlotOutput(
  GetWebAppSourceControlSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSourceControlSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSourceControlSlotResult.fromMap);
}

/// Description for Gets a Swift Virtual Network connection.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_swift_virtual_network_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSwiftVirtualNetworkConnectionResult> getWebAppSwiftVirtualNetworkConnection(
  GetWebAppSwiftVirtualNetworkConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSwiftVirtualNetworkConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSwiftVirtualNetworkConnectionResult.fromMap(result);
}

pulumi.Output<GetWebAppSwiftVirtualNetworkConnectionResult> getWebAppSwiftVirtualNetworkConnectionOutput(
  GetWebAppSwiftVirtualNetworkConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSwiftVirtualNetworkConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSwiftVirtualNetworkConnectionResult.fromMap);
}

/// Description for Gets a Swift Virtual Network connection.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_swift_virtual_network_connection_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSwiftVirtualNetworkConnectionSlotResult> getWebAppSwiftVirtualNetworkConnectionSlot(
  GetWebAppSwiftVirtualNetworkConnectionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppSwiftVirtualNetworkConnectionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSwiftVirtualNetworkConnectionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppSwiftVirtualNetworkConnectionSlotResult> getWebAppSwiftVirtualNetworkConnectionSlotOutput(
  GetWebAppSwiftVirtualNetworkConnectionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppSwiftVirtualNetworkConnectionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSwiftVirtualNetworkConnectionSlotResult.fromMap);
}

/// Description for Gets a virtual network the app (or deployment slot) is connected to by name.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_vnet_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppVnetConnectionResult> getWebAppVnetConnection(
  GetWebAppVnetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppVnetConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppVnetConnectionResult.fromMap(result);
}

pulumi.Output<GetWebAppVnetConnectionResult> getWebAppVnetConnectionOutput(
  GetWebAppVnetConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppVnetConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppVnetConnectionResult.fromMap);
}

/// Description for Gets a virtual network the app (or deployment slot) is connected to by name.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_get_web_app_vnet_connection_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppVnetConnectionSlotResult> getWebAppVnetConnectionSlot(
  GetWebAppVnetConnectionSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:getWebAppVnetConnectionSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppVnetConnectionSlotResult.fromMap(result);
}

pulumi.Output<GetWebAppVnetConnectionSlotResult> getWebAppVnetConnectionSlotOutput(
  GetWebAppVnetConnectionSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:getWebAppVnetConnectionSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppVnetConnectionSlotResult.fromMap);
}

/// Description for Get the send key name and value of a Hybrid Connection.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_app_service_plan_hybrid_connection_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAppServicePlanHybridConnectionKeysResult> listAppServicePlanHybridConnectionKeys(
  ListAppServicePlanHybridConnectionKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listAppServicePlanHybridConnectionKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAppServicePlanHybridConnectionKeysResult.fromMap(result);
}

pulumi.Output<ListAppServicePlanHybridConnectionKeysResult> listAppServicePlanHybridConnectionKeysOutput(
  ListAppServicePlanHybridConnectionKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listAppServicePlanHybridConnectionKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAppServicePlanHybridConnectionKeysResult.fromMap);
}

/// Description for Get the instance details for an app service plan.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_app_service_plan_server_farm_instance_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAppServicePlanServerFarmInstanceDetailsResult> listAppServicePlanServerFarmInstanceDetails(
  ListAppServicePlanServerFarmInstanceDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listAppServicePlanServerFarmInstanceDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAppServicePlanServerFarmInstanceDetailsResult.fromMap(result);
}

pulumi.Output<ListAppServicePlanServerFarmInstanceDetailsResult> listAppServicePlanServerFarmInstanceDetailsOutput(
  ListAppServicePlanServerFarmInstanceDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listAppServicePlanServerFarmInstanceDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAppServicePlanServerFarmInstanceDetailsResult.fromMap);
}

/// Lists the consent links of a connection
///
/// Uses Azure REST API version 2016-06-01.
///
/// Other available API versions: 2015-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_connection_consent_links_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectionConsentLinksResult> listConnectionConsentLinks(
  ListConnectionConsentLinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listConnectionConsentLinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectionConsentLinksResult.fromMap(result);
}

pulumi.Output<ListConnectionConsentLinksResult> listConnectionConsentLinksOutput(
  ListConnectionConsentLinksArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listConnectionConsentLinks',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectionConsentLinksResult.fromMap);
}

/// Lists connection keys.
///
/// Uses Azure REST API version 2015-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_connection_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectionKeysResult> listConnectionKeys(
  ListConnectionKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listConnectionKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectionKeysResult.fromMap(result);
}

pulumi.Output<ListConnectionKeysResult> listConnectionKeysOutput(
  ListConnectionKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listConnectionKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectionKeysResult.fromMap);
}

/// This returns the list of interfaces in the WSDL
///
/// Uses Azure REST API version 2016-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_custom_api_wsdl_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCustomApiWsdlInterfacesResult> listCustomApiWsdlInterfaces(
  ListCustomApiWsdlInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listCustomApiWsdlInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCustomApiWsdlInterfacesResult.fromMap(result);
}

pulumi.Output<ListCustomApiWsdlInterfacesResult> listCustomApiWsdlInterfacesOutput(
  ListCustomApiWsdlInterfacesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listCustomApiWsdlInterfaces',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListCustomApiWsdlInterfacesResult.fromMap);
}

/// Description for List all apps that are assigned to a hostname.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-03-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_site_identifiers_assigned_to_host_name_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSiteIdentifiersAssignedToHostNameResult> listSiteIdentifiersAssignedToHostName(
  ListSiteIdentifiersAssignedToHostNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listSiteIdentifiersAssignedToHostName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSiteIdentifiersAssignedToHostNameResult.fromMap(result);
}

pulumi.Output<ListSiteIdentifiersAssignedToHostNameResult> listSiteIdentifiersAssignedToHostNameOutput(
  ListSiteIdentifiersAssignedToHostNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listSiteIdentifiersAssignedToHostName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSiteIdentifiersAssignedToHostNameResult.fromMap);
}

/// Description for Gets the application settings of a static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_app_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteAppSettingsResult> listStaticSiteAppSettings(
  ListStaticSiteAppSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteAppSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteAppSettingsResult.fromMap(result);
}

pulumi.Output<ListStaticSiteAppSettingsResult> listStaticSiteAppSettingsOutput(
  ListStaticSiteAppSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteAppSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteAppSettingsResult.fromMap);
}

/// Description for Gets the application settings of a static site build.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_build_app_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteBuildAppSettingsResult> listStaticSiteBuildAppSettings(
  ListStaticSiteBuildAppSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteBuildAppSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteBuildAppSettingsResult.fromMap(result);
}

pulumi.Output<ListStaticSiteBuildAppSettingsResult> listStaticSiteBuildAppSettingsOutput(
  ListStaticSiteBuildAppSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteBuildAppSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteBuildAppSettingsResult.fromMap);
}

/// Description for Gets the application settings of a static site build.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_build_function_app_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteBuildFunctionAppSettingsResult> listStaticSiteBuildFunctionAppSettings(
  ListStaticSiteBuildFunctionAppSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteBuildFunctionAppSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteBuildFunctionAppSettingsResult.fromMap(result);
}

pulumi.Output<ListStaticSiteBuildFunctionAppSettingsResult> listStaticSiteBuildFunctionAppSettingsOutput(
  ListStaticSiteBuildFunctionAppSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteBuildFunctionAppSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteBuildFunctionAppSettingsResult.fromMap);
}

/// Description for Lists the roles configured for the static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_configured_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteConfiguredRolesResult> listStaticSiteConfiguredRoles(
  ListStaticSiteConfiguredRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteConfiguredRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteConfiguredRolesResult.fromMap(result);
}

pulumi.Output<ListStaticSiteConfiguredRolesResult> listStaticSiteConfiguredRolesOutput(
  ListStaticSiteConfiguredRolesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteConfiguredRoles',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteConfiguredRolesResult.fromMap);
}

/// Description for Gets the application settings of a static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_function_app_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteFunctionAppSettingsResult> listStaticSiteFunctionAppSettings(
  ListStaticSiteFunctionAppSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteFunctionAppSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteFunctionAppSettingsResult.fromMap(result);
}

pulumi.Output<ListStaticSiteFunctionAppSettingsResult> listStaticSiteFunctionAppSettingsOutput(
  ListStaticSiteFunctionAppSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteFunctionAppSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteFunctionAppSettingsResult.fromMap);
}

/// Description for Lists the secrets for an existing static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteSecretsResult> listStaticSiteSecrets(
  ListStaticSiteSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteSecretsResult.fromMap(result);
}

pulumi.Output<ListStaticSiteSecretsResult> listStaticSiteSecretsOutput(
  ListStaticSiteSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteSecretsResult.fromMap);
}

/// Description for Gets the list of users of a static site.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_static_site_users_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStaticSiteUsersResult> listStaticSiteUsers(
  ListStaticSiteUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStaticSiteUsersResult.fromMap(result);
}

pulumi.Output<ListStaticSiteUsersResult> listStaticSiteUsersOutput(
  ListStaticSiteUsersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listStaticSiteUsers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListStaticSiteUsersResult.fromMap);
}

/// Description for Gets the application settings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_application_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppApplicationSettingsResult> listWebAppApplicationSettings(
  ListWebAppApplicationSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppApplicationSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppApplicationSettingsResult.fromMap(result);
}

pulumi.Output<ListWebAppApplicationSettingsResult> listWebAppApplicationSettingsOutput(
  ListWebAppApplicationSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppApplicationSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppApplicationSettingsResult.fromMap);
}

/// Description for Gets the application settings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_application_settings_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppApplicationSettingsSlotResult> listWebAppApplicationSettingsSlot(
  ListWebAppApplicationSettingsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppApplicationSettingsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppApplicationSettingsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppApplicationSettingsSlotResult> listWebAppApplicationSettingsSlotOutput(
  ListWebAppApplicationSettingsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppApplicationSettingsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppApplicationSettingsSlotResult.fromMap);
}

/// Description for Gets the Authentication/Authorization settings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_auth_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppAuthSettingsResult> listWebAppAuthSettings(
  ListWebAppAuthSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppAuthSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppAuthSettingsResult.fromMap(result);
}

pulumi.Output<ListWebAppAuthSettingsResult> listWebAppAuthSettingsOutput(
  ListWebAppAuthSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppAuthSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppAuthSettingsResult.fromMap);
}

/// Description for Gets the Authentication/Authorization settings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_auth_settings_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppAuthSettingsSlotResult> listWebAppAuthSettingsSlot(
  ListWebAppAuthSettingsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppAuthSettingsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppAuthSettingsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppAuthSettingsSlotResult> listWebAppAuthSettingsSlotOutput(
  ListWebAppAuthSettingsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppAuthSettingsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppAuthSettingsSlotResult.fromMap);
}

/// Description for Gets the Azure storage account configurations of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_azure_storage_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppAzureStorageAccountsResult> listWebAppAzureStorageAccounts(
  ListWebAppAzureStorageAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppAzureStorageAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppAzureStorageAccountsResult.fromMap(result);
}

pulumi.Output<ListWebAppAzureStorageAccountsResult> listWebAppAzureStorageAccountsOutput(
  ListWebAppAzureStorageAccountsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppAzureStorageAccounts',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppAzureStorageAccountsResult.fromMap);
}

/// Description for Gets the Azure storage account configurations of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_azure_storage_accounts_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppAzureStorageAccountsSlotResult> listWebAppAzureStorageAccountsSlot(
  ListWebAppAzureStorageAccountsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppAzureStorageAccountsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppAzureStorageAccountsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppAzureStorageAccountsSlotResult> listWebAppAzureStorageAccountsSlotOutput(
  ListWebAppAzureStorageAccountsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppAzureStorageAccountsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppAzureStorageAccountsSlotResult.fromMap);
}

/// Description for Gets the backup configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_backup_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppBackupConfigurationResult> listWebAppBackupConfiguration(
  ListWebAppBackupConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppBackupConfigurationResult.fromMap(result);
}

pulumi.Output<ListWebAppBackupConfigurationResult> listWebAppBackupConfigurationOutput(
  ListWebAppBackupConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppBackupConfigurationResult.fromMap);
}

/// Description for Gets the backup configuration of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_backup_configuration_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppBackupConfigurationSlotResult> listWebAppBackupConfigurationSlot(
  ListWebAppBackupConfigurationSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupConfigurationSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppBackupConfigurationSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppBackupConfigurationSlotResult> listWebAppBackupConfigurationSlotOutput(
  ListWebAppBackupConfigurationSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupConfigurationSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppBackupConfigurationSlotResult.fromMap);
}

/// Description for Gets status of a web app backup that may be in progress, including secrets associated with the backup, such as the Azure Storage SAS URL. Also can be used to update the SAS URL for the backup if a new URL is passed in the request body.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_backup_status_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppBackupStatusSecretsResult> listWebAppBackupStatusSecrets(
  ListWebAppBackupStatusSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupStatusSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppBackupStatusSecretsResult.fromMap(result);
}

pulumi.Output<ListWebAppBackupStatusSecretsResult> listWebAppBackupStatusSecretsOutput(
  ListWebAppBackupStatusSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupStatusSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppBackupStatusSecretsResult.fromMap);
}

/// Description for Gets status of a web app backup that may be in progress, including secrets associated with the backup, such as the Azure Storage SAS URL. Also can be used to update the SAS URL for the backup if a new URL is passed in the request body.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_backup_status_secrets_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppBackupStatusSecretsSlotResult> listWebAppBackupStatusSecretsSlot(
  ListWebAppBackupStatusSecretsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupStatusSecretsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppBackupStatusSecretsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppBackupStatusSecretsSlotResult> listWebAppBackupStatusSecretsSlotOutput(
  ListWebAppBackupStatusSecretsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppBackupStatusSecretsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppBackupStatusSecretsSlotResult.fromMap);
}

/// Description for Gets the connection strings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_connection_strings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppConnectionStringsResult> listWebAppConnectionStrings(
  ListWebAppConnectionStringsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppConnectionStrings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppConnectionStringsResult.fromMap(result);
}

pulumi.Output<ListWebAppConnectionStringsResult> listWebAppConnectionStringsOutput(
  ListWebAppConnectionStringsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppConnectionStrings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppConnectionStringsResult.fromMap);
}

/// Description for Gets the connection strings of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_connection_strings_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppConnectionStringsSlotResult> listWebAppConnectionStringsSlot(
  ListWebAppConnectionStringsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppConnectionStringsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppConnectionStringsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppConnectionStringsSlotResult> listWebAppConnectionStringsSlotOutput(
  ListWebAppConnectionStringsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppConnectionStringsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppConnectionStringsSlotResult.fromMap);
}

/// Description for Get function keys for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_function_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppFunctionKeysResult> listWebAppFunctionKeys(
  ListWebAppFunctionKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppFunctionKeysResult.fromMap(result);
}

pulumi.Output<ListWebAppFunctionKeysResult> listWebAppFunctionKeysOutput(
  ListWebAppFunctionKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppFunctionKeysResult.fromMap);
}

/// Description for Get function keys for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_function_keys_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppFunctionKeysSlotResult> listWebAppFunctionKeysSlot(
  ListWebAppFunctionKeysSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionKeysSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppFunctionKeysSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppFunctionKeysSlotResult> listWebAppFunctionKeysSlotOutput(
  ListWebAppFunctionKeysSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionKeysSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppFunctionKeysSlotResult.fromMap);
}

/// Description for Get function secrets for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_function_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppFunctionSecretsResult> listWebAppFunctionSecrets(
  ListWebAppFunctionSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppFunctionSecretsResult.fromMap(result);
}

pulumi.Output<ListWebAppFunctionSecretsResult> listWebAppFunctionSecretsOutput(
  ListWebAppFunctionSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppFunctionSecretsResult.fromMap);
}

/// Description for Get function secrets for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_function_secrets_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppFunctionSecretsSlotResult> listWebAppFunctionSecretsSlot(
  ListWebAppFunctionSecretsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionSecretsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppFunctionSecretsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppFunctionSecretsSlotResult> listWebAppFunctionSecretsSlotOutput(
  ListWebAppFunctionSecretsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppFunctionSecretsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppFunctionSecretsSlotResult.fromMap);
}

/// Description for Get host secrets for a function app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_host_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppHostKeysResult> listWebAppHostKeys(
  ListWebAppHostKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppHostKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppHostKeysResult.fromMap(result);
}

pulumi.Output<ListWebAppHostKeysResult> listWebAppHostKeysOutput(
  ListWebAppHostKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppHostKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppHostKeysResult.fromMap);
}

/// Description for Get host secrets for a function app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_host_keys_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppHostKeysSlotResult> listWebAppHostKeysSlot(
  ListWebAppHostKeysSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppHostKeysSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppHostKeysSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppHostKeysSlotResult> listWebAppHostKeysSlotOutput(
  ListWebAppHostKeysSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppHostKeysSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppHostKeysSlotResult.fromMap);
}

/// Gets the send key name and value for a Hybrid Connection.
///
/// Uses Azure REST API version 2018-11-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_hybrid_connection_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppHybridConnectionKeysResult> listWebAppHybridConnectionKeys(
  ListWebAppHybridConnectionKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppHybridConnectionKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppHybridConnectionKeysResult.fromMap(result);
}

pulumi.Output<ListWebAppHybridConnectionKeysResult> listWebAppHybridConnectionKeysOutput(
  ListWebAppHybridConnectionKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppHybridConnectionKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppHybridConnectionKeysResult.fromMap);
}

/// Gets the send key name and value for a Hybrid Connection.
///
/// Uses Azure REST API version 2018-11-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_hybrid_connection_keys_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppHybridConnectionKeysSlotResult> listWebAppHybridConnectionKeysSlot(
  ListWebAppHybridConnectionKeysSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppHybridConnectionKeysSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppHybridConnectionKeysSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppHybridConnectionKeysSlotResult> listWebAppHybridConnectionKeysSlotOutput(
  ListWebAppHybridConnectionKeysSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppHybridConnectionKeysSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppHybridConnectionKeysSlotResult.fromMap);
}

/// Description for Gets the metadata of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_metadata_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppMetadataResult> listWebAppMetadata(
  ListWebAppMetadataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppMetadata',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppMetadataResult.fromMap(result);
}

pulumi.Output<ListWebAppMetadataResult> listWebAppMetadataOutput(
  ListWebAppMetadataArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppMetadata',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppMetadataResult.fromMap);
}

/// Description for Gets the metadata of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_metadata_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppMetadataSlotResult> listWebAppMetadataSlot(
  ListWebAppMetadataSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppMetadataSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppMetadataSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppMetadataSlotResult> listWebAppMetadataSlotOutput(
  ListWebAppMetadataSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppMetadataSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppMetadataSlotResult.fromMap);
}

/// Description for Gets the Git/FTP publishing credentials of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_publishing_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppPublishingCredentialsResult> listWebAppPublishingCredentials(
  ListWebAppPublishingCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppPublishingCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppPublishingCredentialsResult.fromMap(result);
}

pulumi.Output<ListWebAppPublishingCredentialsResult> listWebAppPublishingCredentialsOutput(
  ListWebAppPublishingCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppPublishingCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppPublishingCredentialsResult.fromMap);
}

/// Description for Gets the Git/FTP publishing credentials of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_publishing_credentials_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppPublishingCredentialsSlotResult> listWebAppPublishingCredentialsSlot(
  ListWebAppPublishingCredentialsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppPublishingCredentialsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppPublishingCredentialsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppPublishingCredentialsSlotResult> listWebAppPublishingCredentialsSlotOutput(
  ListWebAppPublishingCredentialsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppPublishingCredentialsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppPublishingCredentialsSlotResult.fromMap);
}

/// Description for Gets existing backups of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_site_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSiteBackupsResult> listWebAppSiteBackups(
  ListWebAppSiteBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSiteBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSiteBackupsResult.fromMap(result);
}

pulumi.Output<ListWebAppSiteBackupsResult> listWebAppSiteBackupsOutput(
  ListWebAppSiteBackupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSiteBackups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSiteBackupsResult.fromMap);
}

/// Description for Gets existing backups of an app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_site_backups_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSiteBackupsSlotResult> listWebAppSiteBackupsSlot(
  ListWebAppSiteBackupsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSiteBackupsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSiteBackupsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppSiteBackupsSlotResult> listWebAppSiteBackupsSlotOutput(
  ListWebAppSiteBackupsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSiteBackupsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSiteBackupsSlotResult.fromMap);
}

/// Description for Gets the Push settings associated with web app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_site_push_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSitePushSettingsResult> listWebAppSitePushSettings(
  ListWebAppSitePushSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSitePushSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSitePushSettingsResult.fromMap(result);
}

pulumi.Output<ListWebAppSitePushSettingsResult> listWebAppSitePushSettingsOutput(
  ListWebAppSitePushSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSitePushSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSitePushSettingsResult.fromMap);
}

/// Description for Gets the Push settings associated with web app.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_site_push_settings_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSitePushSettingsSlotResult> listWebAppSitePushSettingsSlot(
  ListWebAppSitePushSettingsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSitePushSettingsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSitePushSettingsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppSitePushSettingsSlotResult> listWebAppSitePushSettingsSlotOutput(
  ListWebAppSitePushSettingsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSitePushSettingsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSitePushSettingsSlotResult.fromMap);
}

/// Description for This is to allow calling via powershell and ARM template.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_sync_function_triggers_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSyncFunctionTriggersResult> listWebAppSyncFunctionTriggers(
  ListWebAppSyncFunctionTriggersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSyncFunctionTriggers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSyncFunctionTriggersResult.fromMap(result);
}

pulumi.Output<ListWebAppSyncFunctionTriggersResult> listWebAppSyncFunctionTriggersOutput(
  ListWebAppSyncFunctionTriggersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSyncFunctionTriggers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSyncFunctionTriggersResult.fromMap);
}

/// Description for This is to allow calling via powershell and ARM template.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_sync_function_triggers_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppSyncFunctionTriggersSlotResult> listWebAppSyncFunctionTriggersSlot(
  ListWebAppSyncFunctionTriggersSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppSyncFunctionTriggersSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppSyncFunctionTriggersSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppSyncFunctionTriggersSlotResult> listWebAppSyncFunctionTriggersSlotOutput(
  ListWebAppSyncFunctionTriggersSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppSyncFunctionTriggersSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppSyncFunctionTriggersSlotResult.fromMap);
}

/// Lists logic app's connections for web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_workflows_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppWorkflowsConnectionsResult> listWebAppWorkflowsConnections(
  ListWebAppWorkflowsConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppWorkflowsConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppWorkflowsConnectionsResult.fromMap(result);
}

pulumi.Output<ListWebAppWorkflowsConnectionsResult> listWebAppWorkflowsConnectionsOutput(
  ListWebAppWorkflowsConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppWorkflowsConnections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppWorkflowsConnectionsResult.fromMap);
}

/// Lists logic app's connections for web site, or a deployment slot.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_web_app_workflows_connections_slot_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebAppWorkflowsConnectionsSlotResult> listWebAppWorkflowsConnectionsSlot(
  ListWebAppWorkflowsConnectionsSlotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWebAppWorkflowsConnectionsSlot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebAppWorkflowsConnectionsSlotResult.fromMap(result);
}

pulumi.Output<ListWebAppWorkflowsConnectionsSlotResult> listWebAppWorkflowsConnectionsSlotOutput(
  ListWebAppWorkflowsConnectionsSlotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWebAppWorkflowsConnectionsSlot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebAppWorkflowsConnectionsSlotResult.fromMap);
}

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_workflow_run_action_expression_traces_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowRunActionExpressionTracesResult> listWorkflowRunActionExpressionTraces(
  ListWorkflowRunActionExpressionTracesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWorkflowRunActionExpressionTraces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowRunActionExpressionTracesResult.fromMap(result);
}

pulumi.Output<ListWorkflowRunActionExpressionTracesResult> listWorkflowRunActionExpressionTracesOutput(
  ListWorkflowRunActionExpressionTracesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWorkflowRunActionExpressionTraces',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowRunActionExpressionTracesResult.fromMap);
}

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_workflow_run_action_repetition_expression_traces_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowRunActionRepetitionExpressionTracesResult> listWorkflowRunActionRepetitionExpressionTraces(
  ListWorkflowRunActionRepetitionExpressionTracesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWorkflowRunActionRepetitionExpressionTraces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(result);
}

pulumi.Output<ListWorkflowRunActionRepetitionExpressionTracesResult> listWorkflowRunActionRepetitionExpressionTracesOutput(
  ListWorkflowRunActionRepetitionExpressionTracesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWorkflowRunActionRepetitionExpressionTraces',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap);
}

/// Get the callback URL for a workflow trigger.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_web_list_workflow_trigger_callback_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkflowTriggerCallbackUrlResult> listWorkflowTriggerCallbackUrl(
  ListWorkflowTriggerCallbackUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:web:listWorkflowTriggerCallbackUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkflowTriggerCallbackUrlResult.fromMap(result);
}

pulumi.Output<ListWorkflowTriggerCallbackUrlResult> listWorkflowTriggerCallbackUrlOutput(
  ListWorkflowTriggerCallbackUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:web:listWorkflowTriggerCallbackUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkflowTriggerCallbackUrlResult.fromMap);
}
