import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_pub_sub_args.dart';
import 'get_web_pub_sub_custom_certificate_args.dart';
import 'get_web_pub_sub_custom_certificate_result.dart';
import 'get_web_pub_sub_custom_domain_args.dart';
import 'get_web_pub_sub_custom_domain_result.dart';
import 'get_web_pub_sub_hub_args.dart';
import 'get_web_pub_sub_hub_result.dart';
import 'get_web_pub_sub_private_endpoint_connection_args.dart';
import 'get_web_pub_sub_private_endpoint_connection_result.dart';
import 'get_web_pub_sub_replica_args.dart';
import 'get_web_pub_sub_replica_result.dart';
import 'get_web_pub_sub_result.dart';
import 'get_web_pub_sub_shared_private_link_resource_args.dart';
import 'get_web_pub_sub_shared_private_link_resource_result.dart';
import 'list_web_pub_sub_keys_args.dart';
import 'list_web_pub_sub_keys_result.dart';

/// Get the resource and its properties.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubResult> getWebPubSub(
  GetWebPubSubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubResult.fromMap(result);
}

pulumi.Output<GetWebPubSubResult> getWebPubSubOutput(
  GetWebPubSubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubResult.fromMap);
}

/// Get a custom certificate.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_custom_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubCustomCertificateResult> getWebPubSubCustomCertificate(
  GetWebPubSubCustomCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubCustomCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubCustomCertificateResult.fromMap(result);
}

pulumi.Output<GetWebPubSubCustomCertificateResult> getWebPubSubCustomCertificateOutput(
  GetWebPubSubCustomCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubCustomCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubCustomCertificateResult.fromMap);
}

/// Get a custom domain.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubCustomDomainResult> getWebPubSubCustomDomain(
  GetWebPubSubCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubCustomDomainResult.fromMap(result);
}

pulumi.Output<GetWebPubSubCustomDomainResult> getWebPubSubCustomDomainOutput(
  GetWebPubSubCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubCustomDomainResult.fromMap);
}

/// Get a hub setting.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubHubResult> getWebPubSubHub(
  GetWebPubSubHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubHubResult.fromMap(result);
}

pulumi.Output<GetWebPubSubHubResult> getWebPubSubHubOutput(
  GetWebPubSubHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubHubResult.fromMap);
}

/// Get the specified private endpoint connection
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubPrivateEndpointConnectionResult> getWebPubSubPrivateEndpointConnection(
  GetWebPubSubPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetWebPubSubPrivateEndpointConnectionResult> getWebPubSubPrivateEndpointConnectionOutput(
  GetWebPubSubPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubPrivateEndpointConnectionResult.fromMap);
}

/// Get the replica and its properties.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_replica_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubReplicaResult> getWebPubSubReplica(
  GetWebPubSubReplicaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubReplica',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubReplicaResult.fromMap(result);
}

pulumi.Output<GetWebPubSubReplicaResult> getWebPubSubReplicaOutput(
  GetWebPubSubReplicaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubReplica',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubReplicaResult.fromMap);
}

/// Get the specified shared private link resource
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_get_web_pub_sub_shared_private_link_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebPubSubSharedPrivateLinkResourceResult> getWebPubSubSharedPrivateLinkResource(
  GetWebPubSubSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubSharedPrivateLinkResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebPubSubSharedPrivateLinkResourceResult.fromMap(result);
}

pulumi.Output<GetWebPubSubSharedPrivateLinkResourceResult> getWebPubSubSharedPrivateLinkResourceOutput(
  GetWebPubSubSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:getWebPubSubSharedPrivateLinkResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebPubSubSharedPrivateLinkResourceResult.fromMap);
}

/// Get the access keys of the resource.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_webpubsub_list_web_pub_sub_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebPubSubKeysResult> listWebPubSubKeys(
  ListWebPubSubKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:webpubsub:listWebPubSubKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebPubSubKeysResult.fromMap(result);
}

pulumi.Output<ListWebPubSubKeysResult> listWebPubSubKeysOutput(
  ListWebPubSubKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:webpubsub:listWebPubSubKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWebPubSubKeysResult.fromMap);
}
