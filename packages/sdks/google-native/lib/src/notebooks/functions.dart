import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_execution_args.dart';
import 'get_execution_result.dart';
import 'get_instance_args.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_notebooks_v2_args.dart';
import 'get_instance_iam_policy_notebooks_v2_result.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_notebooks_v2_args.dart';
import 'get_instance_notebooks_v2_result.dart';
import 'get_instance_result.dart';
import 'get_runtime_args.dart';
import 'get_runtime_iam_policy_args.dart';
import 'get_runtime_iam_policy_result.dart';
import 'get_runtime_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';

/// Gets details of a single Environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Gets details of executions
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Gets details of a single Runtime. The location must be a regional endpoint rather than zonal.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_runtime_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeResult> getRuntime(
  GetRuntimeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getRuntime',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_runtime_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeIamPolicyResult> getRuntimeIamPolicy(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getRuntimeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult.fromMap(result);
}

/// Gets details of schedule
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v1_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v2_get_instance_notebooks_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceNotebooksV2Result> getInstanceNotebooksV2(
  GetInstanceNotebooksV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v2:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceNotebooksV2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_notebooks_v2_get_instance_iam_policy_notebooks_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyNotebooksV2Result> getInstanceIamPolicyNotebooksV2(
  GetInstanceIamPolicyNotebooksV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v2:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyNotebooksV2Result.fromMap(result);
}
