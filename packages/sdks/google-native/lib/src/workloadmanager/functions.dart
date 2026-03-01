import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_evaluation_args.dart';
import 'get_evaluation_result.dart';

/// Gets details of a single Evaluation.
/// [args] Arguments passed to this invoke. {@macro pulumi_workloadmanager_v1_get_evaluation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEvaluationResult> getEvaluation(
  GetEvaluationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workloadmanager/v1:getEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationResult.fromMap(result);
}
