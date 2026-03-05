import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signal_rargs.dart';
import 'get_signal_rcustom_certificate_args.dart';
import 'get_signal_rcustom_certificate_result.dart';
import 'get_signal_rcustom_domain_args.dart';
import 'get_signal_rcustom_domain_result.dart';
import 'get_signal_rprivate_endpoint_connection_args.dart';
import 'get_signal_rprivate_endpoint_connection_result.dart';
import 'get_signal_rreplica_args.dart';
import 'get_signal_rreplica_result.dart';
import 'get_signal_rresult.dart';
import 'get_signal_rshared_private_link_resource_args.dart';
import 'get_signal_rshared_private_link_resource_result.dart';
import 'list_signal_rkeys_args.dart';
import 'list_signal_rkeys_result.dart';

/// Get the resource and its properties.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rargs_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRResult> getSignalR(
  GetSignalRArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalR',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRResult.fromMap(result);
}

/// Get a custom certificate.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rcustom_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRCustomCertificateResult> getSignalRCustomCertificate(
  GetSignalRCustomCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalRCustomCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRCustomCertificateResult.fromMap(result);
}

/// Get a custom domain.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rcustom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRCustomDomainResult> getSignalRCustomDomain(
  GetSignalRCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalRCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRCustomDomainResult.fromMap(result);
}

/// Get the specified private endpoint connection
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rprivate_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRPrivateEndpointConnectionResult> getSignalRPrivateEndpointConnection(
  GetSignalRPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalRPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRPrivateEndpointConnectionResult.fromMap(result);
}

/// Get the replica and its properties.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rreplica_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRReplicaResult> getSignalRReplica(
  GetSignalRReplicaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalRReplica',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRReplicaResult.fromMap(result);
}

/// Get the specified shared private link resource
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_get_signal_rshared_private_link_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalRSharedPrivateLinkResourceResult> getSignalRSharedPrivateLinkResource(
  GetSignalRSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:getSignalRSharedPrivateLinkResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalRSharedPrivateLinkResourceResult.fromMap(result);
}

/// Get the access keys of the resource.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_signalrservice_list_signal_rkeys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSignalRKeysResult> listSignalRKeys(
  ListSignalRKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:signalrservice:listSignalRKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSignalRKeysResult.fromMap(result);
}
