import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_args.dart';
import 'get_function_cloudfunctions_v2_args.dart';
import 'get_function_cloudfunctions_v2_result.dart';
import 'get_function_cloudfunctions_v2alpha_args.dart';
import 'get_function_cloudfunctions_v2alpha_result.dart';
import 'get_function_cloudfunctions_v2beta_args.dart';
import 'get_function_cloudfunctions_v2beta_result.dart';
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2_result.dart';
import 'get_function_iam_policy_cloudfunctions_v2alpha_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2alpha_result.dart';
import 'get_function_iam_policy_cloudfunctions_v2beta_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2beta_result.dart';
import 'get_function_iam_policy_result.dart';
import 'get_function_result.dart';

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v1_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

pulumi.Output<GetFunctionResult> getFunctionOutput(
  GetFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionResult.fromMap);
}

/// Gets the IAM access control policy for a function. Returns an empty policy if the function exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v1_get_function_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetFunctionIamPolicyResult> getFunctionIamPolicyOutput(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyResult.fromMap);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2_get_function_cloudfunctions_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2Result> getFunctionCloudfunctionsV2(
  GetFunctionCloudfunctionsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2Result.fromMap(result);
}

pulumi.Output<GetFunctionCloudfunctionsV2Result> getFunctionCloudfunctionsV2Output(
  GetFunctionCloudfunctionsV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionCloudfunctionsV2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2_get_function_iam_policy_cloudfunctions_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2Result> getFunctionIamPolicyCloudfunctionsV2(
  GetFunctionIamPolicyCloudfunctionsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2Result.fromMap(result);
}

pulumi.Output<GetFunctionIamPolicyCloudfunctionsV2Result> getFunctionIamPolicyCloudfunctionsV2Output(
  GetFunctionIamPolicyCloudfunctionsV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyCloudfunctionsV2Result.fromMap);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2alphaResult> getFunctionCloudfunctionsV2alpha(
  GetFunctionCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2alphaResult.fromMap(result);
}

pulumi.Output<GetFunctionCloudfunctionsV2alphaResult> getFunctionCloudfunctionsV2alphaOutput(
  GetFunctionCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionCloudfunctionsV2alphaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2alpha_get_function_iam_policy_cloudfunctions_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2alphaResult> getFunctionIamPolicyCloudfunctionsV2alpha(
  GetFunctionIamPolicyCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2alphaResult.fromMap(result);
}

pulumi.Output<GetFunctionIamPolicyCloudfunctionsV2alphaResult> getFunctionIamPolicyCloudfunctionsV2alphaOutput(
  GetFunctionIamPolicyCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyCloudfunctionsV2alphaResult.fromMap);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2beta_get_function_cloudfunctions_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2betaResult> getFunctionCloudfunctionsV2beta(
  GetFunctionCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2betaResult.fromMap(result);
}

pulumi.Output<GetFunctionCloudfunctionsV2betaResult> getFunctionCloudfunctionsV2betaOutput(
  GetFunctionCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionCloudfunctionsV2betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2beta_get_function_iam_policy_cloudfunctions_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2betaResult> getFunctionIamPolicyCloudfunctionsV2beta(
  GetFunctionIamPolicyCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2betaResult.fromMap(result);
}

pulumi.Output<GetFunctionIamPolicyCloudfunctionsV2betaResult> getFunctionIamPolicyCloudfunctionsV2betaOutput(
  GetFunctionIamPolicyCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunctionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionIamPolicyCloudfunctionsV2betaResult.fromMap);
}
