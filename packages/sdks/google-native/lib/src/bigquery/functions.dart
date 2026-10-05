import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'get_routine_args.dart';
import 'get_routine_result.dart';
import 'get_table_args.dart';
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';
import 'get_table_result.dart';

/// Returns the dataset specified by datasetID.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_v2_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

pulumi.Output<GetDatasetResult> getDatasetOutput(
  GetDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigquery/v2:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetResult.fromMap);
}

/// Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_v2_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getJob',
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
    'google-native:bigquery/v2:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Gets the specified routine resource by routine ID.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_v2_get_routine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutineResult> getRoutine(
  GetRoutineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getRoutine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutineResult.fromMap(result);
}

pulumi.Output<GetRoutineResult> getRoutineOutput(
  GetRoutineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigquery/v2:getRoutine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutineResult.fromMap);
}

/// Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_v2_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

pulumi.Output<GetTableResult> getTableOutput(
  GetTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_v2_get_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTableIamPolicyResult> getTableIamPolicyOutput(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigquery/v2:getTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableIamPolicyResult.fromMap);
}
