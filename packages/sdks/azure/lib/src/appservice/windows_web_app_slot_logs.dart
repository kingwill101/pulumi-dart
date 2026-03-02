// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_logs_application_logs.dart';
import 'windows_web_app_slot_logs_http_logs.dart';

class WindowsWebAppSlotLogs {
  /// A `application_logs` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsApplicationLogs>? applicationLogs;
  /// Should detailed error messages be enabled.
  final pulumi.Input<bool>? detailedErrorMessages;
  /// Should failed request tracing be enabled.
  final pulumi.Input<bool>? failedRequestTracing;
  /// An `http_logs` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsHttpLogs>? httpLogs;

  /// Creates a new [WindowsWebAppSlotLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled.
  /// [failedRequestTracing] Should failed request tracing be enabled.
  /// [httpLogs] An `http_logs` block as defined above.
  WindowsWebAppSlotLogs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogsApplicationLogs, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessages': ?detailedErrorMessages,
      'failedRequestTracing': ?failedRequestTracing,
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogsHttpLogs, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppSlotLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogs(
      applicationLogs: map['applicationLogs'] == null ? null : (WindowsWebAppSlotLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>())).input(),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : (map['detailedErrorMessages'] as bool).input(),
      failedRequestTracing: map['failedRequestTracing'] == null ? null : (map['failedRequestTracing'] as bool).input(),
      httpLogs: map['httpLogs'] == null ? null : (WindowsWebAppSlotLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

