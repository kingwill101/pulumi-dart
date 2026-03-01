import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';

/// Looks up a single pipeline. Returns a "NOT_FOUND" error if no such pipeline exists. Returns a "FORBIDDEN" error if the caller doesn't have permission to access it.
/// [args] Arguments passed to this invoke. {@macro pulumi_datapipelines_v1_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datapipelines/v1:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}
