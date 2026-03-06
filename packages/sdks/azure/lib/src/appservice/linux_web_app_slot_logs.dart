// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_logs_application_logs.dart';
import 'linux_web_app_slot_logs_http_logs.dart';

class LinuxWebAppSlotLogs {
  /// A `application_logs` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsApplicationLogs>? applicationLogs;
  /// Should detailed error messages be enabled?
  final pulumi.Input<bool>? detailedErrorMessages;
  /// Should the failed request tracing be enabled?
  final pulumi.Input<bool>? failedRequestTracing;
  /// An `http_logs` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsHttpLogs>? httpLogs;

  /// Creates a new [LinuxWebAppSlotLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled?
  /// [failedRequestTracing] Should the failed request tracing be enabled?
  /// [httpLogs] An `http_logs` block as defined above.
  const LinuxWebAppSlotLogs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsApplicationLogs, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessages': ?detailedErrorMessages,
      'failedRequestTracing': ?failedRequestTracing,
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsHttpLogs, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSlotLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogs(
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotLogsApplicationLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failedRequestTracing: (() { final guardedValue = map['failedRequestTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotLogsHttpLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

