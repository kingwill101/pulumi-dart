import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';
import 'get_job_result.dart';
import 'get_model_args.dart';
import 'get_model_iam_policy_args.dart';
import 'get_model_iam_policy_result.dart';
import 'get_model_result.dart';
import 'get_study_args.dart';
import 'get_study_result.dart';
import 'get_trial_args.dart';
import 'get_trial_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Describes a job.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getJob',
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
    'google-native:ml/v1:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getJobIamPolicy',
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
    'google-native:ml/v1:getJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobIamPolicyResult.fromMap);
}

/// Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}

pulumi.Output<GetModelResult> getModelOutput(
  GetModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:ml/v1:getModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_model_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelIamPolicyResult> getModelIamPolicy(
  GetModelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelIamPolicyResult.fromMap(result);
}

pulumi.Output<GetModelIamPolicyResult> getModelIamPolicyOutput(
  GetModelIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:ml/v1:getModelIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelIamPolicyResult.fromMap);
}

/// Gets a study.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_study_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudyResult> getStudy(
  GetStudyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyResult.fromMap(result);
}

pulumi.Output<GetStudyResult> getStudyOutput(
  GetStudyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:ml/v1:getStudy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStudyResult.fromMap);
}

/// Gets a trial.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_trial_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrialResult> getTrial(
  GetTrialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialResult.fromMap(result);
}

pulumi.Output<GetTrialResult> getTrialOutput(
  GetTrialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:ml/v1:getTrial',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrialResult.fromMap);
}

/// Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.
/// [args] Arguments passed to this invoke. {@macro pulumi_ml_v1_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

pulumi.Output<GetVersionResult> getVersionOutput(
  GetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:ml/v1:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionResult.fromMap);
}
