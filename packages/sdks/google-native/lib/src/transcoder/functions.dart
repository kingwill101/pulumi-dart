import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'get_job_template_args.dart';
import 'get_job_template_result.dart';

/// Returns the job data.
/// [args] Arguments passed to this invoke. {@macro pulumi_transcoder_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:transcoder/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Returns the job template data.
/// [args] Arguments passed to this invoke. {@macro pulumi_transcoder_v1_get_job_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobTemplateResult> getJobTemplate(
  GetJobTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:transcoder/v1:getJobTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobTemplateResult.fromMap(result);
}
