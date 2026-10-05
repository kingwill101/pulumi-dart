import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_annotation_spec_set_args.dart';
import 'get_annotation_spec_set_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_evaluation_job_args.dart';
import 'get_evaluation_job_result.dart';
import 'get_feedback_message_args.dart';
import 'get_feedback_message_result.dart';
import 'get_instruction_args.dart';
import 'get_instruction_result.dart';

/// Gets an annotation spec set by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalabeling_v1beta1_get_annotation_spec_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnnotationSpecSetResult> getAnnotationSpecSet(
  GetAnnotationSpecSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getAnnotationSpecSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationSpecSetResult.fromMap(result);
}

pulumi.Output<GetAnnotationSpecSetResult> getAnnotationSpecSetOutput(
  GetAnnotationSpecSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getAnnotationSpecSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnnotationSpecSetResult.fromMap);
}

/// Gets dataset by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalabeling_v1beta1_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

pulumi.Output<GetDatasetResult> getDatasetOutput(
  GetDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetResult.fromMap);
}

/// Gets an evaluation job by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalabeling_v1beta1_get_evaluation_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEvaluationJobResult> getEvaluationJob(
  GetEvaluationJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getEvaluationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationJobResult.fromMap(result);
}

pulumi.Output<GetEvaluationJobResult> getEvaluationJobOutput(
  GetEvaluationJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getEvaluationJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEvaluationJobResult.fromMap);
}

/// Get a FeedbackMessage object.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalabeling_v1beta1_get_feedback_message_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeedbackMessageResult> getFeedbackMessage(
  GetFeedbackMessageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getFeedbackMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeedbackMessageResult.fromMap(result);
}

pulumi.Output<GetFeedbackMessageResult> getFeedbackMessageOutput(
  GetFeedbackMessageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getFeedbackMessage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeedbackMessageResult.fromMap);
}

/// Gets an instruction by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_datalabeling_v1beta1_get_instruction_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstructionResult> getInstruction(
  GetInstructionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getInstruction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstructionResult.fromMap(result);
}

pulumi.Output<GetInstructionResult> getInstructionOutput(
  GetInstructionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getInstruction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstructionResult.fromMap);
}
