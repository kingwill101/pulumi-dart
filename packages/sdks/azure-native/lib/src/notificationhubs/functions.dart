import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_args.dart';
import 'get_namespace_authorization_rule_args.dart';
import 'get_namespace_authorization_rule_result.dart';
import 'get_namespace_pns_credentials_args.dart';
import 'get_namespace_pns_credentials_result.dart';
import 'get_namespace_result.dart';
import 'get_notification_hub_args.dart';
import 'get_notification_hub_authorization_rule_args.dart';
import 'get_notification_hub_authorization_rule_result.dart';
import 'get_notification_hub_pns_credentials_args.dart';
import 'get_notification_hub_pns_credentials_result.dart';
import 'get_notification_hub_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'list_namespace_keys_args.dart';
import 'list_namespace_keys_result.dart';
import 'list_notification_hub_keys_args.dart';
import 'list_notification_hub_keys_result.dart';

/// Returns the given namespace.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNamespace',
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
    'azure-native:notificationhubs:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
}

/// Gets an authorization rule for a namespace by name.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_namespace_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAuthorizationRuleResult> getNamespaceAuthorizationRule(
  GetNamespaceAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNamespaceAuthorizationRule',
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
    'azure-native:notificationhubs:getNamespaceAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceAuthorizationRuleResult.fromMap);
}

/// Lists the PNS credentials associated with a namespace.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_namespace_pns_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacePnsCredentialsResult> getNamespacePnsCredentials(
  GetNamespacePnsCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNamespacePnsCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacePnsCredentialsResult.fromMap(result);
}

pulumi.Output<GetNamespacePnsCredentialsResult> getNamespacePnsCredentialsOutput(
  GetNamespacePnsCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNamespacePnsCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespacePnsCredentialsResult.fromMap);
}

/// Gets the notification hub.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_notification_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationHubResult> getNotificationHub(
  GetNotificationHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationHubResult.fromMap(result);
}

pulumi.Output<GetNotificationHubResult> getNotificationHubOutput(
  GetNotificationHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationHubResult.fromMap);
}

/// Gets an authorization rule for a NotificationHub by name.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_notification_hub_authorization_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationHubAuthorizationRuleResult> getNotificationHubAuthorizationRule(
  GetNotificationHubAuthorizationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHubAuthorizationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationHubAuthorizationRuleResult.fromMap(result);
}

pulumi.Output<GetNotificationHubAuthorizationRuleResult> getNotificationHubAuthorizationRuleOutput(
  GetNotificationHubAuthorizationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHubAuthorizationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationHubAuthorizationRuleResult.fromMap);
}

/// Lists the PNS Credentials associated with a notification hub.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_notification_hub_pns_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationHubPnsCredentialsResult> getNotificationHubPnsCredentials(
  GetNotificationHubPnsCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHubPnsCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationHubPnsCredentialsResult.fromMap(result);
}

pulumi.Output<GetNotificationHubPnsCredentialsResult> getNotificationHubPnsCredentialsOutput(
  GetNotificationHubPnsCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:notificationhubs:getNotificationHubPnsCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationHubPnsCredentialsResult.fromMap);
}

/// Returns a Private Endpoint Connection with a given name.
/// This is a public API that can be called directly by Notification Hubs users.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:getPrivateEndpointConnection',
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
    'azure-native:notificationhubs:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Gets the Primary and Secondary ConnectionStrings to the namespace.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_list_namespace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceKeysResult> listNamespaceKeys(
  ListNamespaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:listNamespaceKeys',
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
    'azure-native:notificationhubs:listNamespaceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceKeysResult.fromMap);
}

/// Gets the Primary and Secondary ConnectionStrings to the NotificationHub
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_notificationhubs_list_notification_hub_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNotificationHubKeysResult> listNotificationHubKeys(
  ListNotificationHubKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:notificationhubs:listNotificationHubKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNotificationHubKeysResult.fromMap(result);
}

pulumi.Output<ListNotificationHubKeysResult> listNotificationHubKeysOutput(
  ListNotificationHubKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:notificationhubs:listNotificationHubKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNotificationHubKeysResult.fromMap);
}
