import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_advanced_threat_protection_args.dart';
import 'get_advanced_threat_protection_result.dart';
import 'get_alerts_suppression_rule_args.dart';
import 'get_alerts_suppression_rule_result.dart';
import 'get_apicollection_args.dart';
import 'get_apicollection_by_azure_api_management_service_args.dart';
import 'get_apicollection_by_azure_api_management_service_result.dart';
import 'get_apicollection_result.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_assessment_args.dart';
import 'get_assessment_metadata_in_subscription_args.dart';
import 'get_assessment_metadata_in_subscription_result.dart';
import 'get_assessment_result.dart';
import 'get_assessments_metadata_subscription_args.dart';
import 'get_assessments_metadata_subscription_result.dart';
import 'get_assignment_args.dart';
import 'get_assignment_result.dart';
import 'get_automation_args.dart';
import 'get_automation_result.dart';
import 'get_azure_servers_setting_args.dart';
import 'get_azure_servers_setting_result.dart';
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_custom_assessment_automation_args.dart';
import 'get_custom_assessment_automation_result.dart';
import 'get_custom_entity_store_assignment_args.dart';
import 'get_custom_entity_store_assignment_result.dart';
import 'get_custom_recommendation_args.dart';
import 'get_custom_recommendation_result.dart';
import 'get_defender_for_storage_args.dart';
import 'get_defender_for_storage_result.dart';
import 'get_dev_ops_configuration_args.dart';
import 'get_dev_ops_configuration_result.dart';
import 'get_device_security_group_args.dart';
import 'get_device_security_group_result.dart';
import 'get_governance_assignment_args.dart';
import 'get_governance_assignment_result.dart';
import 'get_governance_rule_args.dart';
import 'get_governance_rule_result.dart';
import 'get_iot_security_solution_args.dart';
import 'get_iot_security_solution_result.dart';
import 'get_jit_network_access_policy_args.dart';
import 'get_jit_network_access_policy_result.dart';
import 'get_pricing_args.dart';
import 'get_pricing_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_private_link_args.dart';
import 'get_private_link_result.dart';
import 'get_security_connector_application_args.dart';
import 'get_security_connector_application_result.dart';
import 'get_security_connector_args.dart';
import 'get_security_connector_result.dart';
import 'get_security_contact_args.dart';
import 'get_security_contact_result.dart';
import 'get_security_operator_args.dart';
import 'get_security_operator_result.dart';
import 'get_security_standard_args.dart';
import 'get_security_standard_result.dart';
import 'get_server_vulnerability_assessment_args.dart';
import 'get_server_vulnerability_assessment_result.dart';
import 'get_sql_vulnerability_assessment_baseline_rule_args.dart';
import 'get_sql_vulnerability_assessment_baseline_rule_result.dart';
import 'get_standard_args.dart';
import 'get_standard_assignment_args.dart';
import 'get_standard_assignment_result.dart';
import 'get_standard_result.dart';
import 'get_workspace_setting_args.dart';
import 'get_workspace_setting_result.dart';
import 'list_azure_dev_ops_org_available_args.dart';
import 'list_azure_dev_ops_org_available_result.dart';
import 'list_git_hub_owner_available_args.dart';
import 'list_git_hub_owner_available_result.dart';
import 'list_git_lab_group_available_args.dart';
import 'list_git_lab_group_available_result.dart';
import 'list_git_lab_subgroup_args.dart';
import 'list_git_lab_subgroup_result.dart';

/// Gets an Azure API Management API if it has been onboarded to Defender for APIs. If an Azure API Management API is onboarded to Defender for APIs, the system will monitor the operations within the Azure API Management API for intrusive behaviors and provide alerts for attacks that have been detected.
///
/// Uses Azure REST API version 2022-11-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_apicollection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAPICollectionResult> getAPICollection(
  GetAPICollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAPICollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAPICollectionResult.fromMap(result);
}

/// Gets an Azure API Management API if it has been onboarded to Microsoft Defender for APIs. If an Azure API Management API is onboarded to Microsoft Defender for APIs, the system will monitor the operations within the Azure API Management API for intrusive behaviors and provide alerts for attacks that have been detected.
///
/// Uses Azure REST API version 2023-11-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_apicollection_by_azure_api_management_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAPICollectionByAzureApiManagementServiceResult>
getAPICollectionByAzureApiManagementService(
  GetAPICollectionByAzureApiManagementServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAPICollectionByAzureApiManagementService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAPICollectionByAzureApiManagementServiceResult.fromMap(result);
}

/// Gets the Advanced Threat Protection settings for the specified resource.
///
/// Uses Azure REST API version 2019-01-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_advanced_threat_protection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdvancedThreatProtectionResult> getAdvancedThreatProtection(
  GetAdvancedThreatProtectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAdvancedThreatProtection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdvancedThreatProtectionResult.fromMap(result);
}

