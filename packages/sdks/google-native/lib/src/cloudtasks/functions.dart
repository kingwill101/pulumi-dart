import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_args.dart';
import 'get_queue_cloudtasks_v2beta2_args.dart';
import 'get_queue_cloudtasks_v2beta2_result.dart';
import 'get_queue_cloudtasks_v2beta3_args.dart';
import 'get_queue_cloudtasks_v2beta3_result.dart';
import 'get_queue_iam_policy_args.dart';
import 'get_queue_iam_policy_cloudtasks_v2beta2_args.dart';
import 'get_queue_iam_policy_cloudtasks_v2beta2_result.dart';
import 'get_queue_iam_policy_cloudtasks_v2beta3_args.dart';
import 'get_queue_iam_policy_cloudtasks_v2beta3_result.dart';
import 'get_queue_iam_policy_result.dart';
import 'get_queue_result.dart';
import 'get_task_args.dart';
import 'get_task_cloudtasks_v2beta2_args.dart';
import 'get_task_cloudtasks_v2beta2_result.dart';
import 'get_task_cloudtasks_v2beta3_args.dart';
import 'get_task_cloudtasks_v2beta3_result.dart';
import 'get_task_result.dart';

/// Gets a queue.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

pulumi.Output<GetQueueResult> getQueueOutput(
  GetQueueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueResult.fromMap);
}

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2_get_queue_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueIamPolicyResult> getQueueIamPolicy(
  GetQueueIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult.fromMap(result);
}

pulumi.Output<GetQueueIamPolicyResult> getQueueIamPolicyOutput(
  GetQueueIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueueIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueIamPolicyResult.fromMap);
}

/// Gets a task.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2_get_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}

pulumi.Output<GetTaskResult> getTaskOutput(
  GetTaskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskResult.fromMap);
}

/// Gets a queue.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta2_get_queue_cloudtasks_v2beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueCloudtasksV2beta2Result> getQueueCloudtasksV2beta2(
  GetQueueCloudtasksV2beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueCloudtasksV2beta2Result.fromMap(result);
}

pulumi.Output<GetQueueCloudtasksV2beta2Result> getQueueCloudtasksV2beta2Output(
  GetQueueCloudtasksV2beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueCloudtasksV2beta2Result.fromMap);
}

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta2_get_queue_iam_policy_cloudtasks_v2beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueIamPolicyCloudtasksV2beta2Result> getQueueIamPolicyCloudtasksV2beta2(
  GetQueueIamPolicyCloudtasksV2beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyCloudtasksV2beta2Result.fromMap(result);
}

pulumi.Output<GetQueueIamPolicyCloudtasksV2beta2Result> getQueueIamPolicyCloudtasksV2beta2Output(
  GetQueueIamPolicyCloudtasksV2beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueueIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueIamPolicyCloudtasksV2beta2Result.fromMap);
}

/// Gets a task.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta2_get_task_cloudtasks_v2beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskCloudtasksV2beta2Result> getTaskCloudtasksV2beta2(
  GetTaskCloudtasksV2beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskCloudtasksV2beta2Result.fromMap(result);
}

pulumi.Output<GetTaskCloudtasksV2beta2Result> getTaskCloudtasksV2beta2Output(
  GetTaskCloudtasksV2beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskCloudtasksV2beta2Result.fromMap);
}

/// Gets a queue.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta3_get_queue_cloudtasks_v2beta3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueCloudtasksV2beta3Result> getQueueCloudtasksV2beta3(
  GetQueueCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueCloudtasksV2beta3Result.fromMap(result);
}

pulumi.Output<GetQueueCloudtasksV2beta3Result> getQueueCloudtasksV2beta3Output(
  GetQueueCloudtasksV2beta3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueCloudtasksV2beta3Result.fromMap);
}

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta3_get_queue_iam_policy_cloudtasks_v2beta3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueIamPolicyCloudtasksV2beta3Result> getQueueIamPolicyCloudtasksV2beta3(
  GetQueueIamPolicyCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyCloudtasksV2beta3Result.fromMap(result);
}

pulumi.Output<GetQueueIamPolicyCloudtasksV2beta3Result> getQueueIamPolicyCloudtasksV2beta3Output(
  GetQueueIamPolicyCloudtasksV2beta3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueueIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueIamPolicyCloudtasksV2beta3Result.fromMap);
}

/// Gets a task.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtasks_v2beta3_get_task_cloudtasks_v2beta3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskCloudtasksV2beta3Result> getTaskCloudtasksV2beta3(
  GetTaskCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskCloudtasksV2beta3Result.fromMap(result);
}

pulumi.Output<GetTaskCloudtasksV2beta3Result> getTaskCloudtasksV2beta3Output(
  GetTaskCloudtasksV2beta3Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskCloudtasksV2beta3Result.fromMap);
}
