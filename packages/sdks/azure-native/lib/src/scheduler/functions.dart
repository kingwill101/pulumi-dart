import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_collection_args.dart';
import 'get_job_collection_result.dart';
import 'get_job_result.dart';

/// Gets a job.
///
/// Uses Azure REST API version 2016-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_scheduler_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scheduler:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scheduler:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Gets a job collection.
///
/// Uses Azure REST API version 2016-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_scheduler_get_job_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobCollectionResult> getJobCollection(
  GetJobCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:scheduler:getJobCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobCollectionResult.fromMap(result);
}

pulumi.Output<GetJobCollectionResult> getJobCollectionOutput(
  GetJobCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:scheduler:getJobCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobCollectionResult.fromMap);
}
