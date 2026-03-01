// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_logs_application_logs.dart';
import 'linux_web_app_slot_logs_http_logs.dart';

class LinuxWebAppSlotLogs {
  /// A `application_logs` block as defined above.
  final LinuxWebAppSlotLogsApplicationLogs? applicationLogs;
  /// Should detailed error messages be enabled?
  final bool? detailedErrorMessages;
  /// Should the failed request tracing be enabled?
  final bool? failedRequestTracing;
  /// An `http_logs` block as defined above.
  final LinuxWebAppSlotLogsHttpLogs? httpLogs;

  /// Creates a new [LinuxWebAppSlotLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled?
  /// [failedRequestTracing] Should the failed request tracing be enabled?
  /// [httpLogs] An `http_logs` block as defined above.
  LinuxWebAppSlotLogs({
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

  factory LinuxWebAppSlotLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogs(
      applicationLogs: map['applicationLogs'] == null ? null : LinuxWebAppSlotLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>()),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : map['detailedErrorMessages'] as bool,
      failedRequestTracing: map['failedRequestTracing'] == null ? null : map['failedRequestTracing'] as bool,
      httpLogs: map['httpLogs'] == null ? null : LinuxWebAppSlotLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

