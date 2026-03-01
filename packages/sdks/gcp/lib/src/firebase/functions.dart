import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_app_args.dart';
import 'get_android_app_config_args.dart';
import 'get_android_app_config_result.dart';
import 'get_android_app_result.dart';
import 'get_apple_app_args.dart';
import 'get_apple_app_config_args.dart';
import 'get_apple_app_config_result.dart';
import 'get_apple_app_result.dart';
import 'get_hosting_channel_args.dart';
import 'get_hosting_channel_result.dart';
import 'get_web_app_args.dart';
import 'get_web_app_config_args.dart';
import 'get_web_app_config_result.dart';
import 'get_web_app_result.dart';

/// A Google Cloud Firebase Android application instance
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_android_app_get_android_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidApp:getAndroidApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_android_app_config_get_android_app_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAndroidAppConfigResult> getAndroidAppConfig(
  GetAndroidAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidAppConfig:getAndroidAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppConfigResult.fromMap(result);
}

/// A Google Cloud Firebase Apple application instance
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_apple_app_get_apple_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppleAppResult> getAppleApp(
  GetAppleAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAppleApp:getAppleApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppleAppResult.fromMap(result);
}

/// A Google Cloud Firebase Apple application configuration
///
/// To get more information about iosApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.iosApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_apple_app_config_get_apple_app_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppleAppConfigResult> getAppleAppConfig(
  GetAppleAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAppleAppConfig:getAppleAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppleAppConfigResult.fromMap(result);
}

/// A Google Cloud Firebase Hosting Channel instance
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_hosting_channel_get_hosting_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostingChannelResult> getHostingChannel(
  GetHostingChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getHostingChannel:getHostingChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostingChannelResult.fromMap(result);
}

/// A Google Cloud Firebase web application instance
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_web_app_get_web_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppResult> getWebApp(
  GetWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getWebApp:getWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppResult.fromMap(result);
}

/// A Google Cloud Firebase web application configuration
///
/// To get more information about WebApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.webApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_web_app_config_get_web_app_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppConfigResult> getWebAppConfig(
  GetWebAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getWebAppConfig:getWebAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppConfigResult.fromMap(result);
}
