import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_app_args.dart';
import 'get_android_app_result.dart';
import 'get_ios_app_args.dart';
import 'get_ios_app_result.dart';
import 'get_web_app_args.dart';
import 'get_web_app_result.dart';

/// Gets the specified AndroidApp.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_v1beta1_get_android_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getAndroidApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}

/// Gets the specified IosApp.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_v1beta1_get_ios_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIosAppResult> getIosApp(
  GetIosAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getIosApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIosAppResult.fromMap(result);
}

/// Gets the specified WebApp.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_v1beta1_get_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppResult> getWebApp(
  GetWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppResult.fromMap(result);
}
