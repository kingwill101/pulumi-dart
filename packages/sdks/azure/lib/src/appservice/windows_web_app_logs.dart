// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_logs_application_logs.dart';
import 'windows_web_app_logs_http_logs.dart';

class WindowsWebAppLogs {
  /// A `application_logs` block as defined above.
  final WindowsWebAppLogsApplicationLogs? applicationLogs;
  /// Should detailed error messages be enabled.
  final bool? detailedErrorMessages;
  /// Should tracing be enabled for failed requests.
  final bool? failedRequestTracing;
  /// A `http_logs` block as defined above.
  final WindowsWebAppLogsHttpLogs? httpLogs;

  /// Creates a new [WindowsWebAppLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled.
  /// [failedRequestTracing] Should tracing be enabled for failed requests.
  /// [httpLogs] A `http_logs` block as defined above.
  WindowsWebAppLogs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?applicationLogs == null ? null : applicationLogs!.toMap(),
      'detailedErrorMessages': ?detailedErrorMessages,
      'failedRequestTracing': ?failedRequestTracing,
      'httpLogs': ?httpLogs == null ? null : httpLogs!.toMap(),
    };
  }

  factory WindowsWebAppLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppLogs(
      applicationLogs: map['applicationLogs'] == null ? null : WindowsWebAppLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>()),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : map['detailedErrorMessages'] as bool,
      failedRequestTracing: map['failedRequestTracing'] == null ? null : map['failedRequestTracing'] as bool,
      httpLogs: map['httpLogs'] == null ? null : WindowsWebAppLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

