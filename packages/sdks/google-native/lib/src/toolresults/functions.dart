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
