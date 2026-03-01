import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_result.dart';

/// Get a Job specified by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:batch/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}
