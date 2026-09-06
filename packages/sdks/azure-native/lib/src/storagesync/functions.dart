import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_endpoint_args.dart';
import 'get_cloud_endpoint_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_registered_server_args.dart';
import 'get_registered_server_result.dart';
import 'get_server_endpoint_args.dart';
import 'get_server_endpoint_result.dart';
import 'get_storage_sync_service_args.dart';
import 'get_storage_sync_service_result.dart';
import 'get_sync_group_args.dart';
import 'get_sync_group_result.dart';

/// Get a given CloudEndpoint.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_cloud_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudEndpointResult> getCloudEndpoint(
  GetCloudEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getCloudEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudEndpointResult.fromMap(result);
}

pulumi.Output<GetCloudEndpointResult> getCloudEndpointOutput(
  GetCloudEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagesync:getCloudEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudEndpointResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the storage sync service.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getPrivateEndpointConnection',
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
    'azure-native:storagesync:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get a given registered server.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_registered_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegisteredServerResult> getRegisteredServer(
  GetRegisteredServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getRegisteredServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegisteredServerResult.fromMap(result);
}

pulumi.Output<GetRegisteredServerResult> getRegisteredServerOutput(
  GetRegisteredServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagesync:getRegisteredServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegisteredServerResult.fromMap);
}

/// Get a ServerEndpoint.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_server_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerEndpointResult> getServerEndpoint(
  GetServerEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getServerEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerEndpointResult.fromMap(result);
}

pulumi.Output<GetServerEndpointResult> getServerEndpointOutput(
  GetServerEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagesync:getServerEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerEndpointResult.fromMap);
}

/// Get a given StorageSyncService.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_storage_sync_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageSyncServiceResult> getStorageSyncService(
  GetStorageSyncServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getStorageSyncService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageSyncServiceResult.fromMap(result);
}

pulumi.Output<GetStorageSyncServiceResult> getStorageSyncServiceOutput(
  GetStorageSyncServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagesync:getStorageSyncService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageSyncServiceResult.fromMap);
}

/// Get a given SyncGroup.
///
/// Uses Azure REST API version 2022-09-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagesync_get_sync_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncGroupResult> getSyncGroup(
  GetSyncGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagesync:getSyncGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncGroupResult.fromMap(result);
}

pulumi.Output<GetSyncGroupResult> getSyncGroupOutput(
  GetSyncGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:storagesync:getSyncGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSyncGroupResult.fromMap);
}
