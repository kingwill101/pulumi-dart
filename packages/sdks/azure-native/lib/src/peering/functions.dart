import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_monitor_test_args.dart';
import 'get_connection_monitor_test_result.dart';
import 'get_peer_asn_args.dart';
import 'get_peer_asn_result.dart';
import 'get_peering_args.dart';
import 'get_peering_result.dart';
import 'get_peering_service_args.dart';
import 'get_peering_service_result.dart';
import 'get_prefix_args.dart';
import 'get_prefix_result.dart';
import 'get_registered_asn_args.dart';
import 'get_registered_asn_result.dart';
import 'get_registered_prefix_args.dart';
import 'get_registered_prefix_result.dart';

/// Gets an existing connection monitor test with the specified name under the given subscription, resource group and peering service.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_connection_monitor_test_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionMonitorTestResult> getConnectionMonitorTest(
  GetConnectionMonitorTestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getConnectionMonitorTest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionMonitorTestResult.fromMap(result);
}

/// Gets the peer ASN with the specified name under the given subscription.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_peer_asn_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeerAsnResult> getPeerAsn(
  GetPeerAsnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getPeerAsn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeerAsnResult.fromMap(result);
}

/// Gets an existing peering with the specified name under the given subscription and resource group.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringResult> getPeering(
  GetPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult.fromMap(result);
}

/// Gets an existing peering service with the specified name under the given subscription and resource group.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_peering_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringServiceResult> getPeeringService(
  GetPeeringServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getPeeringService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringServiceResult.fromMap(result);
}

/// Gets an existing prefix with the specified name under the given subscription, resource group and peering service.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrefixResult> getPrefix(
  GetPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixResult.fromMap(result);
}

/// Gets an existing registered ASN with the specified name under the given subscription, resource group and peering.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_registered_asn_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegisteredAsnResult> getRegisteredAsn(
  GetRegisteredAsnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getRegisteredAsn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegisteredAsnResult.fromMap(result);
}

/// Gets an existing registered prefix with the specified name under the given subscription, resource group and peering.
///
/// Uses Azure REST API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_peering_get_registered_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegisteredPrefixResult> getRegisteredPrefix(
  GetRegisteredPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:peering:getRegisteredPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegisteredPrefixResult.fromMap(result);
}
