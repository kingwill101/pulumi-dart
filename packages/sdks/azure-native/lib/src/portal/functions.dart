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
