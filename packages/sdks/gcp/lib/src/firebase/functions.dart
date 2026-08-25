import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_admin_sdk_config_args.dart';
import 'get_admin_sdk_config_result.dart';
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

/// A Google Cloud Firebase Admin SDK configuration
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about AdminSdkConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects/getAdminSdkConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
/// [args] Arguments passed to this invoke. {@macro pulumi_firebase_get_admin_sdk_config_get_admin_sdk_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdminSdkConfigResult> getAdminSdkConfig(
  GetAdminSdkConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAdminSdkConfig:getAdminSdkConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdminSdkConfigResult.fromMap(result);
}

pulumi.Output<GetAdminSdkConfigResult> getAdminSdkConfigOutput(
  GetAdminSdkConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getAdminSdkConfig:getAdminSdkConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdminSdkConfigResult.fromMap);
}

/// A Google Cloud Firebase Android application instance
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetAndroidAppResult> getAndroidAppOutput(
  GetAndroidAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getAndroidApp:getAndroidApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAndroidAppResult.fromMap);
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

pulumi.Output<GetAndroidAppConfigResult> getAndroidAppConfigOutput(
  GetAndroidAppConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getAndroidAppConfig:getAndroidAppConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAndroidAppConfigResult.fromMap);
}

/// A Google Cloud Firebase Apple application instance
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetAppleAppResult> getAppleAppOutput(
  GetAppleAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getAppleApp:getAppleApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppleAppResult.fromMap);
}

/// A Google Cloud Firebase Apple application configuration
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetAppleAppConfigResult> getAppleAppConfigOutput(
  GetAppleAppConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getAppleAppConfig:getAppleAppConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppleAppConfigResult.fromMap);
}

/// A Google Cloud Firebase Hosting Channel instance
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetHostingChannelResult> getHostingChannelOutput(
  GetHostingChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getHostingChannel:getHostingChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostingChannelResult.fromMap);
}

/// A Google Cloud Firebase web application instance
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetWebAppResult> getWebAppOutput(
  GetWebAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getWebApp:getWebApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppResult.fromMap);
}

/// A Google Cloud Firebase web application configuration
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
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

pulumi.Output<GetWebAppConfigResult> getWebAppConfigOutput(
  GetWebAppConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firebase/getWebAppConfig:getWebAppConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppConfigResult.fromMap);
}
