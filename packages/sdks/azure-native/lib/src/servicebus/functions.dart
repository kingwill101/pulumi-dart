import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disaster_recovery_config_args.dart';
import 'get_disaster_recovery_config_result.dart';
import 'get_migration_config_args.dart';
import 'get_migration_config_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_ip_filter_rule_args.dart';
import 'get_namespace_ip_filter_rule_result.dart';
import 'get_namespace_network_rule_set_args.dart';
import 'get_namespace_network_rule_set_result.dart';
import 'get_namespace_result.dart';
import 'get_namespace_virtual_network_rule_args.dart';
import 'get_namespace_virtual_network_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_queue_args.dart';
import 'get_queue_authorization_rule_args.dart';
import 'get_queue_authorization_rule_result.dart';
import 'get_queue_result.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_topic_args.dart';
import 'get_topic_authorization_rule_args.dart';
import 'get_topic_authorization_rule_result.dart';
import 'get_topic_result.dart';
import 'list_disaster_recovery_config_keys_args.dart';
import 'list_disaster_recovery_config_keys_result.dart';
import 'list_namespace_keys_args.dart';
import 'list_namespace_keys_result.dart';
import 'list_queue_keys_args.dart';
import 'list_queue_keys_result.dart';
import 'list_topic_keys_args.dart';
import 'list_topic_keys_result.dart';

/// Retrieves Alias(Disaster Recovery configuration) for primary or secondary namespace
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_disaster_recovery_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDisasterRecoveryConfigResult> getDisasterRecoveryConfig(
  GetDisasterRecoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getDisasterRecoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDisasterRecoveryConfigResult.fromMap(result);
}

pulumi.Output<GetDisasterRecoveryConfigResult> getDisasterRecoveryConfigOutput(
  GetDisasterRecoveryConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getDisasterRecoveryConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDisasterRecoveryConfigResult.fromMap);
}

/// Retrieves Migration Config
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_migration_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationConfigResult> getMigrationConfig(
  GetMigrationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getMigrationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationConfigResult.fromMap(result);
}

pulumi.Output<GetMigrationConfigResult> getMigrationConfigOutput(
  GetMigrationConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getMigrationConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationConfigResult.fromMap);
}

/// Gets a description for the specified namespace.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

pulumi.Output<GetNamespaceResult> getNamespaceOutput(
  GetNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
}

/// Gets an authorization rule for a namespace by rule name.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAuthorizationRuleResult.fromMap(result);
}

pulumi.Output<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRuleOutput(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceAuthorizationRuleResult.fromMap);
}

/// Gets an IpFilterRule for a Namespace by rule name.
///
/// Uses Azure REST API version 2018-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_ip_filter_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceIpFilterRuleResult> getNamespaceIpFilterRule(
  GetNamespaceIpFilterRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceIpFilterRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIpFilterRuleResult.fromMap(result);
}

pulumi.Output<GetNamespaceIpFilterRuleResult> getNamespaceIpFilterRuleOutput(
  GetNamespaceIpFilterRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceIpFilterRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceIpFilterRuleResult.fromMap);
}

/// Gets NetworkRuleSet for a Namespace.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_network_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceNetworkRuleSetResult> getNamespaceNetworkRuleSet(
  GetNamespaceNetworkRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceNetworkRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceNetworkRuleSetResult.fromMap(result);
}

pulumi.Output<GetNamespaceNetworkRuleSetResult> getNamespaceNetworkRuleSetOutput(
  GetNamespaceNetworkRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceNetworkRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceNetworkRuleSetResult.fromMap);
}

/// Gets an VirtualNetworkRule for a Namespace by rule name.
///
/// Uses Azure REST API version 2018-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_namespace_virtual_network_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceVirtualNetworkRuleResult> getNamespaceVirtualNetworkRule(
  GetNamespaceVirtualNetworkRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceVirtualNetworkRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceVirtualNetworkRuleResult.fromMap(result);
}

pulumi.Output<GetNamespaceVirtualNetworkRuleResult> getNamespaceVirtualNetworkRuleOutput(
  GetNamespaceVirtualNetworkRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getNamespaceVirtualNetworkRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceVirtualNetworkRuleResult.fromMap);
}

/// Gets a description for the specified Private Endpoint Connection.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getPrivateEndpointConnection',
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
    'azure-native:servicebus:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Returns a description for the specified queue.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

pulumi.Output<GetQueueResult> getQueueOutput(
  GetQueueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueResult.fromMap);
}

/// Gets an authorization rule for a queue by rule name.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_queue_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueAuthorizationRuleResult> getQueueAuthorizationRule(
  GetQueueAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getQueueAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueAuthorizationRuleResult.fromMap(result);
}

pulumi.Output<GetQueueAuthorizationRuleResult> getQueueAuthorizationRuleOutput(
  GetQueueAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getQueueAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueAuthorizationRuleResult.fromMap);
}

/// Retrieves the description for the specified rule.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

pulumi.Output<GetRuleResult> getRuleOutput(
  GetRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleResult.fromMap);
}

/// Returns a subscription description for the specified topic.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getSubscription',
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
    'azure-native:servicebus:getSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionResult.fromMap);
}

/// Returns a description for the specified topic.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

pulumi.Output<GetTopicResult> getTopicOutput(
  GetTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicResult.fromMap);
}

/// Returns the specified authorization rule.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_get_topic_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicAuthorizationRuleResult> getTopicAuthorizationRule(
  GetTopicAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:getTopicAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicAuthorizationRuleResult.fromMap(result);
}

pulumi.Output<GetTopicAuthorizationRuleResult> getTopicAuthorizationRuleOutput(
  GetTopicAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:getTopicAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTopicAuthorizationRuleResult.fromMap);
}

/// Gets the primary and secondary connection strings for the namespace.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_list_disaster_recovery_config_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDisasterRecoveryConfigKeysResult> listDisasterRecoveryConfigKeys(
  ListDisasterRecoveryConfigKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:listDisasterRecoveryConfigKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDisasterRecoveryConfigKeysResult.fromMap(result);
}

pulumi.Output<ListDisasterRecoveryConfigKeysResult> listDisasterRecoveryConfigKeysOutput(
  ListDisasterRecoveryConfigKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:listDisasterRecoveryConfigKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDisasterRecoveryConfigKeysResult.fromMap);
}

/// Gets the primary and secondary connection strings for the namespace.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_list_namespace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceKeysResult> listNamespaceKeys(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:listNamespaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceKeysResult.fromMap(result);
}

pulumi.Output<ListNamespaceKeysResult> listNamespaceKeysOutput(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:listNamespaceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceKeysResult.fromMap);
}

/// Primary and secondary connection strings to the queue.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_list_queue_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListQueueKeysResult> listQueueKeys(
  ListQueueKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:listQueueKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListQueueKeysResult.fromMap(result);
}

pulumi.Output<ListQueueKeysResult> listQueueKeysOutput(
  ListQueueKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:listQueueKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListQueueKeysResult.fromMap);
}

/// Gets the primary and secondary connection strings for the topic.
///
/// Uses Azure REST API version 2026-01-01.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicebus_list_topic_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTopicKeysResult> listTopicKeys(
  ListTopicKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicebus:listTopicKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTopicKeysResult.fromMap(result);
}

pulumi.Output<ListTopicKeysResult> listTopicKeysOutput(
  ListTopicKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicebus:listTopicKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListTopicKeysResult.fromMap);
}
