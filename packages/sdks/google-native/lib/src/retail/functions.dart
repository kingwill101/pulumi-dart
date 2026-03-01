import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_args.dart';
import 'get_control_result.dart';
import 'get_control_retail_v2alpha_args.dart';
import 'get_control_retail_v2alpha_result.dart';
import 'get_control_retail_v2beta_args.dart';
import 'get_control_retail_v2beta_result.dart';
import 'get_model_args.dart';
import 'get_model_result.dart';
import 'get_model_retail_v2alpha_args.dart';
import 'get_model_retail_v2alpha_result.dart';
import 'get_model_retail_v2beta_args.dart';
import 'get_model_retail_v2beta_result.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_product_retail_v2alpha_args.dart';
import 'get_product_retail_v2alpha_result.dart';
import 'get_product_retail_v2beta_args.dart';
import 'get_product_retail_v2beta_result.dart';
import 'get_serving_config_args.dart';
import 'get_serving_config_result.dart';
import 'get_serving_config_retail_v2alpha_args.dart';
import 'get_serving_config_retail_v2alpha_result.dart';
import 'get_serving_config_retail_v2beta_args.dart';
import 'get_serving_config_retail_v2beta_result.dart';

/// Gets a Control.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2_get_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlResult> getControl(
  GetControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlResult.fromMap(result);
}

/// Gets a model.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2_get_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}

/// Gets a Product.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2_get_serving_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServingConfigResult> getServingConfig(
  GetServingConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getServingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServingConfigResult.fromMap(result);
}

/// Gets a Control.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2alpha_get_control_retail_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlRetailV2alphaResult> getControlRetailV2alpha(
  GetControlRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlRetailV2alphaResult.fromMap(result);
}

/// Gets a model.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2alpha_get_model_retail_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelRetailV2alphaResult> getModelRetailV2alpha(
  GetModelRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelRetailV2alphaResult.fromMap(result);
}

/// Gets a Product.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2alpha_get_product_retail_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductRetailV2alphaResult> getProductRetailV2alpha(
  GetProductRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductRetailV2alphaResult.fromMap(result);
}

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2alpha_get_serving_config_retail_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServingConfigRetailV2alphaResult> getServingConfigRetailV2alpha(
  GetServingConfigRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getServingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServingConfigRetailV2alphaResult.fromMap(result);
}

/// Gets a Control.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2beta_get_control_retail_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlRetailV2betaResult> getControlRetailV2beta(
  GetControlRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlRetailV2betaResult.fromMap(result);
}

/// Gets a model.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2beta_get_model_retail_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelRetailV2betaResult> getModelRetailV2beta(
  GetModelRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelRetailV2betaResult.fromMap(result);
}

/// Gets a Product.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2beta_get_product_retail_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductRetailV2betaResult> getProductRetailV2beta(
  GetProductRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductRetailV2betaResult.fromMap(result);
}

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_retail_v2beta_get_serving_config_retail_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServingConfigRetailV2betaResult> getServingConfigRetailV2beta(
  GetServingConfigRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getServingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServingConfigRetailV2betaResult.fromMap(result);
}