/// Get dismiss rule, with name: {alertsSuppressionRuleName}, for the given subscription
///
/// Uses Azure REST API version 2019-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_alerts_suppression_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertsSuppressionRuleResult> getAlertsSuppressionRule(
  GetAlertsSuppressionRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAlertsSuppressionRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertsSuppressionRuleResult.fromMap(result);
}

/// Get a specific application for the requested scope by applicationId
///
/// Uses Azure REST API version 2022-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Get a security assessment on your scanned resource
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2019-01-01-preview, 2020-01-01, 2025-05-04-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentResult> getAssessment(
  GetAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentResult.fromMap(result);
}

/// Get metadata information on an assessment type in a specific subscription
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2020-01-01, 2025-05-04-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_assessment_metadata_in_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentMetadataInSubscriptionResult>
getAssessmentMetadataInSubscription(
  GetAssessmentMetadataInSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAssessmentMetadataInSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentMetadataInSubscriptionResult.fromMap(result);
}

/// Get metadata information on an assessment type in a specific subscription
///
/// Uses Azure REST API version 2019-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_assessments_metadata_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentsMetadataSubscriptionResult>
getAssessmentsMetadataSubscription(
  GetAssessmentsMetadataSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAssessmentsMetadataSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentsMetadataSubscriptionResult.fromMap(result);
}

/// Get a specific standard assignment for the requested scope by resourceId
///
/// Uses Azure REST API version 2021-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssignmentResult> getAssignment(
  GetAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssignmentResult.fromMap(result);
}

/// Retrieves information about the model of a security automation.
///
/// Uses Azure REST API version 2023-12-01-preview.
///
/// Other available API versions: 2019-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_automation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutomationResult> getAutomation(
  GetAutomationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAutomation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutomationResult.fromMap(result);
}

/// Get a server vulnerability assessments setting of the requested kind, that is set on the subscription
///
/// Uses Azure REST API version 2023-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_azure_servers_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureServersSettingResult> getAzureServersSetting(
  GetAzureServersSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getAzureServersSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureServersSettingResult.fromMap(result);
}

/// Details of a specific cloud account connector
///
/// Uses Azure REST API version 2020-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Gets a single custom assessment automation by name for the provided subscription and resource group.
///
/// Uses Azure REST API version 2021-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_custom_assessment_automation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomAssessmentAutomationResult> getCustomAssessmentAutomation(
  GetCustomAssessmentAutomationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getCustomAssessmentAutomation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomAssessmentAutomationResult.fromMap(result);
}

/// Gets a single custom entity store assignment by name for the provided subscription and resource group.
///
/// Uses Azure REST API version 2021-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_custom_entity_store_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomEntityStoreAssignmentResult> getCustomEntityStoreAssignment(
  GetCustomEntityStoreAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getCustomEntityStoreAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomEntityStoreAssignmentResult.fromMap(result);
}

/// Get a specific custom recommendation for the requested scope by customRecommendationName
///
/// Uses Azure REST API version 2024-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_custom_recommendation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRecommendationResult> getCustomRecommendation(
  GetCustomRecommendationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getCustomRecommendation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRecommendationResult.fromMap(result);
}

/// Gets the Defender for Storage settings for the specified storage account.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2022-12-01-preview, 2024-08-01-preview, 2025-01-01, 2025-02-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_defender_for_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefenderForStorageResult> getDefenderForStorage(
  GetDefenderForStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getDefenderForStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefenderForStorageResult.fromMap(result);
}

/// DevOps Configuration resource.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_dev_ops_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevOpsConfigurationResult> getDevOpsConfiguration(
  GetDevOpsConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getDevOpsConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevOpsConfigurationResult.fromMap(result);
}

/// Use this method to get the device security group for the specified IoT Hub resource.
///
/// Uses Azure REST API version 2019-08-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_device_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceSecurityGroupResult> getDeviceSecurityGroup(
  GetDeviceSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getDeviceSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceSecurityGroupResult.fromMap(result);
}

/// Get a specific governanceAssignment for the requested scope by AssignmentKey
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_governance_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGovernanceAssignmentResult> getGovernanceAssignment(
  GetGovernanceAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getGovernanceAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGovernanceAssignmentResult.fromMap(result);
}

/// Get a specific governance rule for the requested scope by ruleId
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_governance_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGovernanceRuleResult> getGovernanceRule(
  GetGovernanceRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getGovernanceRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGovernanceRuleResult.fromMap(result);
}

/// User this method to get details of a specific IoT Security solution based on solution name
///
/// Uses Azure REST API version 2019-08-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_iot_security_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIotSecuritySolutionResult> getIotSecuritySolution(
  GetIotSecuritySolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getIotSecuritySolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIotSecuritySolutionResult.fromMap(result);
}

/// Policies for protecting resources using Just-in-Time access control for the subscription, location
///
/// Uses Azure REST API version 2020-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_jit_network_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJitNetworkAccessPolicyResult> getJitNetworkAccessPolicy(
  GetJitNetworkAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getJitNetworkAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJitNetworkAccessPolicyResult.fromMap(result);
}

