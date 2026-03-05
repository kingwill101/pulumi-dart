import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_args.dart';
import 'get_api_artifact_iam_policy_args.dart';
import 'get_api_artifact_iam_policy_result.dart';
import 'get_api_deployment_iam_policy_args.dart';
import 'get_api_deployment_iam_policy_result.dart';
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';
import 'get_api_result.dart';
import 'get_api_version_artifact_iam_policy_args.dart';
import 'get_api_version_artifact_iam_policy_result.dart';
import 'get_api_version_iam_policy_args.dart';
import 'get_api_version_iam_policy_result.dart';
import 'get_api_version_spec_artifact_iam_policy_args.dart';
import 'get_api_version_spec_artifact_iam_policy_result.dart';
import 'get_api_version_spec_iam_policy_args.dart';
import 'get_api_version_spec_iam_policy_result.dart';
import 'get_artifact_args.dart';
import 'get_artifact_iam_policy_args.dart';
import 'get_artifact_iam_policy_result.dart';
import 'get_artifact_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_artifact_args.dart';
import 'get_deployment_artifact_result.dart';
import 'get_deployment_result.dart';
import 'get_document_iam_policy_args.dart';
import 'get_document_iam_policy_result.dart';
import 'get_instance_args.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';
import 'get_runtime_iam_policy_args.dart';
import 'get_runtime_iam_policy_result.dart';
import 'get_spec_args.dart';
import 'get_spec_result.dart';
import 'get_version_args.dart';
import 'get_version_artifact_args.dart';
import 'get_version_artifact_result.dart';
import 'get_version_result.dart';

/// Returns a specified API.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_artifact_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiArtifactIamPolicyResult> getApiArtifactIamPolicy(
  GetApiArtifactIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiArtifactIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiArtifactIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_deployment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiDeploymentIamPolicyResult> getApiDeploymentIamPolicy(
  GetApiDeploymentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiDeploymentIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_version_artifact_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionArtifactIamPolicyResult> getApiVersionArtifactIamPolicy(
  GetApiVersionArtifactIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionArtifactIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionArtifactIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_version_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionIamPolicyResult> getApiVersionIamPolicy(
  GetApiVersionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionSpecArtifactIamPolicyResult>
getApiVersionSpecArtifactIamPolicy(
  GetApiVersionSpecArtifactIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionSpecArtifactIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionSpecArtifactIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_version_spec_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionSpecIamPolicyResult> getApiVersionSpecIamPolicy(
  GetApiVersionSpecIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionSpecIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiVersionSpecIamPolicyResult.fromMap(result);
}

/// Returns a specified artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactResult> getArtifact(
  GetArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_artifact_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactIamPolicyResult> getArtifactIamPolicy(
  GetArtifactIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifactIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactIamPolicyResult.fromMap(result);
}

/// Returns a specified deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

/// Returns a specified artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_deployment_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentArtifactResult> getDeploymentArtifact(
  GetDeploymentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeploymentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentArtifactResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_document_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentIamPolicyResult> getDocumentIamPolicy(
  GetDocumentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDocumentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentIamPolicyResult.fromMap(result);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_runtime_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeIamPolicyResult> getRuntimeIamPolicy(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getRuntimeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyResult.fromMap(result);
}

/// Returns a specified spec.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_spec_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpecResult> getSpec(
  GetSpecArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getSpec',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecResult.fromMap(result);
}

/// Returns a specified version.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

/// Returns a specified artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_version_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionArtifactResult> getVersionArtifact(
  GetVersionArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersionArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionArtifactResult.fromMap(result);
}
