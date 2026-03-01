import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_args.dart';
import 'get_workflow_result.dart';
import 'get_workflow_workflows_v1beta_args.dart';
import 'get_workflow_workflows_v1beta_result.dart';

/// Gets details of a single workflow.
/// [args] Arguments passed to this invoke. {@macro pulumi_workflows_v1_get_workflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowResult> getWorkflow(
  GetWorkflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflows/v1:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult.fromMap(result);
}

/// Gets details of a single Workflow.
/// [args] Arguments passed to this invoke. {@macro pulumi_workflows_v1beta_get_workflow_workflows_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowWorkflowsV1betaResult> getWorkflowWorkflowsV1beta(
  GetWorkflowWorkflowsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflows/v1beta:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowWorkflowsV1betaResult.fromMap(result);
}
