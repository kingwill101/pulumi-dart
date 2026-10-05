import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_args.dart';
import 'get_autoscaling_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_dataproc_v1beta2_result.dart';
import 'get_autoscaling_policy_iam_policy_args.dart';
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_args.dart';
import 'get_autoscaling_policy_iam_policy_dataproc_v1beta2_result.dart';
import 'get_autoscaling_policy_iam_policy_result.dart';
import 'get_autoscaling_policy_result.dart';
import 'get_batch_args.dart';
import 'get_batch_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_dataproc_v1beta2_args.dart';
import 'get_cluster_dataproc_v1beta2_result.dart';
import 'get_cluster_result.dart';
import 'get_job_args.dart';
import 'get_job_dataproc_v1beta2_args.dart';
import 'get_job_dataproc_v1beta2_result.dart';
import 'get_job_result.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';
import 'get_region_autoscaling_policy_iam_policy_args.dart';
import 'get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_autoscaling_policy_iam_policy_result.dart';
import 'get_region_cluster_iam_policy_args.dart';
import 'get_region_cluster_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_cluster_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_cluster_iam_policy_result.dart';
import 'get_region_job_iam_policy_args.dart';
import 'get_region_job_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_job_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_job_iam_policy_result.dart';
import 'get_region_operation_iam_policy_args.dart';
import 'get_region_operation_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_operation_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_operation_iam_policy_result.dart';
import 'get_region_workflow_template_iam_policy_args.dart';
import 'get_region_workflow_template_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_workflow_template_iam_policy_dataproc_v1beta2_result.dart';
import 'get_region_workflow_template_iam_policy_result.dart';
import 'get_session_args.dart';
import 'get_session_result.dart';
import 'get_session_template_args.dart';
import 'get_session_template_result.dart';
import 'get_workflow_template_args.dart';
import 'get_workflow_template_dataproc_v1beta2_args.dart';
import 'get_workflow_template_dataproc_v1beta2_result.dart';
import 'get_workflow_template_iam_policy_args.dart';
import 'get_workflow_template_iam_policy_dataproc_v1beta2_args.dart';
import 'get_workflow_template_iam_policy_dataproc_v1beta2_result.dart';
import 'get_workflow_template_iam_policy_result.dart';
import 'get_workflow_template_result.dart';

/// Retrieves autoscaling policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_autoscaling_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyResult> getAutoscalingPolicy(
  GetAutoscalingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyResult.fromMap(result);
}

pulumi.Output<GetAutoscalingPolicyResult> getAutoscalingPolicyOutput(
  GetAutoscalingPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscalingPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_autoscaling_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicy(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicyOutput(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getAutoscalingPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscalingPolicyIamPolicyResult.fromMap);
}

/// Gets the batch workload resource representation.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_batch_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchResult> getBatch(
  GetBatchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getBatch',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchResult.fromMap(result);
}

pulumi.Output<GetBatchResult> getBatchOutput(
  GetBatchArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getBatch',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBatchResult.fromMap);
}

/// Gets the resource representation for a cluster in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Gets the resource representation for a job in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getJob',
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
    'google-native:dataproc/v1:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Gets the resource representation for a node group in a cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_node_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}

