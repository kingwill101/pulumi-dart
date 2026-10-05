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

pulumi.Output<GetControlResult> getControlOutput(
  GetControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2:getControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlResult.fromMap);
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

pulumi.Output<GetModelResult> getModelOutput(
  GetModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2:getModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelResult.fromMap);
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

pulumi.Output<GetProductResult> getProductOutput(
  GetProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductResult.fromMap);
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

pulumi.Output<GetServingConfigResult> getServingConfigOutput(
  GetServingConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2:getServingConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServingConfigResult.fromMap);
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

pulumi.Output<GetControlRetailV2alphaResult> getControlRetailV2alphaOutput(
  GetControlRetailV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlRetailV2alphaResult.fromMap);
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

pulumi.Output<GetModelRetailV2alphaResult> getModelRetailV2alphaOutput(
  GetModelRetailV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelRetailV2alphaResult.fromMap);
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

pulumi.Output<GetProductRetailV2alphaResult> getProductRetailV2alphaOutput(
  GetProductRetailV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductRetailV2alphaResult.fromMap);
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

pulumi.Output<GetServingConfigRetailV2alphaResult> getServingConfigRetailV2alphaOutput(
  GetServingConfigRetailV2alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getServingConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServingConfigRetailV2alphaResult.fromMap);
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

pulumi.Output<GetControlRetailV2betaResult> getControlRetailV2betaOutput(
  GetControlRetailV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2beta:getControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlRetailV2betaResult.fromMap);
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

pulumi.Output<GetModelRetailV2betaResult> getModelRetailV2betaOutput(
  GetModelRetailV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2beta:getModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelRetailV2betaResult.fromMap);
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

pulumi.Output<GetProductRetailV2betaResult> getProductRetailV2betaOutput(
  GetProductRetailV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2beta:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductRetailV2betaResult.fromMap);
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

pulumi.Output<GetServingConfigRetailV2betaResult> getServingConfigRetailV2betaOutput(
  GetServingConfigRetailV2betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:retail/v2beta:getServingConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServingConfigRetailV2betaResult.fromMap);
}
