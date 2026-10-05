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

pulumi.Output<GetConnectionResult> getConnectionOutput(
  GetConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionResult.fromMap);
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

pulumi.Output<GetConnectionIamPolicyResult> getConnectionIamPolicyOutput(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnectionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionIamPolicyResult.fromMap);
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

pulumi.Output<GetCustomConnectorResult> getCustomConnectorOutput(
  GetCustomConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomConnectorResult.fromMap);
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

pulumi.Output<GetCustomConnectorVersionResult> getCustomConnectorVersionOutput(
  GetCustomConnectorVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnectorVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomConnectorVersionResult.fromMap);
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

pulumi.Output<GetEndpointAttachmentResult> getEndpointAttachmentOutput(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getEndpointAttachment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointAttachmentResult.fromMap);
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

pulumi.Output<GetEventSubscriptionResult> getEventSubscriptionOutput(
  GetEventSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getEventSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventSubscriptionResult.fromMap);
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

pulumi.Output<GetManagedZoneResult> getManagedZoneOutput(
  GetManagedZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getManagedZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedZoneResult.fromMap);
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

pulumi.Output<GetProviderIamPolicyResult> getProviderIamPolicyOutput(
  GetProviderIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v1:getProviderIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProviderIamPolicyResult.fromMap);
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

pulumi.Output<GetEntityResult> getEntityOutput(
  GetEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:connectors/v2:getEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityResult.fromMap);
}
