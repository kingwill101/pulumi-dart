import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyper_vsite_args.dart';
import 'get_hyper_vsite_result.dart';
import 'get_hyperv_cluster_controller_cluster_args.dart';
import 'get_hyperv_cluster_controller_cluster_result.dart';
import 'get_hyperv_host_controller_args.dart';
import 'get_hyperv_host_controller_result.dart';
import 'get_hyperv_sites_controller_args.dart';
import 'get_hyperv_sites_controller_result.dart';
import 'get_import_sites_controller_args.dart';
import 'get_import_sites_controller_result.dart';
import 'get_master_sites_controller_args.dart';
import 'get_master_sites_controller_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_controller_args.dart';
import 'get_private_endpoint_connection_controller_result.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_server_sites_controller_args.dart';
import 'get_server_sites_controller_result.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';
import 'get_sites_controller_args.dart';
import 'get_sites_controller_result.dart';
import 'get_sql_discovery_site_data_source_controller_args.dart';
import 'get_sql_discovery_site_data_source_controller_result.dart';
import 'get_sql_sites_controller_args.dart';
import 'get_sql_sites_controller_result.dart';
import 'get_vcenter_controller_args.dart';
import 'get_vcenter_controller_result.dart';
import 'get_web_app_discovery_site_data_sources_controller_args.dart';
import 'get_web_app_discovery_site_data_sources_controller_result.dart';
import 'get_web_app_sites_controller_args.dart';
import 'get_web_app_sites_controller_result.dart';
import 'list_hyperv_sites_controller_health_summary_args.dart';
import 'list_hyperv_sites_controller_health_summary_result.dart';
import 'list_server_sites_controller_health_summary_args.dart';
import 'list_server_sites_controller_health_summary_result.dart';
import 'list_sites_controller_health_summary_args.dart';
import 'list_sites_controller_health_summary_result.dart';

/// Site REST Resource.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyper_vsite_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperVSiteResult> getHyperVSite(
  GetHyperVSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHyperVSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperVSiteResult.fromMap(result);
}

pulumi.Output<GetHyperVSiteResult> getHyperVSiteOutput(
  GetHyperVSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getHyperVSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHyperVSiteResult.fromMap);
}

/// Method to get a Hyper-V cluster.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_cluster_controller_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervClusterControllerClusterResult> getHypervClusterControllerCluster(
  GetHypervClusterControllerClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervClusterControllerCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervClusterControllerClusterResult.fromMap(result);
}

pulumi.Output<GetHypervClusterControllerClusterResult> getHypervClusterControllerClusterOutput(
  GetHypervClusterControllerClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getHypervClusterControllerCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHypervClusterControllerClusterResult.fromMap);
}

/// Get a HypervHost
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_host_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervHostControllerResult> getHypervHostController(
  GetHypervHostControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervHostController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervHostControllerResult.fromMap(result);
}

pulumi.Output<GetHypervHostControllerResult> getHypervHostControllerOutput(
  GetHypervHostControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getHypervHostController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHypervHostControllerResult.fromMap);
}

/// Get a HypervSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervSitesControllerResult> getHypervSitesController(
  GetHypervSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervSitesControllerResult.fromMap(result);
}

pulumi.Output<GetHypervSitesControllerResult> getHypervSitesControllerOutput(
  GetHypervSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getHypervSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHypervSitesControllerResult.fromMap);
}

/// Get a ImportSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_import_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportSitesControllerResult> getImportSitesController(
  GetImportSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getImportSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportSitesControllerResult.fromMap(result);
}

pulumi.Output<GetImportSitesControllerResult> getImportSitesControllerOutput(
  GetImportSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getImportSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportSitesControllerResult.fromMap);
}

/// Get a MasterSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_master_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMasterSitesControllerResult> getMasterSitesController(
  GetMasterSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getMasterSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMasterSitesControllerResult.fromMap(result);
}

pulumi.Output<GetMasterSitesControllerResult> getMasterSitesControllerOutput(
  GetMasterSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getMasterSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMasterSitesControllerResult.fromMap);
}

/// REST model used to encapsulate the user visible state of a PrivateEndpoint.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets the private link resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_private_endpoint_connection_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionControllerResult> getPrivateEndpointConnectionController(
  GetPrivateEndpointConnectionControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnectionController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionControllerResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionControllerResult> getPrivateEndpointConnectionControllerOutput(
  GetPrivateEndpointConnectionControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnectionController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionControllerResult.fromMap);
}

