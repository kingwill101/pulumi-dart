// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_log_application_log.dart';
import 'get_linux_web_app_log_http_log.dart';

class GetLinuxWebAppLog {
  /// A `application_logs` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppLogApplicationLog>> applicationLogs;
  /// Is Detailed Error Messaging enabled.
  final pulumi.Input<bool> detailedErrorMessages;
  /// Is Failed Request Tracing enabled.
  final pulumi.Input<bool> failedRequestTracing;
  /// An `http_logs` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppLogHttpLog>> httpLogs;

  /// Creates a new [GetLinuxWebAppLog].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Is Detailed Error Messaging enabled.
  /// [failedRequestTracing] Is Failed Request Tracing enabled.
  /// [httpLogs] An `http_logs` block as defined above.
  const GetLinuxWebAppLog({
    required this.applicationLogs,
    required this.detailedErrorMessages,
    required this.failedRequestTracing,
    required this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': pulumi.Input.mapInputValue<List<GetLinuxWebAppLogApplicationLog>, List<Map<String, dynamic>>>(applicationLogs, (value) => pulumi.Input.encodeList<GetLinuxWebAppLogApplicationLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detailedErrorMessages': detailedErrorMessages,
      'failedRequestTracing': failedRequestTracing,
      'httpLogs': pulumi.Input.mapInputValue<List<GetLinuxWebAppLogHttpLog>, List<Map<String, dynamic>>>(httpLogs, (value) => pulumi.Input.encodeList<GetLinuxWebAppLogHttpLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLinuxWebAppLog.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLog(
      applicationLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppLogApplicationLog>(map['applicationLogs']!, (value) => GetLinuxWebAppLogApplicationLog.fromMap((value as Map).cast<String, dynamic>()))),
      detailedErrorMessages: pulumi.Input.fromValue(map['detailedErrorMessages'] as bool),
      failedRequestTracing: pulumi.Input.fromValue(map['failedRequestTracing'] as bool),
      httpLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppLogHttpLog>(map['httpLogs']!, (value) => GetLinuxWebAppLogHttpLog.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

