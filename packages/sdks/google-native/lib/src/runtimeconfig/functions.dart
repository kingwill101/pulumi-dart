import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_args.dart';
import 'get_config_iam_policy_args.dart';
import 'get_config_iam_policy_result.dart';
import 'get_config_result.dart';
import 'get_variable_args.dart';
import 'get_variable_result.dart';
import 'get_waiter_args.dart';
import 'get_waiter_result.dart';

/// Gets information about a RuntimeConfig resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_v1beta1_get_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_v1beta1_get_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigIamPolicyResult> getConfigIamPolicy(
  GetConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigIamPolicyResult.fromMap(result);
}

/// Gets information about a single variable.
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_v1beta1_get_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}

/// Gets information about a single waiter.
/// [args] Arguments passed to this invoke. {@macro pulumi_runtimeconfig_v1beta1_get_waiter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWaiterResult> getWaiter(
  GetWaiterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getWaiter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWaiterResult.fromMap(result);
}