/// Get a ServerSiteResource
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_server_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerSitesControllerResult> getServerSitesController(
  GetServerSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getServerSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerSitesControllerResult.fromMap(result);
}

pulumi.Output<GetServerSitesControllerResult> getServerSitesControllerOutput(
  GetServerSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getServerSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerSitesControllerResult.fromMap);
}

/// Site REST Resource.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

pulumi.Output<GetSiteResult> getSiteOutput(
  GetSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteResult.fromMap);
}

/// Get a VmwareSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSitesControllerResult> getSitesController(
  GetSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesControllerResult.fromMap(result);
}

pulumi.Output<GetSitesControllerResult> getSitesControllerOutput(
  GetSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSitesControllerResult.fromMap);
}

/// Get a SqlDiscoverySiteDataSource
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sql_discovery_site_data_source_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDiscoverySiteDataSourceControllerResult> getSqlDiscoverySiteDataSourceController(
  GetSqlDiscoverySiteDataSourceControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSqlDiscoverySiteDataSourceController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDiscoverySiteDataSourceControllerResult.fromMap(result);
}

pulumi.Output<GetSqlDiscoverySiteDataSourceControllerResult> getSqlDiscoverySiteDataSourceControllerOutput(
  GetSqlDiscoverySiteDataSourceControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getSqlDiscoverySiteDataSourceController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlDiscoverySiteDataSourceControllerResult.fromMap);
}

/// Method to get a site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sql_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlSitesControllerResult> getSqlSitesController(
  GetSqlSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSqlSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlSitesControllerResult.fromMap(result);
}

pulumi.Output<GetSqlSitesControllerResult> getSqlSitesControllerOutput(
  GetSqlSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getSqlSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlSitesControllerResult.fromMap);
}

/// Get a Vcenter
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_vcenter_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVcenterControllerResult> getVcenterController(
  GetVcenterControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getVcenterController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVcenterControllerResult.fromMap(result);
}

pulumi.Output<GetVcenterControllerResult> getVcenterControllerOutput(
  GetVcenterControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getVcenterController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVcenterControllerResult.fromMap);
}

/// Method to get a Web app data source in site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_web_app_discovery_site_data_sources_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDiscoverySiteDataSourcesControllerResult> getWebAppDiscoverySiteDataSourcesController(
  GetWebAppDiscoverySiteDataSourcesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppDiscoverySiteDataSourcesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDiscoverySiteDataSourcesControllerResult.fromMap(result);
}

pulumi.Output<GetWebAppDiscoverySiteDataSourcesControllerResult> getWebAppDiscoverySiteDataSourcesControllerOutput(
  GetWebAppDiscoverySiteDataSourcesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppDiscoverySiteDataSourcesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppDiscoverySiteDataSourcesControllerResult.fromMap);
}

/// Method to get a site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_web_app_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSitesControllerResult> getWebAppSitesController(
  GetWebAppSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSitesControllerResult.fromMap(result);
}

pulumi.Output<GetWebAppSitesControllerResult> getWebAppSitesControllerOutput(
  GetWebAppSitesControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppSitesController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppSitesControllerResult.fromMap);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_hyperv_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListHypervSitesControllerHealthSummaryResult> listHypervSitesControllerHealthSummary(
  ListHypervSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listHypervSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListHypervSitesControllerHealthSummaryResult.fromMap(result);
}

pulumi.Output<ListHypervSitesControllerHealthSummaryResult> listHypervSitesControllerHealthSummaryOutput(
  ListHypervSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:listHypervSitesControllerHealthSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListHypervSitesControllerHealthSummaryResult.fromMap);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_server_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServerSitesControllerHealthSummaryResult> listServerSitesControllerHealthSummary(
  ListServerSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listServerSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServerSitesControllerHealthSummaryResult.fromMap(result);
}

pulumi.Output<ListServerSitesControllerHealthSummaryResult> listServerSitesControllerHealthSummaryOutput(
  ListServerSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:listServerSitesControllerHealthSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServerSitesControllerHealthSummaryResult.fromMap);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSitesControllerHealthSummaryResult> listSitesControllerHealthSummary(
  ListSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSitesControllerHealthSummaryResult.fromMap(result);
}

pulumi.Output<ListSitesControllerHealthSummaryResult> listSitesControllerHealthSummaryOutput(
  ListSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:offazure:listSitesControllerHealthSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSitesControllerHealthSummaryResult.fromMap);
}
