// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_logs_config.dart';
import 'enabled_config.dart';
import 'http_logs_config.dart';

/// {@template pulumi_web_web_app_diagnostic_logs_configuration_args_doc}
/// The set of arguments for WebAppDiagnosticLogsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_diagnostic_logs_configuration_args_doc}
class WebAppDiagnosticLogsConfigurationArgs {
  /// Application logs configuration.
  final pulumi.Input<ApplicationLogsConfig>? applicationLogs;
  /// Detailed error messages configuration.
  final pulumi.Input<EnabledConfig>? detailedErrorMessages;
  /// Failed requests tracing configuration.
  final pulumi.Input<EnabledConfig>? failedRequestsTracing;
  /// HTTP logs configuration.
  final pulumi.Input<HttpLogsConfig>? httpLogs;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppDiagnosticLogsConfigurationArgs].
  /// [applicationLogs] Application logs configuration.
  /// [detailedErrorMessages] Detailed error messages configuration.
  /// [failedRequestsTracing] Failed requests tracing configuration.
  /// [httpLogs] HTTP logs configuration.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppDiagnosticLogsConfigurationArgs({
    pulumi.Output<ApplicationLogsConfig>? applicationLogs,
    pulumi.Output<EnabledConfig>? detailedErrorMessages,
    pulumi.Output<EnabledConfig>? failedRequestsTracing,
    pulumi.Output<HttpLogsConfig>? httpLogs,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationLogs = pulumi.Input.asOptionalInput<ApplicationLogsConfig>(applicationLogs),
      detailedErrorMessages = pulumi.Input.asOptionalInput<EnabledConfig>(detailedErrorMessages),
      failedRequestsTracing = pulumi.Input.asOptionalInput<EnabledConfig>(failedRequestsTracing),
      httpLogs = pulumi.Input.asOptionalInput<HttpLogsConfig>(httpLogs),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<ApplicationLogsConfig, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessages': ?pulumi.Input.mapOptionalInputValue<EnabledConfig, Map<String, dynamic>>(detailedErrorMessages, (value) => value.toMap()),
      'failedRequestsTracing': ?pulumi.Input.mapOptionalInputValue<EnabledConfig, Map<String, dynamic>>(failedRequestsTracing, (value) => value.toMap()),
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<HttpLogsConfig, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppDiagnosticLogsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDiagnosticLogsConfigurationArgs(
      applicationLogs: map['applicationLogs'] == null ? null : pulumi.Output.create<ApplicationLogsConfig>(ApplicationLogsConfig.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>())),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : pulumi.Output.create<EnabledConfig>(EnabledConfig.fromMap((map['detailedErrorMessages'] as Map).cast<String, dynamic>())),
      failedRequestsTracing: map['failedRequestsTracing'] == null ? null : pulumi.Output.create<EnabledConfig>(EnabledConfig.fromMap((map['failedRequestsTracing'] as Map).cast<String, dynamic>())),
      httpLogs: map['httpLogs'] == null ? null : pulumi.Output.create<HttpLogsConfig>(HttpLogsConfig.fromMap((map['httpLogs'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

