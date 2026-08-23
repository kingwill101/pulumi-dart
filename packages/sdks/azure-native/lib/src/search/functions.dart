import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_shared_private_link_resource_args.dart';
import 'get_shared_private_link_resource_result.dart';
import 'list_admin_key_args.dart';
import 'list_admin_key_result.dart';
import 'list_query_key_by_search_service_args.dart';
import 'list_query_key_by_search_service_result.dart';

/// Gets the details of the private endpoint connection to the search service in the given resource group.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview, 2026-03-01-preview, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_search_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:search:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the search service with the given name in the given resource group.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview, 2026-03-01-preview, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_search_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:search:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets the details of the shared private link resource managed by the search service in the given resource group.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview, 2026-03-01-preview, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_search_get_shared_private_link_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedPrivateLinkResourceResult> getSharedPrivateLinkResource(
  GetSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:search:getSharedPrivateLinkResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedPrivateLinkResourceResult.fromMap(result);
}

/// Gets the primary and secondary admin API keys for the specified Azure AI Search service.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview, 2026-03-01-preview, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_search_list_admin_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAdminKeyResult> listAdminKey(
  ListAdminKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:search:listAdminKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAdminKeyResult.fromMap(result);
}

/// Returns the list of query API keys for the given Azure AI Search service.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview, 2026-03-01-preview, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_search_list_query_key_by_search_service_args_doc}
/// [options] Invoke options controlling this call.
Future<ListQueryKeyBySearchServiceResult> listQueryKeyBySearchService(
  ListQueryKeyBySearchServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:search:listQueryKeyBySearchService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListQueryKeyBySearchServiceResult.fromMap(result);
}
