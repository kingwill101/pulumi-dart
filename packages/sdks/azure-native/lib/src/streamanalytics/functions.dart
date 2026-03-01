import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';
import 'get_input_args.dart';
import 'get_input_result.dart';
import 'get_output_args.dart';
import 'get_output_result.dart';
import 'get_private_endpoint_args.dart';
import 'get_private_endpoint_result.dart';
import 'get_streaming_job_args.dart';
import 'get_streaming_job_result.dart';
import 'list_cluster_streaming_jobs_args.dart';
import 'list_cluster_streaming_jobs_result.dart';

/// Gets information about the specified cluster.
///
/// Uses Azure REST API version 2020-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Gets details about the specified function.
///
/// Uses Azure REST API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

/// Gets details about the specified input.
///
/// Uses Azure REST API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_input_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInputResult> getInput(
  GetInputArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getInput',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInputResult.fromMap(result);
}

/// Gets details about the specified output.
///
/// Uses Azure REST API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_output_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutputResult> getOutput(
  GetOutputArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getOutput',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutputResult.fromMap(result);
}

/// Gets information about the specified Private Endpoint.
///
/// Uses Azure REST API version 2020-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointResult> getPrivateEndpoint(
  GetPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointResult.fromMap(result);
}

/// Gets details about the specified streaming job.
///
/// Uses Azure REST API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_get_streaming_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamingJobResult> getStreamingJob(
  GetStreamingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:getStreamingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamingJobResult.fromMap(result);
}

/// Lists all of the streaming jobs in the given cluster.
///
/// Uses Azure REST API version 2020-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_streamanalytics_list_cluster_streaming_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClusterStreamingJobsResult> listClusterStreamingJobs(
  ListClusterStreamingJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:streamanalytics:listClusterStreamingJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClusterStreamingJobsResult.fromMap(result);
}
