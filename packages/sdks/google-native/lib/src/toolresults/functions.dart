import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_args.dart';
import 'get_execution_result.dart';
import 'get_history_args.dart';
import 'get_history_result.dart';
import 'get_perf_sample_series_args.dart';
import 'get_perf_sample_series_result.dart';
import 'get_step_args.dart';
import 'get_step_result.dart';

/// Gets an Execution. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Execution does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_toolresults_v1beta3_get_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}

pulumi.Output<GetExecutionResult> getExecutionOutput(
  GetExecutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getExecution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExecutionResult.fromMap);
}

/// Gets a History. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the History does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_toolresults_v1beta3_get_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHistoryResult> getHistory(
  GetHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHistoryResult.fromMap(result);
}

pulumi.Output<GetHistoryResult> getHistoryOutput(
  GetHistoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getHistory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHistoryResult.fromMap);
}

/// Gets a PerfSampleSeries. May return any of the following error code(s): - NOT_FOUND - The specified PerfSampleSeries does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_toolresults_v1beta3_get_perf_sample_series_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPerfSampleSeriesResult> getPerfSampleSeries(
  GetPerfSampleSeriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getPerfSampleSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPerfSampleSeriesResult.fromMap(result);
}

pulumi.Output<GetPerfSampleSeriesResult> getPerfSampleSeriesOutput(
  GetPerfSampleSeriesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getPerfSampleSeries',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPerfSampleSeriesResult.fromMap);
}

/// Gets a Step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Step does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_toolresults_v1beta3_get_step_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStepResult> getStep(
  GetStepArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getStep',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStepResult.fromMap(result);
}

pulumi.Output<GetStepResult> getStepOutput(
  GetStepArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getStep',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStepResult.fromMap);
}
