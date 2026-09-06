import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_args.dart';
import 'get_access_policy_assignment_args.dart';
import 'get_access_policy_assignment_result.dart';
import 'get_access_policy_result.dart';
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_linked_server_args.dart';
import 'get_linked_server_result.dart';
import 'get_patch_schedule_args.dart';
import 'get_patch_schedule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_redis_args.dart';
import 'get_redis_firewall_rule_args.dart';
import 'get_redis_firewall_rule_result.dart';
import 'get_redis_linked_server_args.dart';
import 'get_redis_linked_server_result.dart';
import 'get_redis_result.dart';
import 'list_redis_keys_args.dart';
import 'list_redis_keys_result.dart';

/// Gets the detailed information about an access policy of a redis cache
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}

pulumi.Output<GetAccessPolicyResult> getAccessPolicyOutput(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getAccessPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessPolicyResult.fromMap);
}

/// Gets the list of assignments for an access policy of a redis cache
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_access_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyAssignmentResult> getAccessPolicyAssignment(
  GetAccessPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getAccessPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyAssignmentResult.fromMap(result);
}

pulumi.Output<GetAccessPolicyAssignmentResult> getAccessPolicyAssignmentOutput(
  GetAccessPolicyAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getAccessPolicyAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessPolicyAssignmentResult.fromMap);
}

/// Gets a single firewall rule in a specified redis cache.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetFirewallRuleResult> getFirewallRuleOutput(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallRuleResult.fromMap);
}

/// Gets the detailed information about a linked server of a redis cache (requires Premium SKU).
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_linked_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedServerResult> getLinkedServer(
  GetLinkedServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getLinkedServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedServerResult.fromMap(result);
}

pulumi.Output<GetLinkedServerResult> getLinkedServerOutput(
  GetLinkedServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getLinkedServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkedServerResult.fromMap);
}

/// Gets the patching schedule of a redis cache.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2016-04-01, 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_patch_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchScheduleResult> getPatchSchedule(
  GetPatchScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getPatchSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchScheduleResult.fromMap(result);
}

pulumi.Output<GetPatchScheduleResult> getPatchScheduleOutput(
  GetPatchScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getPatchSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPatchScheduleResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the redis cache.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getPrivateEndpointConnection',
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
    'azure-native:redis:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets a Redis cache (resource description).
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2015-08-01, 2016-04-01, 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_redis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedisResult> getRedis(
  GetRedisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getRedis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedisResult.fromMap(result);
}

pulumi.Output<GetRedisResult> getRedisOutput(
  GetRedisArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getRedis',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRedisResult.fromMap);
}

/// Gets a single firewall rule in a specified redis cache.
///
/// Uses Azure REST API version 2016-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_redis_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedisFirewallRuleResult> getRedisFirewallRule(
  GetRedisFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getRedisFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedisFirewallRuleResult.fromMap(result);
}

pulumi.Output<GetRedisFirewallRuleResult> getRedisFirewallRuleOutput(
  GetRedisFirewallRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getRedisFirewallRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRedisFirewallRuleResult.fromMap);
}

/// Gets the detailed information about a linked server of a redis cache (requires Premium SKU).
///
/// Uses Azure REST API version 2017-02-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_get_redis_linked_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRedisLinkedServerResult> getRedisLinkedServer(
  GetRedisLinkedServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:getRedisLinkedServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRedisLinkedServerResult.fromMap(result);
}

pulumi.Output<GetRedisLinkedServerResult> getRedisLinkedServerOutput(
  GetRedisLinkedServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:getRedisLinkedServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRedisLinkedServerResult.fromMap);
}

/// Retrieve a Redis cache's access keys. This operation requires write permission to the cache resource.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2015-08-01, 2016-04-01, 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redis_list_redis_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRedisKeysResult> listRedisKeys(
  ListRedisKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redis:listRedisKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRedisKeysResult.fromMap(result);
}

pulumi.Output<ListRedisKeysResult> listRedisKeysOutput(
  ListRedisKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:redis:listRedisKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListRedisKeysResult.fromMap);
}
