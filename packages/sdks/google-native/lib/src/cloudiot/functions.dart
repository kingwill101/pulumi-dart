import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_args.dart';
import 'get_device_result.dart';
import 'get_registry_args.dart';
import 'get_registry_group_iam_policy_args.dart';
import 'get_registry_group_iam_policy_result.dart';
import 'get_registry_iam_policy_args.dart';
import 'get_registry_iam_policy_result.dart';
import 'get_registry_result.dart';

/// Gets details about a device.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
}

/// Gets a device registry configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

pulumi.Output<GetRegistryResult> getRegistryOutput(
  GetRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryGroupIamPolicyResult> getRegistryGroupIamPolicy(
  GetRegistryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegistryGroupIamPolicyResult> getRegistryGroupIamPolicyOutput(
  GetRegistryGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryGroupIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudiot_v1_get_registry_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryIamPolicyResult> getRegistryIamPolicy(
  GetRegistryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegistryIamPolicyResult> getRegistryIamPolicyOutput(
  GetRegistryIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryIamPolicyResult.fromMap);
}
