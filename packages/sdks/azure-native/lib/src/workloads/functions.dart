import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acssbackup_connection_args.dart';
import 'get_acssbackup_connection_result.dart';
import 'get_alert_args.dart';
import 'get_alert_result.dart';
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_monitor_args.dart';
import 'get_monitor_result.dart';
import 'get_provider_instance_args.dart';
import 'get_provider_instance_result.dart';
import 'get_sap_application_server_instance_args.dart';
import 'get_sap_application_server_instance_result.dart';
import 'get_sap_central_server_instance_args.dart';
import 'get_sap_central_server_instance_result.dart';
import 'get_sap_database_instance_args.dart';
import 'get_sap_database_instance_result.dart';
import 'get_sap_discovery_site_args.dart';
import 'get_sap_discovery_site_result.dart';
import 'get_sap_instance_args.dart';
import 'get_sap_instance_result.dart';
import 'get_sap_landscape_monitor_args.dart';
import 'get_sap_landscape_monitor_result.dart';
import 'get_sap_virtual_instance_args.dart';
import 'get_sap_virtual_instance_invoke_availability_zone_details_args.dart';
import 'get_sap_virtual_instance_invoke_availability_zone_details_result.dart';
import 'get_sap_virtual_instance_invoke_disk_configurations_args.dart';
import 'get_sap_virtual_instance_invoke_disk_configurations_result.dart';
import 'get_sap_virtual_instance_invoke_sap_supported_sku_args.dart';
import 'get_sap_virtual_instance_invoke_sap_supported_sku_result.dart';
import 'get_sap_virtual_instance_invoke_sizing_recommendations_args.dart';
import 'get_sap_virtual_instance_invoke_sizing_recommendations_result.dart';
import 'get_sap_virtual_instance_result.dart';
import 'get_sapavailability_zone_details_args.dart';
import 'get_sapavailability_zone_details_result.dart';
import 'get_sapdisk_configurations_args.dart';
import 'get_sapdisk_configurations_result.dart';
import 'get_sapsizing_recommendations_args.dart';
import 'get_sapsizing_recommendations_result.dart';
import 'get_sapsupported_sku_args.dart';
import 'get_sapsupported_sku_result.dart';
import 'get_server_instance_args.dart';
import 'get_server_instance_result.dart';

/// Gets the backup connection resource of virtual instance for SAP.
///
/// Uses Azure REST API version 2023-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_acssbackup_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetACSSBackupConnectionResult> getACSSBackupConnection(
  GetACSSBackupConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getACSSBackupConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetACSSBackupConnectionResult.fromMap(result);
}

/// Gets properties of an alert for the specified subscription, resource group, SAP monitor name, and resource name.
///
/// Uses Azure REST API version 2024-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_alert_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertResult> getAlert(
  GetAlertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getAlert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertResult.fromMap(result);
}

/// Gets a connector resource
///
/// Uses Azure REST API version 2023-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Gets properties of a SAP monitor for the specified subscription, resource group, and resource name.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorResult> getMonitor(
  GetMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorResult.fromMap(result);
}

/// Gets properties of a provider instance for the specified subscription, resource group, SAP monitor name, and resource name.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_provider_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderInstanceResult> getProviderInstance(
  GetProviderInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getProviderInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderInstanceResult.fromMap(result);
}

/// Get the recommended SAP Availability Zone Pair Details for your region.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sapavailability_zone_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSAPAvailabilityZoneDetailsResult> getSAPAvailabilityZoneDetails(
  GetSAPAvailabilityZoneDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSAPAvailabilityZoneDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSAPAvailabilityZoneDetailsResult.fromMap(result);
}

/// Get the SAP Disk Configuration Layout prod/non-prod SAP System.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sapdisk_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSAPDiskConfigurationsResult> getSAPDiskConfigurations(
  GetSAPDiskConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSAPDiskConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSAPDiskConfigurationsResult.fromMap(result);
}

