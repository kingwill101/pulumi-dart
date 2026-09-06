import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorized_application_args.dart';
import 'get_authorized_application_result.dart';
import 'get_custom_rollout_args.dart';
import 'get_custom_rollout_result.dart';
import 'get_default_rollout_args.dart';
import 'get_default_rollout_result.dart';
import 'get_notification_registration_args.dart';
import 'get_notification_registration_result.dart';
import 'get_provider_monitor_setting_args.dart';
import 'get_provider_monitor_setting_result.dart';
import 'get_provider_registration_args.dart';
import 'get_provider_registration_result.dart';
import 'get_resource_type_registration_args.dart';
import 'get_resource_type_registration_result.dart';
import 'get_skus_args.dart';
import 'get_skus_nested_resource_type_first_args.dart';
import 'get_skus_nested_resource_type_first_result.dart';
import 'get_skus_nested_resource_type_second_args.dart';
import 'get_skus_nested_resource_type_second_result.dart';
import 'get_skus_nested_resource_type_third_args.dart';
import 'get_skus_nested_resource_type_third_result.dart';
import 'get_skus_result.dart';

/// Gets the authorized application details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_authorized_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedApplicationResult> getAuthorizedApplication(
  GetAuthorizedApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getAuthorizedApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedApplicationResult.fromMap(result);
}

pulumi.Output<GetAuthorizedApplicationResult> getAuthorizedApplicationOutput(
  GetAuthorizedApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getAuthorizedApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizedApplicationResult.fromMap);
}

/// Gets the custom rollout details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_custom_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRolloutResult> getCustomRollout(
  GetCustomRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getCustomRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRolloutResult.fromMap(result);
}

pulumi.Output<GetCustomRolloutResult> getCustomRolloutOutput(
  GetCustomRolloutArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getCustomRollout',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomRolloutResult.fromMap);
}

/// Gets the default rollout details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_default_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultRolloutResult> getDefaultRollout(
  GetDefaultRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getDefaultRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultRolloutResult.fromMap(result);
}

pulumi.Output<GetDefaultRolloutResult> getDefaultRolloutOutput(
  GetDefaultRolloutArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getDefaultRollout',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultRolloutResult.fromMap);
}

/// Gets the notification registration details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_notification_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationRegistrationResult> getNotificationRegistration(
  GetNotificationRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getNotificationRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationRegistrationResult.fromMap(result);
}

pulumi.Output<GetNotificationRegistrationResult> getNotificationRegistrationOutput(
  GetNotificationRegistrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getNotificationRegistration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationRegistrationResult.fromMap);
}

/// Gets the provider monitor setting details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_provider_monitor_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderMonitorSettingResult> getProviderMonitorSetting(
  GetProviderMonitorSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderMonitorSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderMonitorSettingResult.fromMap(result);
}

pulumi.Output<GetProviderMonitorSettingResult> getProviderMonitorSettingOutput(
  GetProviderMonitorSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderMonitorSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProviderMonitorSettingResult.fromMap);
}

/// Gets the provider registration details.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_provider_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderRegistrationResult> getProviderRegistration(
  GetProviderRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderRegistrationResult.fromMap(result);
}

pulumi.Output<GetProviderRegistrationResult> getProviderRegistrationOutput(
  GetProviderRegistrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getProviderRegistration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProviderRegistrationResult.fromMap);
}

/// Gets a resource type details in the given subscription and provider.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_resource_type_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceTypeRegistrationResult> getResourceTypeRegistration(
  GetResourceTypeRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getResourceTypeRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceTypeRegistrationResult.fromMap(result);
}

pulumi.Output<GetResourceTypeRegistrationResult> getResourceTypeRegistrationOutput(
  GetResourceTypeRegistrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getResourceTypeRegistration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceTypeRegistrationResult.fromMap);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusResult> getSkus(
  GetSkusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusResult.fromMap(result);
}

pulumi.Output<GetSkusResult> getSkusOutput(
  GetSkusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getSkus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSkusResult.fromMap);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeFirstResult> getSkusNestedResourceTypeFirst(
  GetSkusNestedResourceTypeFirstArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeFirst',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeFirstResult.fromMap(result);
}

pulumi.Output<GetSkusNestedResourceTypeFirstResult> getSkusNestedResourceTypeFirstOutput(
  GetSkusNestedResourceTypeFirstArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeFirst',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSkusNestedResourceTypeFirstResult.fromMap);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_second_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeSecondResult> getSkusNestedResourceTypeSecond(
  GetSkusNestedResourceTypeSecondArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeSecond',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeSecondResult.fromMap(result);
}

pulumi.Output<GetSkusNestedResourceTypeSecondResult> getSkusNestedResourceTypeSecondOutput(
  GetSkusNestedResourceTypeSecondArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeSecond',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSkusNestedResourceTypeSecondResult.fromMap);
}

/// Gets the sku details for the given resource type and sku name.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_providerhub_get_skus_nested_resource_type_third_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSkusNestedResourceTypeThirdResult> getSkusNestedResourceTypeThird(
  GetSkusNestedResourceTypeThirdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeThird',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSkusNestedResourceTypeThirdResult.fromMap(result);
}

pulumi.Output<GetSkusNestedResourceTypeThirdResult> getSkusNestedResourceTypeThirdOutput(
  GetSkusNestedResourceTypeThirdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:providerhub:getSkusNestedResourceTypeThird',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSkusNestedResourceTypeThirdResult.fromMap);
}
