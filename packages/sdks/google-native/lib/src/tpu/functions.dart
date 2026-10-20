import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_args.dart';
import 'get_node_result.dart';
import 'get_node_tpu_v1alpha1_args.dart';
import 'get_node_tpu_v1alpha1_result.dart';
import 'get_node_tpu_v2_args.dart';
import 'get_node_tpu_v2_result.dart';
import 'get_node_tpu_v2alpha1_args.dart';
import 'get_node_tpu_v2alpha1_result.dart';
import 'get_queued_resource_args.dart';
import 'get_queued_resource_result.dart';

/// Gets the details of a node.
/// [args] Arguments passed to this invoke. {@macro pulumi_tpu_v1_get_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeResult> getNode(
  GetNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v1:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeResult.fromMap(result);
}

pulumi.Output<GetNodeResult> getNodeOutput(
  GetNodeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:tpu/v1:getNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeResult.fromMap);
}

/// Gets the details of a node.
/// [args] Arguments passed to this invoke. {@macro pulumi_tpu_v1alpha1_get_node_tpu_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTpuV1alpha1Result> getNodeTpuV1alpha1(
  GetNodeTpuV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v1alpha1:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV1alpha1Result.fromMap(result);
}

pulumi.Output<GetNodeTpuV1alpha1Result> getNodeTpuV1alpha1Output(
  GetNodeTpuV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:tpu/v1alpha1:getNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeTpuV1alpha1Result.fromMap);
}

/// Gets the details of a node.
/// [args] Arguments passed to this invoke. {@macro pulumi_tpu_v2_get_node_tpu_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTpuV2Result> getNodeTpuV2(
  GetNodeTpuV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV2Result.fromMap(result);
}

pulumi.Output<GetNodeTpuV2Result> getNodeTpuV2Output(
  GetNodeTpuV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:tpu/v2:getNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeTpuV2Result.fromMap);
}

/// Gets the details of a node.
/// [args] Arguments passed to this invoke. {@macro pulumi_tpu_v2alpha1_get_node_tpu_v2alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTpuV2alpha1Result> getNodeTpuV2alpha1(
  GetNodeTpuV2alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTpuV2alpha1Result.fromMap(result);
}

pulumi.Output<GetNodeTpuV2alpha1Result> getNodeTpuV2alpha1Output(
  GetNodeTpuV2alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeTpuV2alpha1Result.fromMap);
}

/// Gets details of a queued resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_tpu_v2alpha1_get_queued_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueuedResourceResult> getQueuedResource(
  GetQueuedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getQueuedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuedResourceResult.fromMap(result);
}

pulumi.Output<GetQueuedResourceResult> getQueuedResourceOutput(
  GetQueuedResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:tpu/v2alpha1:getQueuedResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueuedResourceResult.fromMap);
}