/// Get SAP sizing recommendations by providing input SAPS for application tier and memory required for database tier
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sapsizing_recommendations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSAPSizingRecommendationsResult> getSAPSizingRecommendations(
  GetSAPSizingRecommendationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSAPSizingRecommendations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSAPSizingRecommendationsResult.fromMap(result);
}

/// Get a list of SAP supported SKUs for ASCS, Application and Database tier.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sapsupported_sku_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSAPSupportedSkuResult> getSAPSupportedSku(
  GetSAPSupportedSkuArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSAPSupportedSku',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSAPSupportedSkuResult.fromMap(result);
}

/// Gets the SAP Application Server Instance corresponding to the Virtual Instance for SAP solutions resource.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_application_server_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapApplicationServerInstanceResult> getSapApplicationServerInstance(
  GetSapApplicationServerInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapApplicationServerInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapApplicationServerInstanceResult.fromMap(result);
}

/// Gets the SAP Central Services Instance resource.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_central_server_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapCentralServerInstanceResult> getSapCentralServerInstance(
  GetSapCentralServerInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapCentralServerInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapCentralServerInstanceResult.fromMap(result);
}

/// Gets the SAP Database Instance resource.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_database_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapDatabaseInstanceResult> getSapDatabaseInstance(
  GetSapDatabaseInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapDatabaseInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapDatabaseInstanceResult.fromMap(result);
}

/// Gets a SAP Migration discovery site resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_discovery_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapDiscoverySiteResult> getSapDiscoverySite(
  GetSapDiscoverySiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapDiscoverySite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapDiscoverySiteResult.fromMap(result);
}

/// Gets the SAP Instance resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapInstanceResult> getSapInstance(
  GetSapInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapInstanceResult.fromMap(result);
}

/// Gets configuration values for Single Pane Of Glass for SAP monitor for the specified subscription, resource group, and resource name.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_landscape_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapLandscapeMonitorResult> getSapLandscapeMonitor(
  GetSapLandscapeMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapLandscapeMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapLandscapeMonitorResult.fromMap(result);
}

/// Gets a Virtual Instance for SAP solutions resource
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_virtual_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapVirtualInstanceResult> getSapVirtualInstance(
  GetSapVirtualInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapVirtualInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapVirtualInstanceResult.fromMap(result);
}

/// Get the recommended SAP Availability Zone Pair Details for your region.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_virtual_instance_invoke_availability_zone_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult>
getSapVirtualInstanceInvokeAvailabilityZoneDetails(
  GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapVirtualInstanceInvokeAvailabilityZoneDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult.fromMap(
    result,
  );
}

/// Get the SAP Disk Configuration Layout prod/non-prod SAP System.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_virtual_instance_invoke_disk_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapVirtualInstanceInvokeDiskConfigurationsResult>
getSapVirtualInstanceInvokeDiskConfigurations(
  GetSapVirtualInstanceInvokeDiskConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapVirtualInstanceInvokeDiskConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapVirtualInstanceInvokeDiskConfigurationsResult.fromMap(result);
}

/// Get a list of SAP supported SKUs for ASCS, Application and Database tier.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_virtual_instance_invoke_sap_supported_sku_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapVirtualInstanceInvokeSapSupportedSkuResult>
getSapVirtualInstanceInvokeSapSupportedSku(
  GetSapVirtualInstanceInvokeSapSupportedSkuArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapVirtualInstanceInvokeSapSupportedSku',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapVirtualInstanceInvokeSapSupportedSkuResult.fromMap(result);
}

/// Gets the sizing recommendations.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_sap_virtual_instance_invoke_sizing_recommendations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSapVirtualInstanceInvokeSizingRecommendationsResult>
getSapVirtualInstanceInvokeSizingRecommendations(
  GetSapVirtualInstanceInvokeSizingRecommendationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getSapVirtualInstanceInvokeSizingRecommendations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSapVirtualInstanceInvokeSizingRecommendationsResult.fromMap(result);
}

/// Gets the Server Instance resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloads_get_server_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerInstanceResult> getServerInstance(
  GetServerInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:workloads:getServerInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerInstanceResult.fromMap(result);
}
