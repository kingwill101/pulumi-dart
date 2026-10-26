import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_mapping_args.dart';
import 'get_domain_mapping_result.dart';
import 'get_job_args.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';
import 'get_job_iam_policy_run_v2_args.dart';
import 'get_job_iam_policy_run_v2_result.dart';
import 'get_job_result.dart';
import 'get_job_run_v2_args.dart';
import 'get_job_run_v2_result.dart';
import 'get_service_args.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_iam_policy_run_v2_args.dart';
import 'get_service_iam_policy_run_v2_result.dart';
import 'get_service_result.dart';
import 'get_service_run_v2_args.dart';
import 'get_service_run_v2_result.dart';

/// Get information about a domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_domain_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingResult> getDomainMapping(
  GetDomainMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult.fromMap(result);
}

pulumi.Output<GetDomainMappingResult> getDomainMappingOutput(
  GetDomainMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v1:getDomainMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainMappingResult.fromMap);
}

/// Get information about a job.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJob',
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
    'google-native:run/v1:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Get the IAM Access Control policy currently in effect for the given job. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult.fromMap(result);
}

pulumi.Output<GetJobIamPolicyResult> getJobIamPolicyOutput(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v1:getJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobIamPolicyResult.fromMap);
}

/// Gets information about a service.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v1:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run service. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v1_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceIamPolicyResult> getServiceIamPolicyOutput(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v1:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyResult.fromMap);
}

/// Gets information about a Job.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_job_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobRunV2Result> getJobRunV2(
  GetJobRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobRunV2Result.fromMap(result);
}

pulumi.Output<GetJobRunV2Result> getJobRunV2Output(
  GetJobRunV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v2:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobRunV2Result.fromMap);
}

/// Gets the IAM Access Control policy currently in effect for the given Job. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_job_iam_policy_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyRunV2Result> getJobIamPolicyRunV2(
  GetJobIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyRunV2Result.fromMap(result);
}

pulumi.Output<GetJobIamPolicyRunV2Result> getJobIamPolicyRunV2Output(
  GetJobIamPolicyRunV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v2:getJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobIamPolicyRunV2Result.fromMap);
}

/// Gets information about a Service.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_service_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceRunV2Result> getServiceRunV2(
  GetServiceRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRunV2Result.fromMap(result);
}

pulumi.Output<GetServiceRunV2Result> getServiceRunV2Output(
  GetServiceRunV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v2:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceRunV2Result.fromMap);
}

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.
/// [args] Arguments passed to this invoke. {@macro pulumi_run_v2_get_service_iam_policy_run_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyRunV2Result> getServiceIamPolicyRunV2(
  GetServiceIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyRunV2Result.fromMap(result);
}

pulumi.Output<GetServiceIamPolicyRunV2Result> getServiceIamPolicyRunV2Output(
  GetServiceIamPolicyRunV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:run/v2:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyRunV2Result.fromMap);
}
