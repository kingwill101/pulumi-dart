import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_assignment_args.dart';
import 'get_access_policy_assignment_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_redis_enterprise_args.dart';
import 'get_redis_enterprise_result.dart';
import 'list_database_keys_args.dart';
import 'list_database_keys_result.dart';
import 'list_redis_enterprise_skus_for_scaling_args.dart';
import 'list_redis_enterprise_skus_for_scaling_result.dart';

/// Gets information about access policy assignment for database.
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2024-09-01-preview, 2025-04-01, 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_get_access_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyAssignmentResult> getAccessPolicyAssignment(
  GetAccessPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:getAccessPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyAssignmentResult.fromMap(result);
}

/// Gets information about a database in a Redis Enterprise cluster.
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the Redis Enterprise cluster.
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets information about a Redis Enterprise cluster
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_get_redis_enterprise_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedisEnterpriseResult> getRedisEnterprise(
  GetRedisEnterpriseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:getRedisEnterprise',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedisEnterpriseResult.fromMap(result);
}

/// Retrieves the access keys for the Redis Enterprise database.
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_list_database_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDatabaseKeysResult> listDatabaseKeys(
  ListDatabaseKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:listDatabaseKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDatabaseKeysResult.fromMap(result);
}

/// Lists the available SKUs for scaling the Redis Enterprise cluster.
///
/// Uses Azure REST API version 2025-07-01.
///
/// Other available API versions: 2025-05-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-05-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redisenterprise_list_redis_enterprise_skus_for_scaling_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRedisEnterpriseSkusForScalingResult> listRedisEnterpriseSkusForScaling(
  ListRedisEnterpriseSkusForScalingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redisenterprise:listRedisEnterpriseSkusForScaling',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRedisEnterpriseSkusForScalingResult.fromMap(result);
}
