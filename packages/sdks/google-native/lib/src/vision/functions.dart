import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_product_set_args.dart';
import 'get_product_set_result.dart';
import 'get_reference_image_args.dart';
import 'get_reference_image_result.dart';

/// Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_vision_v1_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Gets information associated with a ProductSet. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_vision_v1_get_product_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductSetResult> getProductSet(
  GetProductSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getProductSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductSetResult.fromMap(result);
}

/// Gets information associated with a ReferenceImage. Possible errors: * Returns NOT_FOUND if the specified image does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_vision_v1_get_reference_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReferenceImageResult> getReferenceImage(
  GetReferenceImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getReferenceImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceImageResult.fromMap(result);
}
