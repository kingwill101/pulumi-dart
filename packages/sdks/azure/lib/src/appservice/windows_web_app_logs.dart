// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_logs_application_logs.dart';
import 'windows_web_app_logs_http_logs.dart';

class WindowsWebAppLogs {
  /// A `application_logs` block as defined above.
  final pulumi.Input<WindowsWebAppLogsApplicationLogs>? applicationLogs;
  /// Should detailed error messages be enabled.
  final pulumi.Input<bool>? detailedErrorMessages;
  /// Should tracing be enabled for failed requests.
  final pulumi.Input<bool>? failedRequestTracing;
  /// A `http_logs` block as defined above.
  final pulumi.Input<WindowsWebAppLogsHttpLogs>? httpLogs;

  /// Creates a new [WindowsWebAppLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled.
  /// [failedRequestTracing] Should tracing be enabled for failed requests.
  /// [httpLogs] A `http_logs` block as defined above.
  const WindowsWebAppLogs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogsApplicationLogs, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessages': ?detailedErrorMessages,
      'failedRequestTracing': ?failedRequestTracing,
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogsHttpLogs, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppLogs(
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppLogsApplicationLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failedRequestTracing: (() { final guardedValue = map['failedRequestTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppLogsHttpLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

