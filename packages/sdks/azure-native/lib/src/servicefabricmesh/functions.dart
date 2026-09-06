import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_secret_value_args.dart';
import 'get_secret_value_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';
import 'list_secret_value_args.dart';
import 'list_secret_value_result.dart';

/// Gets the information about the application resource with the given name. The information include the description and other properties of the application.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

pulumi.Output<GetApplicationResult> getApplicationOutput(
  GetApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationResult.fromMap);
}

/// Gets the information about the gateway resource with the given name. The information include the description and other properties of the gateway.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Gets the information about the network resource with the given name. The information include the description and other properties of the network.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

pulumi.Output<GetNetworkResult> getNetworkOutput(
  GetNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkResult.fromMap);
}

/// Gets the information about the secret resource with the given name. The information include the description and other properties of the secret.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

pulumi.Output<GetSecretResult> getSecretOutput(
  GetSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecretResult.fromMap);
}

/// Get the information about the specified named secret value resources. The information does not include the actual value of the secret.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_secret_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretValueResult> getSecretValue(
  GetSecretValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getSecretValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretValueResult.fromMap(result);
}

pulumi.Output<GetSecretValueResult> getSecretValueOutput(
  GetSecretValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getSecretValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecretValueResult.fromMap);
}

/// Gets the information about the volume resource with the given name. The information include the description and other properties of the volume.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

pulumi.Output<GetVolumeResult> getVolumeOutput(
  GetVolumeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:getVolume',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVolumeResult.fromMap);
}

/// Lists the decrypted value of the specified named value of the secret resource. This is a privileged operation.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicefabricmesh_list_secret_value_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSecretValueResult> listSecretValue(
  ListSecretValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:listSecretValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSecretValueResult.fromMap(result);
}

pulumi.Output<ListSecretValueResult> listSecretValueOutput(
  ListSecretValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:servicefabricmesh:listSecretValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListSecretValueResult.fromMap);
}
