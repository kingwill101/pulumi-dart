import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_args.dart';
import 'get_repository_artifactregistry_v1beta1_args.dart';
import 'get_repository_artifactregistry_v1beta1_result.dart';
import 'get_repository_artifactregistry_v1beta2_args.dart';
import 'get_repository_artifactregistry_v1beta2_result.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta1_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta1_result.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta2_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta2_result.dart';
import 'get_repository_iam_policy_result.dart';
import 'get_repository_result.dart';
import 'get_tag_args.dart';
import 'get_tag_artifactregistry_v1beta1_args.dart';
import 'get_tag_artifactregistry_v1beta1_result.dart';
import 'get_tag_artifactregistry_v1beta2_args.dart';
import 'get_tag_artifactregistry_v1beta2_result.dart';
import 'get_tag_result.dart';

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

pulumi.Output<GetRepositoryResult> getRepositoryOutput(
  GetRepositoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepository',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryResult.fromMap);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRepositoryIamPolicyResult> getRepositoryIamPolicyOutput(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepositoryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryIamPolicyResult.fromMap);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

pulumi.Output<GetTagResult> getTagOutput(
  GetTagArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagResult.fromMap);
}

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_repository_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryArtifactregistryV1beta1Result> getRepositoryArtifactregistryV1beta1(
  GetRepositoryArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta1Result.fromMap(result);
}

pulumi.Output<GetRepositoryArtifactregistryV1beta1Result> getRepositoryArtifactregistryV1beta1Output(
  GetRepositoryArtifactregistryV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepository',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryArtifactregistryV1beta1Result.fromMap);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_repository_iam_policy_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyArtifactregistryV1beta1Result> getRepositoryIamPolicyArtifactregistryV1beta1(
  GetRepositoryIamPolicyArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta1Result.fromMap(result);
}

pulumi.Output<GetRepositoryIamPolicyArtifactregistryV1beta1Result> getRepositoryIamPolicyArtifactregistryV1beta1Output(
  GetRepositoryIamPolicyArtifactregistryV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepositoryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryIamPolicyArtifactregistryV1beta1Result.fromMap);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_tag_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagArtifactregistryV1beta1Result> getTagArtifactregistryV1beta1(
  GetTagArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta1Result.fromMap(result);
}

pulumi.Output<GetTagArtifactregistryV1beta1Result> getTagArtifactregistryV1beta1Output(
  GetTagArtifactregistryV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagArtifactregistryV1beta1Result.fromMap);
}

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryArtifactregistryV1beta2Result> getRepositoryArtifactregistryV1beta2(
  GetRepositoryArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta2Result.fromMap(result);
}

pulumi.Output<GetRepositoryArtifactregistryV1beta2Result> getRepositoryArtifactregistryV1beta2Output(
  GetRepositoryArtifactregistryV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepository',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryArtifactregistryV1beta2Result.fromMap);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_repository_iam_policy_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyArtifactregistryV1beta2Result> getRepositoryIamPolicyArtifactregistryV1beta2(
  GetRepositoryIamPolicyArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta2Result.fromMap(result);
}

pulumi.Output<GetRepositoryIamPolicyArtifactregistryV1beta2Result> getRepositoryIamPolicyArtifactregistryV1beta2Output(
  GetRepositoryIamPolicyArtifactregistryV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepositoryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRepositoryIamPolicyArtifactregistryV1beta2Result.fromMap);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_tag_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagArtifactregistryV1beta2Result> getTagArtifactregistryV1beta2(
  GetTagArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta2Result.fromMap(result);
}

pulumi.Output<GetTagArtifactregistryV1beta2Result> getTagArtifactregistryV1beta2Output(
  GetTagArtifactregistryV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getTag',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagArtifactregistryV1beta2Result.fromMap);
}
