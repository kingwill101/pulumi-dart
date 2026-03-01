import 'package:pulumi/pulumi.dart' as pulumi;
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

/// Description for Get the properties of an App Service Environment.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Full view of the custom domain suffix configuration for ASEv3.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get an App Service plan.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the RDP password for an IsCustomMode ServerFarm.
///
/// Uses Azure REST API version 2025-03-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get a certificate.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-03-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the properties of a Kubernetes Environment.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// SSL certificate for an app.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// SSL certificate for an app.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the details of a static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Static Site Database Connection resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets an existing custom domain for a particular static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Static Site Database Connection resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Static Site Linked Backend ARM resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Static Site Linked Backend ARM resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the details of the user provided function app registered with a static site
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the details of the user provided function app registered with a static site build
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the details of a web, mobile, or API app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets site's Authentication / Authorization settings for apps via the V2 format
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Configuration settings for the Azure App Service Authentication / Authorization V2 feature.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get a deployment by its ID for an app, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get a deployment by its ID for an app, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the logging configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the logging configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get domain ownership identifier for web app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get domain ownership identifier for web app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Returns whether FTP is allowed on the site or not.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Returns whether FTP is allowed on the site or not.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function information by its ID for web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the named hostname binding for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the named hostname binding for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Retrieves a specific Service Bus Hybrid Connection used by this Web App.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Retrieves a specific Service Bus Hybrid Connection used by this Web App.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function information by its ID for web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a named add-on of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a named add-on of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a private endpoint connection
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the named public certificate for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the named public certificate for an app (or deployment slot, if specified).
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a hybrid connection configuration by its name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a hybrid connection configuration by its name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Returns whether Scm basic auth is allowed on the site or not.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Returns whether Scm basic auth is allowed on the site or not.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Container of a site
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Container of a site
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get site extension information by its ID for a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get site extension information by its ID for a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the details of a web, mobile, or API app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the names of app settings and connection strings that stick to the slot (not swapped).
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the source control configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the source control configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a Swift Virtual Network connection.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a Swift Virtual Network connection.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a virtual network the app (or deployment slot) is connected to by name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets a virtual network the app (or deployment slot) is connected to by name.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the send key name and value of a Hybrid Connection.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get the instance details for an app service plan.
///
/// Uses Azure REST API version 2025-03-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for List all apps that are assigned to a hostname.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-03-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of a static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of a static site build.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of a static site build.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Lists the roles configured for the static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of a static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Lists the secrets for an existing static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the list of users of a static site.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the application settings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Authentication/Authorization settings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Authentication/Authorization settings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Azure storage account configurations of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Azure storage account configurations of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the backup configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the backup configuration of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets status of a web app backup that may be in progress, including secrets associated with the backup, such as the Azure Storage SAS URL. Also can be used to update the SAS URL for the backup if a new URL is passed in the request body.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets status of a web app backup that may be in progress, including secrets associated with the backup, such as the Azure Storage SAS URL. Also can be used to update the SAS URL for the backup if a new URL is passed in the request body.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the connection strings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the connection strings of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function keys for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function keys for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function secrets for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get function secrets for a function in a web site, or a deployment slot.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get host secrets for a function app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Get host secrets for a function app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the metadata of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the metadata of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Git/FTP publishing credentials of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Git/FTP publishing credentials of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets existing backups of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets existing backups of an app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Push settings associated with web app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for Gets the Push settings associated with web app.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for This is to allow calling via powershell and ARM template.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Description for This is to allow calling via powershell and ARM template.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Workflow properties definition.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Workflow properties definition.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Lists a workflow run expression trace.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the callback URL for a workflow trigger.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
