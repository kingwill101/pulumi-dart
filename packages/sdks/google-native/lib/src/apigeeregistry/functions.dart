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

pulumi.Output<GetApiResult> getApiOutput(
  GetApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiResult.fromMap);
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

pulumi.Output<GetApiArtifactIamPolicyResult> getApiArtifactIamPolicyOutput(
  GetApiArtifactIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiArtifactIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiArtifactIamPolicyResult.fromMap);
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

pulumi.Output<GetApiDeploymentIamPolicyResult> getApiDeploymentIamPolicyOutput(
  GetApiDeploymentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiDeploymentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiDeploymentIamPolicyResult.fromMap);
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

pulumi.Output<GetApiIamPolicyResult> getApiIamPolicyOutput(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIamPolicyResult.fromMap);
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

pulumi.Output<GetApiVersionArtifactIamPolicyResult> getApiVersionArtifactIamPolicyOutput(
  GetApiVersionArtifactIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionArtifactIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiVersionArtifactIamPolicyResult.fromMap);
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

pulumi.Output<GetApiVersionIamPolicyResult> getApiVersionIamPolicyOutput(
  GetApiVersionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiVersionIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiVersionSpecArtifactIamPolicyResult> getApiVersionSpecArtifactIamPolicy(
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

pulumi.Output<GetApiVersionSpecArtifactIamPolicyResult> getApiVersionSpecArtifactIamPolicyOutput(
  GetApiVersionSpecArtifactIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionSpecArtifactIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiVersionSpecArtifactIamPolicyResult.fromMap);
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

pulumi.Output<GetApiVersionSpecIamPolicyResult> getApiVersionSpecIamPolicyOutput(
  GetApiVersionSpecIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApiVersionSpecIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiVersionSpecIamPolicyResult.fromMap);
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

pulumi.Output<GetArtifactResult> getArtifactOutput(
  GetArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactResult.fromMap);
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

pulumi.Output<GetArtifactIamPolicyResult> getArtifactIamPolicyOutput(
  GetArtifactIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getArtifactIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactIamPolicyResult.fromMap);
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

pulumi.Output<GetDeploymentResult> getDeploymentOutput(
  GetDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResult.fromMap);
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

pulumi.Output<GetDeploymentArtifactResult> getDeploymentArtifactOutput(
  GetDeploymentArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeploymentArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentArtifactResult.fromMap);
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

pulumi.Output<GetDocumentIamPolicyResult> getDocumentIamPolicyOutput(
  GetDocumentIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDocumentIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentIamPolicyResult.fromMap);
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

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
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

pulumi.Output<GetInstanceIamPolicyResult> getInstanceIamPolicyOutput(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceIamPolicyResult.fromMap);
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

pulumi.Output<GetRuntimeIamPolicyResult> getRuntimeIamPolicyOutput(
  GetRuntimeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getRuntimeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuntimeIamPolicyResult.fromMap);
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

pulumi.Output<GetSpecResult> getSpecOutput(
  GetSpecArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getSpec',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpecResult.fromMap);
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

pulumi.Output<GetVersionResult> getVersionOutput(
  GetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionResult.fromMap);
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

pulumi.Output<GetVersionArtifactResult> getVersionArtifactOutput(
  GetVersionArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersionArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionArtifactResult.fromMap);
}
