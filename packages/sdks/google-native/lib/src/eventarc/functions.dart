import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_channel_args.dart';
import 'get_channel_connection_args.dart';
import 'get_channel_connection_iam_policy_args.dart';
import 'get_channel_connection_iam_policy_result.dart';
import 'get_channel_connection_result.dart';
import 'get_channel_iam_policy_args.dart';
import 'get_channel_iam_policy_result.dart';
import 'get_channel_result.dart';
import 'get_trigger_args.dart';
import 'get_trigger_eventarc_v1beta1_args.dart';
import 'get_trigger_eventarc_v1beta1_result.dart';
import 'get_trigger_iam_policy_args.dart';
import 'get_trigger_iam_policy_eventarc_v1beta1_args.dart';
import 'get_trigger_iam_policy_eventarc_v1beta1_result.dart';
import 'get_trigger_iam_policy_result.dart';
import 'get_trigger_result.dart';

/// Get a single Channel.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}

pulumi.Output<GetChannelResult> getChannelOutput(
  GetChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelResult.fromMap);
}

/// Get a single ChannelConnection.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_channel_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelConnectionResult> getChannelConnection(
  GetChannelConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelConnectionResult.fromMap(result);
}

pulumi.Output<GetChannelConnectionResult> getChannelConnectionOutput(
  GetChannelConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelConnectionResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_channel_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelConnectionIamPolicyResult> getChannelConnectionIamPolicy(
  GetChannelConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelConnectionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetChannelConnectionIamPolicyResult> getChannelConnectionIamPolicyOutput(
  GetChannelConnectionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelConnectionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelConnectionIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_channel_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelIamPolicyResult> getChannelIamPolicy(
  GetChannelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelIamPolicyResult.fromMap(result);
}

pulumi.Output<GetChannelIamPolicyResult> getChannelIamPolicyOutput(
  GetChannelIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelIamPolicyResult.fromMap);
}

/// Get a single trigger.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}

pulumi.Output<GetTriggerResult> getTriggerOutput(
  GetTriggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTrigger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTriggerResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1_get_trigger_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerIamPolicyResult> getTriggerIamPolicy(
  GetTriggerIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTriggerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTriggerIamPolicyResult> getTriggerIamPolicyOutput(
  GetTriggerIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTriggerIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTriggerIamPolicyResult.fromMap);
}

/// Get a single trigger.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1beta1_get_trigger_eventarc_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerEventarcV1beta1Result> getTriggerEventarcV1beta1(
  GetTriggerEventarcV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerEventarcV1beta1Result.fromMap(result);
}

pulumi.Output<GetTriggerEventarcV1beta1Result> getTriggerEventarcV1beta1Output(
  GetTriggerEventarcV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTrigger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTriggerEventarcV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_eventarc_v1beta1_get_trigger_iam_policy_eventarc_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerIamPolicyEventarcV1beta1Result> getTriggerIamPolicyEventarcV1beta1(
  GetTriggerIamPolicyEventarcV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTriggerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerIamPolicyEventarcV1beta1Result.fromMap(result);
}

pulumi.Output<GetTriggerIamPolicyEventarcV1beta1Result> getTriggerIamPolicyEventarcV1beta1Output(
  GetTriggerIamPolicyEventarcV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTriggerIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTriggerIamPolicyEventarcV1beta1Result.fromMap);
}