/// Get the Defender plans pricing configurations of the selected scope (valid scopes are resource id or a subscription id). At the resource level, supported resource types are 'VirtualMachines, VMSS and ARC Machines'.
///
/// Uses Azure REST API version 2024-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_pricing_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPricingResult> getPricing(
  GetPricingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getPricing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPricingResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the private link. Returns the connection details, status, and configuration for a specific private endpoint.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Get a private link resource. Returns the configuration and status of private endpoint connectivity for Microsoft Defender for Cloud services in the specified region.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_private_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkResult> getPrivateLink(
  GetPrivateLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getPrivateLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkResult.fromMap(result);
}

/// Retrieves details of a specific security connector
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-12-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2023-03-01-preview, 2023-10-01-preview, 2024-03-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_security_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityConnectorResult> getSecurityConnector(
  GetSecurityConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSecurityConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityConnectorResult.fromMap(result);
}

/// Get a specific application for the requested scope by applicationId
///
/// Uses Azure REST API version 2022-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_security_connector_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityConnectorApplicationResult> getSecurityConnectorApplication(
  GetSecurityConnectorApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSecurityConnectorApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityConnectorApplicationResult.fromMap(result);
}

/// Get Default Security contact configurations for the subscription
///
/// Uses Azure REST API version 2023-12-01-preview.
///
/// Other available API versions: 2017-08-01-preview, 2020-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_security_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityContactResult> getSecurityContact(
  GetSecurityContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSecurityContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityContactResult.fromMap(result);
}

/// Get a specific security operator for the requested scope.
///
/// Uses Azure REST API version 2023-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_security_operator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityOperatorResult> getSecurityOperator(
  GetSecurityOperatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSecurityOperator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityOperatorResult.fromMap(result);
}

/// Get a specific security standard for the requested scope by standardId
///
/// Uses Azure REST API version 2024-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_security_standard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityStandardResult> getSecurityStandard(
  GetSecurityStandardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSecurityStandard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityStandardResult.fromMap(result);
}

/// Gets a server vulnerability assessment onboarding statuses on a given resource.
///
/// Uses Azure REST API version 2020-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_server_vulnerability_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerVulnerabilityAssessmentResult> getServerVulnerabilityAssessment(
  GetServerVulnerabilityAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getServerVulnerabilityAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerVulnerabilityAssessmentResult.fromMap(result);
}

/// Rule results.
///
/// Uses Azure REST API version 2023-02-01-preview.
///
/// Other available API versions: 2020-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_sql_vulnerability_assessment_baseline_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlVulnerabilityAssessmentBaselineRuleResult>
getSqlVulnerabilityAssessmentBaselineRule(
  GetSqlVulnerabilityAssessmentBaselineRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getSqlVulnerabilityAssessmentBaselineRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlVulnerabilityAssessmentBaselineRuleResult.fromMap(result);
}

/// Get a specific security standard for the requested scope
///
/// Uses Azure REST API version 2021-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_standard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandardResult> getStandard(
  GetStandardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getStandard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandardResult.fromMap(result);
}

/// This operation retrieves a single standard assignment, given its name and the scope it was created at.
///
/// Uses Azure REST API version 2024-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_standard_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandardAssignmentResult> getStandardAssignment(
  GetStandardAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getStandardAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandardAssignmentResult.fromMap(result);
}

/// Settings about where we should store your security data and logs. If the result is empty, it means that no custom-workspace configuration was set
///
/// Uses Azure REST API version 2017-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_get_workspace_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceSettingResult> getWorkspaceSetting(
  GetWorkspaceSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:getWorkspaceSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceSettingResult.fromMap(result);
}

/// List of RP resources which supports pagination.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_list_azure_dev_ops_org_available_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAzureDevOpsOrgAvailableResult> listAzureDevOpsOrgAvailable(
  ListAzureDevOpsOrgAvailableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:listAzureDevOpsOrgAvailable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAzureDevOpsOrgAvailableResult.fromMap(result);
}

/// List of RP resources which supports pagination.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_list_git_hub_owner_available_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGitHubOwnerAvailableResult> listGitHubOwnerAvailable(
  ListGitHubOwnerAvailableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:listGitHubOwnerAvailable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGitHubOwnerAvailableResult.fromMap(result);
}

/// List of RP resources which supports pagination.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_list_git_lab_group_available_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGitLabGroupAvailableResult> listGitLabGroupAvailable(
  ListGitLabGroupAvailableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:listGitLabGroupAvailable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGitLabGroupAvailableResult.fromMap(result);
}

/// List of RP resources which supports pagination.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-15-preview, 2025-03-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_security_list_git_lab_subgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<ListGitLabSubgroupResult> listGitLabSubgroup(
  ListGitLabSubgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:security:listGitLabSubgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListGitLabSubgroupResult.fromMap(result);
}
