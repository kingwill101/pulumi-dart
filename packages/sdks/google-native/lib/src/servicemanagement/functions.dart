import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_args.dart';
import 'get_config_result.dart';
import 'get_rollout_args.dart';
import 'get_rollout_result.dart';
import 'get_service_args.dart';
import 'get_service_consumer_iam_policy_args.dart';
import 'get_service_consumer_iam_policy_result.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_result.dart';

/// Gets a service configuration (version) for a managed service.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemanagement_v1_get_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}

/// Gets a service configuration rollout.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemanagement_v1_get_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolloutResult> getRollout(
  GetRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolloutResult.fromMap(result);
}

/// Gets a managed service. Authentication is required unless the service is public.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemanagement_v1_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemanagement_v1_get_service_consumer_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConsumerIamPolicyResult> getServiceConsumerIamPolicy(
  GetServiceConsumerIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getServiceConsumerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConsumerIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemanagement_v1_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}
