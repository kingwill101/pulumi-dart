import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_apigateway_v1beta_args.dart';
import 'get_api_apigateway_v1beta_result.dart';
import 'get_api_args.dart';
import 'get_api_config_iam_policy_apigateway_v1beta_args.dart';
import 'get_api_config_iam_policy_apigateway_v1beta_result.dart';
import 'get_api_config_iam_policy_args.dart';
import 'get_api_config_iam_policy_result.dart';
import 'get_api_iam_policy_apigateway_v1beta_args.dart';
import 'get_api_iam_policy_apigateway_v1beta_result.dart';
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';
import 'get_api_result.dart';
import 'get_config_apigateway_v1beta_args.dart';
import 'get_config_apigateway_v1beta_result.dart';
import 'get_config_args.dart';
import 'get_config_result.dart';
import 'get_gateway_apigateway_v1beta_args.dart';
import 'get_gateway_apigateway_v1beta_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_iam_policy_apigateway_v1beta_args.dart';
import 'get_gateway_iam_policy_apigateway_v1beta_result.dart';
import 'get_gateway_iam_policy_args.dart';
import 'get_gateway_iam_policy_result.dart';
import 'get_gateway_result.dart';

/// Gets details of a single Api.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getApi',
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
    'google-native:apigateway/v1:getApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_api_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiConfigIamPolicyResult> getApiConfigIamPolicy(
  GetApiConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getApiConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyResult.fromMap(result);
}

pulumi.Output<GetApiConfigIamPolicyResult> getApiConfigIamPolicyOutput(
  GetApiConfigIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1:getApiConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiConfigIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_api_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getApiIamPolicy',
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
    'google-native:apigateway/v1:getApiIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIamPolicyResult.fromMap);
}

/// Gets details of a single ApiConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}

pulumi.Output<GetConfigResult> getConfigOutput(
  GetConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1:getConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigResult.fromMap);
}

/// Gets details of a single Gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1_get_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayIamPolicyResult> getGatewayIamPolicy(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult.fromMap(result);
}

pulumi.Output<GetGatewayIamPolicyResult> getGatewayIamPolicyOutput(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1:getGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayIamPolicyResult.fromMap);
}

/// Gets details of a single Api.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_api_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiApigatewayV1betaResult> getApiApigatewayV1beta(
  GetApiApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetApiApigatewayV1betaResult> getApiApigatewayV1betaOutput(
  GetApiApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiApigatewayV1betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_api_config_iam_policy_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiConfigIamPolicyApigatewayV1betaResult> getApiConfigIamPolicyApigatewayV1beta(
  GetApiConfigIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetApiConfigIamPolicyApigatewayV1betaResult> getApiConfigIamPolicyApigatewayV1betaOutput(
  GetApiConfigIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiConfigIamPolicyApigatewayV1betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_api_iam_policy_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIamPolicyApigatewayV1betaResult> getApiIamPolicyApigatewayV1beta(
  GetApiIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetApiIamPolicyApigatewayV1betaResult> getApiIamPolicyApigatewayV1betaOutput(
  GetApiIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIamPolicyApigatewayV1betaResult.fromMap);
}

/// Gets details of a single ApiConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_config_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigApigatewayV1betaResult> getConfigApigatewayV1beta(
  GetConfigApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetConfigApigatewayV1betaResult> getConfigApigatewayV1betaOutput(
  GetConfigApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigApigatewayV1betaResult.fromMap);
}

/// Gets details of a single Gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_gateway_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayApigatewayV1betaResult> getGatewayApigatewayV1beta(
  GetGatewayApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetGatewayApigatewayV1betaResult> getGatewayApigatewayV1betaOutput(
  GetGatewayApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayApigatewayV1betaResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_v1beta_get_gateway_iam_policy_apigateway_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayIamPolicyApigatewayV1betaResult> getGatewayIamPolicyApigatewayV1beta(
  GetGatewayIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyApigatewayV1betaResult.fromMap(result);
}

pulumi.Output<GetGatewayIamPolicyApigatewayV1betaResult> getGatewayIamPolicyApigatewayV1betaOutput(
  GetGatewayIamPolicyApigatewayV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayIamPolicyApigatewayV1betaResult.fromMap);
}
