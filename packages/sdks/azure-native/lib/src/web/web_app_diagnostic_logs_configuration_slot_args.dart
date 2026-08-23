// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_logs_config.dart';
import 'enabled_config.dart';
import 'http_logs_config.dart';

/// {@template pulumi_web_web_app_diagnostic_logs_configuration_slot_args_doc}
/// The set of arguments for WebAppDiagnosticLogsConfigurationSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_diagnostic_logs_configuration_slot_args_doc}
class WebAppDiagnosticLogsConfigurationSlotArgs {
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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the logging configuration for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppDiagnosticLogsConfigurationSlotArgs].
  /// [applicationLogs] Application logs configuration.
  /// [detailedErrorMessages] Detailed error messages configuration.
  /// [failedRequestsTracing] Failed requests tracing configuration.
  /// [httpLogs] HTTP logs configuration.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the logging configuration for the production slot.
  const WebAppDiagnosticLogsConfigurationSlotArgs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestsTracing,
    this.httpLogs,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<ApplicationLogsConfig, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessages': ?pulumi.Input.mapOptionalInputValue<EnabledConfig, Map<String, dynamic>>(detailedErrorMessages, (value) => value.toMap()),
      'failedRequestsTracing': ?pulumi.Input.mapOptionalInputValue<EnabledConfig, Map<String, dynamic>>(failedRequestsTracing, (value) => value.toMap()),
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<HttpLogsConfig, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppDiagnosticLogsConfigurationSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDiagnosticLogsConfigurationSlotArgs(
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnabledConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failedRequestsTracing: (() { final guardedValue = map['failedRequestsTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnabledConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