pulumi.Output<GetNodeGroupResult> getNodeGroupOutput(
  GetNodeGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getNodeGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodeGroupResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalingPolicyIamPolicyResult> getRegionAutoscalingPolicyIamPolicy(
  GetRegionAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalingPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegionAutoscalingPolicyIamPolicyResult> getRegionAutoscalingPolicyIamPolicyOutput(
  GetRegionAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionAutoscalingPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionAutoscalingPolicyIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionClusterIamPolicyResult> getRegionClusterIamPolicy(
  GetRegionClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegionClusterIamPolicyResult> getRegionClusterIamPolicyOutput(
  GetRegionClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionClusterIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionJobIamPolicyResult> getRegionJobIamPolicy(
  GetRegionJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionJobIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegionJobIamPolicyResult> getRegionJobIamPolicyOutput(
  GetRegionJobIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionJobIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_operation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionOperationIamPolicyResult> getRegionOperationIamPolicy(
  GetRegionOperationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionOperationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegionOperationIamPolicyResult> getRegionOperationIamPolicyOutput(
  GetRegionOperationIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionOperationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionOperationIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionWorkflowTemplateIamPolicyResult> getRegionWorkflowTemplateIamPolicy(
  GetRegionWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRegionWorkflowTemplateIamPolicyResult> getRegionWorkflowTemplateIamPolicyOutput(
  GetRegionWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getRegionWorkflowTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionWorkflowTemplateIamPolicyResult.fromMap);
}

/// Gets the resource representation for an interactive session.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionResult> getSession(
  GetSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionResult.fromMap(result);
}

pulumi.Output<GetSessionResult> getSessionOutput(
  GetSessionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSession',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionResult.fromMap);
}

/// Gets the resource representation for a session template.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_session_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionTemplateResult> getSessionTemplate(
  GetSessionTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSessionTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionTemplateResult.fromMap(result);
}

pulumi.Output<GetSessionTemplateResult> getSessionTemplateOutput(
  GetSessionTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getSessionTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSessionTemplateResult.fromMap);
}

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_workflow_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateResult> getWorkflowTemplate(
  GetWorkflowTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateResult.fromMap(result);
}

pulumi.Output<GetWorkflowTemplateResult> getWorkflowTemplateOutput(
  GetWorkflowTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowTemplateResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1_get_workflow_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateIamPolicyResult> getWorkflowTemplateIamPolicy(
  GetWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkflowTemplateIamPolicyResult> getWorkflowTemplateIamPolicyOutput(
  GetWorkflowTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowTemplateIamPolicyResult.fromMap);
}

/// Retrieves autoscaling policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_autoscaling_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyDataprocV1beta2Result> getAutoscalingPolicyDataprocV1beta2(
  GetAutoscalingPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetAutoscalingPolicyDataprocV1beta2Result> getAutoscalingPolicyDataprocV1beta2Output(
  GetAutoscalingPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscalingPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyIamPolicyDataprocV1beta2Result> getAutoscalingPolicyIamPolicyDataprocV1beta2(
  GetAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetAutoscalingPolicyIamPolicyDataprocV1beta2Result> getAutoscalingPolicyIamPolicyDataprocV1beta2Output(
  GetAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getAutoscalingPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the resource representation for a cluster in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_cluster_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterDataprocV1beta2Result> getClusterDataprocV1beta2(
  GetClusterDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetClusterDataprocV1beta2Result> getClusterDataprocV1beta2Output(
  GetClusterDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterDataprocV1beta2Result.fromMap);
}

/// Gets the resource representation for a job in a project.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_job_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobDataprocV1beta2Result> getJobDataprocV1beta2(
  GetJobDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetJobDataprocV1beta2Result> getJobDataprocV1beta2Output(
  GetJobDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result> getRegionAutoscalingPolicyIamPolicyDataprocV1beta2(
  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result> getRegionAutoscalingPolicyIamPolicyDataprocV1beta2Output(
  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionAutoscalingPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_cluster_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionClusterIamPolicyDataprocV1beta2Result> getRegionClusterIamPolicyDataprocV1beta2(
  GetRegionClusterIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionClusterIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetRegionClusterIamPolicyDataprocV1beta2Result> getRegionClusterIamPolicyDataprocV1beta2Output(
  GetRegionClusterIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionClusterIamPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionJobIamPolicyDataprocV1beta2Result> getRegionJobIamPolicyDataprocV1beta2(
  GetRegionJobIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionJobIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetRegionJobIamPolicyDataprocV1beta2Result> getRegionJobIamPolicyDataprocV1beta2Output(
  GetRegionJobIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionJobIamPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_operation_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionOperationIamPolicyDataprocV1beta2Result> getRegionOperationIamPolicyDataprocV1beta2(
  GetRegionOperationIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionOperationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetRegionOperationIamPolicyDataprocV1beta2Result> getRegionOperationIamPolicyDataprocV1beta2Output(
  GetRegionOperationIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionOperationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionOperationIamPolicyDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result> getRegionWorkflowTemplateIamPolicyDataprocV1beta2(
  GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result> getRegionWorkflowTemplateIamPolicyDataprocV1beta2Output(
  GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionWorkflowTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap);
}

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateDataprocV1beta2Result> getWorkflowTemplateDataprocV1beta2(
  GetWorkflowTemplateDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetWorkflowTemplateDataprocV1beta2Result> getWorkflowTemplateDataprocV1beta2Output(
  GetWorkflowTemplateDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowTemplateDataprocV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowTemplateIamPolicyDataprocV1beta2Result> getWorkflowTemplateIamPolicyDataprocV1beta2(
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap(result);
}

pulumi.Output<GetWorkflowTemplateIamPolicyDataprocV1beta2Result> getWorkflowTemplateIamPolicyDataprocV1beta2Output(
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowTemplateIamPolicyDataprocV1beta2Result.fromMap);
}
