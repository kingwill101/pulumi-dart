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
