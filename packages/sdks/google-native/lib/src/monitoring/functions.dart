import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_policy_args.dart';
import 'get_alert_policy_result.dart';
import 'get_dashboard_args.dart';
import 'get_dashboard_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_metric_descriptor_args.dart';
import 'get_metric_descriptor_result.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';
import 'get_service_args.dart';
import 'get_service_level_objective_args.dart';
import 'get_service_level_objective_result.dart';
import 'get_service_result.dart';
import 'get_snooze_args.dart';
import 'get_snooze_result.dart';
import 'get_uptime_check_config_args.dart';
import 'get_uptime_check_config_result.dart';

/// Fetches a specific dashboard.This method requires the monitoring.dashboards.get permission on the specified dashboard. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v1_get_dashboard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDashboardResult> getDashboard(
  GetDashboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v1:getDashboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDashboardResult.fromMap(result);
}

/// Gets a single alerting policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_alert_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertPolicyResult> getAlertPolicy(
  GetAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertPolicyResult.fromMap(result);
}

/// Gets a single group.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Gets a single metric descriptor.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_metric_descriptor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricDescriptorResult> getMetricDescriptor(
  GetMetricDescriptorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getMetricDescriptor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricDescriptorResult.fromMap(result);
}

/// Gets a single notification channel. The channel includes the relevant configuration details with which the channel was created. However, the response may truncate or omit passwords, API keys, or other private key matter and thus the response may not be 100% identical to the information that was supplied in the call to the create method.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_notification_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getNotificationChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}

/// Get the named Service.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Get a ServiceLevelObjective by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_service_level_objective_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLevelObjectiveResult> getServiceLevelObjective(
  GetServiceLevelObjectiveArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getServiceLevelObjective',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLevelObjectiveResult.fromMap(result);
}

/// Retrieves a Snooze by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_snooze_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnoozeResult> getSnooze(
  GetSnoozeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getSnooze',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnoozeResult.fromMap(result);
}

/// Gets a single Uptime check configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitoring_v3_get_uptime_check_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUptimeCheckConfigResult> getUptimeCheckConfig(
  GetUptimeCheckConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getUptimeCheckConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUptimeCheckConfigResult.fromMap(result);
}
