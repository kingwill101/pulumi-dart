import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_managed_gateway_args.dart';
import 'get_managed_gateway_result.dart';
import 'get_monitored_resource_args.dart';
import 'get_monitored_resource_result.dart';

/// Get SCOM managed instance details
///
/// Uses Azure REST API version 2023-07-07-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_scom_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scom:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scom:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Retrieve the details of the gateway resource.
///
/// Uses Azure REST API version 2023-07-07-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_scom_get_managed_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedGatewayResult> getManagedGateway(
  GetManagedGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scom:getManagedGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedGatewayResult.fromMap(result);
}

pulumi.Output<GetManagedGatewayResult> getManagedGatewayOutput(
  GetManagedGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scom:getManagedGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedGatewayResult.fromMap);
}

/// Retrieve the details of the monitored resource.
///
/// Uses Azure REST API version 2023-07-07-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_scom_get_monitored_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitoredResourceResult> getMonitoredResource(
  GetMonitoredResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scom:getMonitoredResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitoredResourceResult.fromMap(result);
}

pulumi.Output<GetMonitoredResourceResult> getMonitoredResourceOutput(
  GetMonitoredResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scom:getMonitoredResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMonitoredResourceResult.fromMap);
}
