import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';
import 'get_connection_result.dart';
import 'get_custom_connector_args.dart';
import 'get_custom_connector_result.dart';
import 'get_custom_connector_version_args.dart';
import 'get_custom_connector_version_result.dart';
import 'get_endpoint_attachment_args.dart';
import 'get_endpoint_attachment_result.dart';
import 'get_entity_args.dart';
import 'get_entity_result.dart';
import 'get_event_subscription_args.dart';
import 'get_event_subscription_result.dart';
import 'get_managed_zone_args.dart';
import 'get_managed_zone_result.dart';
import 'get_provider_iam_policy_args.dart';
import 'get_provider_iam_policy_result.dart';

/// Gets details of a single Connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}

/// Gets details of a single CustomConnector.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_custom_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomConnectorResult> getCustomConnector(
  GetCustomConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomConnectorResult.fromMap(result);
}

/// Gets details of a single CustomConnectorVersion.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_custom_connector_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomConnectorVersionResult> getCustomConnectorVersion(
  GetCustomConnectorVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnectorVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomConnectorVersionResult.fromMap(result);
}

/// Gets details of a single EndpointAttachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_endpoint_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAttachmentResult> getEndpointAttachment(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getEndpointAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentResult.fromMap(result);
}

/// Gets details of a single EventSubscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_event_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSubscriptionResult> getEventSubscription(
  GetEventSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getEventSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSubscriptionResult.fromMap(result);
}

/// Gets details of a single ManagedZone.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_managed_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v1_get_provider_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderIamPolicyResult> getProviderIamPolicy(
  GetProviderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getProviderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderIamPolicyResult.fromMap(result);
}

/// Gets a single entity row matching the entity type and entity id specified in the request.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectors_v2_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v2:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}
