import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_console_args.dart';
import 'get_console_result.dart';
import 'get_console_with_location_args.dart';
import 'get_console_with_location_result.dart';
import 'get_dashboard_args.dart';
import 'get_dashboard_result.dart';
import 'get_tenant_configuration_args.dart';
import 'get_tenant_configuration_result.dart';
import 'get_user_settings_args.dart';
import 'get_user_settings_result.dart';
import 'get_user_settings_with_location_args.dart';
import 'get_user_settings_with_location_result.dart';
import 'list_list_tenant_configuration_violation_result.dart';

/// Gets the console for the user.
///
/// Uses Azure REST API version 2018-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_console_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsoleResult> getConsole(
  GetConsoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getConsole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsoleResult.fromMap(result);
}

pulumi.Output<GetConsoleResult> getConsoleOutput(
  GetConsoleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getConsole',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConsoleResult.fromMap);
}

/// Gets the console for the user.
///
/// Uses Azure REST API version 2018-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_console_with_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsoleWithLocationResult> getConsoleWithLocation(
  GetConsoleWithLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getConsoleWithLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsoleWithLocationResult.fromMap(result);
}

pulumi.Output<GetConsoleWithLocationResult> getConsoleWithLocationOutput(
  GetConsoleWithLocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getConsoleWithLocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConsoleWithLocationResult.fromMap);
}

/// Gets the Dashboard.
///
/// Uses Azure REST API version 2022-12-01-preview.
///
/// Other available API versions: 2019-01-01-preview, 2020-09-01-preview, 2025-04-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portal [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_dashboard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDashboardResult> getDashboard(
  GetDashboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getDashboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDashboardResult.fromMap(result);
}

pulumi.Output<GetDashboardResult> getDashboardOutput(
  GetDashboardArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getDashboard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDashboardResult.fromMap);
}

/// Gets the tenant configuration.
///
/// Uses Azure REST API version 2022-12-01-preview.
///
/// Other available API versions: 2019-01-01-preview, 2020-09-01-preview, 2025-04-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portal [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_tenant_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantConfigurationResult> getTenantConfiguration(
  GetTenantConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getTenantConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantConfigurationResult.fromMap(result);
}

pulumi.Output<GetTenantConfigurationResult> getTenantConfigurationOutput(
  GetTenantConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getTenantConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTenantConfigurationResult.fromMap);
}

/// Get current user settings for current signed in user. This operation returns settings for the user's cloud shell preferences including preferred location, storage profile, shell type, font and size settings.
///
/// Uses Azure REST API version 2018-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_user_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSettingsResult> getUserSettings(
  GetUserSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getUserSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSettingsResult.fromMap(result);
}

pulumi.Output<GetUserSettingsResult> getUserSettingsOutput(
  GetUserSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getUserSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserSettingsResult.fromMap);
}

/// Get current user settings for current signed in user. This operation returns settings for the user's cloud shell preferences including preferred location, storage profile, shell type, font and size settings.
///
/// Uses Azure REST API version 2018-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_portal_get_user_settings_with_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserSettingsWithLocationResult> getUserSettingsWithLocation(
  GetUserSettingsWithLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:getUserSettingsWithLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserSettingsWithLocationResult.fromMap(result);
}

pulumi.Output<GetUserSettingsWithLocationResult> getUserSettingsWithLocationOutput(
  GetUserSettingsWithLocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:getUserSettingsWithLocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserSettingsWithLocationResult.fromMap);
}

/// Gets list of items that violate tenant's configuration.
///
/// Uses Azure REST API version 2022-12-01-preview.
///
/// Other available API versions: 2020-09-01-preview, 2025-04-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portal [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListListTenantConfigurationViolationResult> listListTenantConfigurationViolation(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portal:listListTenantConfigurationViolation',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListTenantConfigurationViolationResult.fromMap(result);
}

pulumi.Output<ListListTenantConfigurationViolationResult> listListTenantConfigurationViolationOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:portal:listListTenantConfigurationViolation',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListListTenantConfigurationViolationResult.fromMap);
}
