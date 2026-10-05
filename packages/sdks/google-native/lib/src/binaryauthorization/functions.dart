import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestor_args.dart';
import 'get_attestor_binaryauthorization_v1beta1_args.dart';
import 'get_attestor_binaryauthorization_v1beta1_result.dart';
import 'get_attestor_iam_policy_args.dart';
import 'get_attestor_iam_policy_binaryauthorization_v1beta1_args.dart';
import 'get_attestor_iam_policy_binaryauthorization_v1beta1_result.dart';
import 'get_attestor_iam_policy_result.dart';
import 'get_attestor_result.dart';
import 'get_policy_args.dart';
import 'get_policy_iam_policy_args.dart';
import 'get_policy_iam_policy_binaryauthorization_v1beta1_args.dart';
import 'get_policy_iam_policy_binaryauthorization_v1beta1_result.dart';
import 'get_policy_iam_policy_result.dart';
import 'get_policy_result.dart';

/// Gets an attestor. Returns `NOT_FOUND` if the attestor does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1_get_attestor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestorResult> getAttestor(
  GetAttestorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getAttestor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorResult.fromMap(result);
}

pulumi.Output<GetAttestorResult> getAttestorOutput(
  GetAttestorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getAttestor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestorResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1_get_attestor_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestorIamPolicyResult> getAttestorIamPolicy(
  GetAttestorIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getAttestorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAttestorIamPolicyResult> getAttestorIamPolicyOutput(
  GetAttestorIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getAttestorIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestorIamPolicyResult.fromMap);
}

/// Gets a platform policy. Returns `NOT_FOUND` if the policy doesn't exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1_get_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyIamPolicyResult> getPolicyIamPolicy(
  GetPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyIamPolicyResult> getPolicyIamPolicyOutput(
  GetPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyIamPolicyResult.fromMap);
}

/// Gets an attestor. Returns NOT_FOUND if the attestor does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1beta1_get_attestor_binaryauthorization_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestorBinaryauthorizationV1beta1Result> getAttestorBinaryauthorizationV1beta1(
  GetAttestorBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorBinaryauthorizationV1beta1Result.fromMap(result);
}

pulumi.Output<GetAttestorBinaryauthorizationV1beta1Result> getAttestorBinaryauthorizationV1beta1Output(
  GetAttestorBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestorBinaryauthorizationV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1beta1_get_attestor_iam_policy_binaryauthorization_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestorIamPolicyBinaryauthorizationV1beta1Result> getAttestorIamPolicyBinaryauthorizationV1beta1(
  GetAttestorIamPolicyBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyBinaryauthorizationV1beta1Result.fromMap(result);
}

pulumi.Output<GetAttestorIamPolicyBinaryauthorizationV1beta1Result> getAttestorIamPolicyBinaryauthorizationV1beta1Output(
  GetAttestorIamPolicyBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestorIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAttestorIamPolicyBinaryauthorizationV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_binaryauthorization_v1beta1_get_policy_iam_policy_binaryauthorization_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyIamPolicyBinaryauthorizationV1beta1Result> getPolicyIamPolicyBinaryauthorizationV1beta1(
  GetPolicyIamPolicyBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyIamPolicyBinaryauthorizationV1beta1Result.fromMap(result);
}

pulumi.Output<GetPolicyIamPolicyBinaryauthorizationV1beta1Result> getPolicyIamPolicyBinaryauthorizationV1beta1Output(
  GetPolicyIamPolicyBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyIamPolicyBinaryauthorizationV1beta1Result.fromMap);
}
