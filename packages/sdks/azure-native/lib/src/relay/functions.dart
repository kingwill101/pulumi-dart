import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_connection_args.dart';
import 'get_hybrid_connection_authorization_rule_args.dart';
import 'get_hybrid_connection_authorization_rule_result.dart';
import 'get_hybrid_connection_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_wcfrelay_args.dart';
import 'get_wcfrelay_authorization_rule_args.dart';
import 'get_wcfrelay_authorization_rule_result.dart';
import 'get_wcfrelay_result.dart';
import 'list_hybrid_connection_keys_args.dart';
import 'list_hybrid_connection_keys_result.dart';
import 'list_namespace_keys_args.dart';
import 'list_namespace_keys_result.dart';
import 'list_wcfrelay_keys_args.dart';
import 'list_wcfrelay_keys_result.dart';

/// Returns the description for the specified hybrid connection.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_hybrid_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridConnectionResult> getHybridConnection(
  GetHybridConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getHybridConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridConnectionResult.fromMap(result);
}

/// Hybrid connection authorization rule for a hybrid connection by name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_hybrid_connection_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridConnectionAuthorizationRuleResult> getHybridConnectionAuthorizationRule(
  GetHybridConnectionAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getHybridConnectionAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridConnectionAuthorizationRuleResult.fromMap(result);
}

/// Returns the description for the specified namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Authorization rule for a namespace by name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getNamespaceAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAuthorizationRuleResult.fromMap(result);
}

/// Gets a description for the specified Private Endpoint Connection name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Returns the description for the specified WCF relay.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_wcfrelay_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWCFRelayResult> getWCFRelay(
  GetWCFRelayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getWCFRelay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWCFRelayResult.fromMap(result);
}

/// Get authorizationRule for a WCF relay by name.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_get_wcfrelay_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWCFRelayAuthorizationRuleResult> getWCFRelayAuthorizationRule(
  GetWCFRelayAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:getWCFRelayAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWCFRelayAuthorizationRuleResult.fromMap(result);
}

/// Primary and secondary connection strings to the hybrid connection.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_list_hybrid_connection_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListHybridConnectionKeysResult> listHybridConnectionKeys(
  ListHybridConnectionKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:listHybridConnectionKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListHybridConnectionKeysResult.fromMap(result);
}

/// Primary and secondary connection strings to the namespace.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_list_namespace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceKeysResult> listNamespaceKeys(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:listNamespaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceKeysResult.fromMap(result);
}

/// Primary and secondary connection strings to the WCF relay.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_relay_list_wcfrelay_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWCFRelayKeysResult> listWCFRelayKeys(
  ListWCFRelayKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relay:listWCFRelayKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWCFRelayKeysResult.fromMap(result);
}
