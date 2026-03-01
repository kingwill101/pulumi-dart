import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bitbucket_server_config_args.dart';
import 'get_bitbucket_server_config_result.dart';
import 'get_build_args.dart';
import 'get_build_result.dart';
import 'get_connection_args.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';
import 'get_connection_result.dart';
import 'get_git_lab_config_args.dart';
import 'get_git_lab_config_result.dart';
import 'get_github_enterprise_config_args.dart';
import 'get_github_enterprise_config_result.dart';
import 'get_repository_args.dart';
import 'get_repository_result.dart';
import 'get_trigger_args.dart';
import 'get_trigger_result.dart';
import 'get_worker_pool_args.dart';
import 'get_worker_pool_cloudbuild_v1alpha1_args.dart';
import 'get_worker_pool_cloudbuild_v1alpha1_result.dart';
import 'get_worker_pool_cloudbuild_v1alpha2_args.dart';
import 'get_worker_pool_cloudbuild_v1alpha2_result.dart';
import 'get_worker_pool_cloudbuild_v1beta1_args.dart';
import 'get_worker_pool_cloudbuild_v1beta1_result.dart';
import 'get_worker_pool_result.dart';

/// Retrieve a `BitbucketServerConfig`. This API is experimental.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_bitbucket_server_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBitbucketServerConfigResult> getBitbucketServerConfig(
  GetBitbucketServerConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBitbucketServerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBitbucketServerConfigResult.fromMap(result);
}

/// Returns information about a previously requested build. The `Build` that is returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and timing information.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_build_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBuildResult> getBuild(
  GetBuildArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getBuild',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBuildResult.fromMap(result);
}

/// Retrieves a `GitLabConfig`. This API is experimental
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_git_lab_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGitLabConfigResult> getGitLabConfig(
  GetGitLabConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getGitLabConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGitLabConfigResult.fromMap(result);
}

/// Retrieve a GitHubEnterpriseConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_github_enterprise_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGithubEnterpriseConfigResult> getGithubEnterpriseConfig(
  GetGithubEnterpriseConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getGithubEnterpriseConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGithubEnterpriseConfigResult.fromMap(result);
}

/// Returns information about a `BuildTrigger`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}

/// Returns details of a `WorkerPool`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1_get_worker_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}

/// Returns information about a `WorkerPool`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1alpha1_get_worker_pool_cloudbuild_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolCloudbuildV1alpha1Result> getWorkerPoolCloudbuildV1alpha1(
  GetWorkerPoolCloudbuildV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1alpha1Result.fromMap(result);
}

/// Returns details of a `WorkerPool`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1alpha2_get_worker_pool_cloudbuild_v1alpha2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolCloudbuildV1alpha2Result> getWorkerPoolCloudbuildV1alpha2(
  GetWorkerPoolCloudbuildV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha2:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1alpha2Result.fromMap(result);
}

/// Returns details of a `WorkerPool`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v1beta1_get_worker_pool_cloudbuild_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolCloudbuildV1beta1Result> getWorkerPoolCloudbuildV1beta1(
  GetWorkerPoolCloudbuildV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1beta1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1beta1Result.fromMap(result);
}

/// Gets details of a single connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v2_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v2_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}

/// Gets details of a single repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbuild_v2_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}
