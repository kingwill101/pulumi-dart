// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_log_application_log.dart';
import 'get_windows_web_app_log_http_log.dart';

class GetWindowsWebAppLog {
  /// A `application_logs` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppLogApplicationLog>> applicationLogs;
  /// Is Detailed Error Messaging enabled.
  final pulumi.Input<bool> detailedErrorMessages;
  /// Is Failed Request Tracing enabled.
  final pulumi.Input<bool> failedRequestTracing;
  /// An `http_logs` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppLogHttpLog>> httpLogs;

  /// Creates a new [GetWindowsWebAppLog].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Is Detailed Error Messaging enabled.
  /// [failedRequestTracing] Is Failed Request Tracing enabled.
  /// [httpLogs] An `http_logs` block as defined above.
  GetWindowsWebAppLog({
    required this.applicationLogs,
    required this.detailedErrorMessages,
    required this.failedRequestTracing,
    required this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': pulumi.Input.mapInputValue<List<GetWindowsWebAppLogApplicationLog>, List<Map<String, dynamic>>>(applicationLogs, (value) => pulumi.Input.encodeList<GetWindowsWebAppLogApplicationLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detailedErrorMessages': detailedErrorMessages,
      'failedRequestTracing': failedRequestTracing,
      'httpLogs': pulumi.Input.mapInputValue<List<GetWindowsWebAppLogHttpLog>, List<Map<String, dynamic>>>(httpLogs, (value) => pulumi.Input.encodeList<GetWindowsWebAppLogHttpLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWindowsWebAppLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLog(
      applicationLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppLogApplicationLog>(map['applicationLogs']!, (value) => GetWindowsWebAppLogApplicationLog.fromMap((value as Map).cast<String, dynamic>()))),
      detailedErrorMessages: pulumi.Input.fromValue(map['detailedErrorMessages'] as bool),
      failedRequestTracing: pulumi.Input.fromValue(map['failedRequestTracing'] as bool),
      httpLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppLogHttpLog>(map['httpLogs']!, (value) => GetWindowsWebAppLogHttpLog.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

