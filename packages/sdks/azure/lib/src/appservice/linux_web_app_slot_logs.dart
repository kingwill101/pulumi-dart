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
  LinuxWebAppSlotLogs({
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
      applicationLogs: map['applicationLogs'] == null ? null : (LinuxWebAppSlotLogsApplicationLogs.fromMap((map['applicationLogs']! as Map).cast<String, dynamic>())).input(),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : (map['detailedErrorMessages']! as bool).input(),
      failedRequestTracing: map['failedRequestTracing'] == null ? null : (map['failedRequestTracing']! as bool).input(),
      httpLogs: map['httpLogs'] == null ? null : (LinuxWebAppSlotLogsHttpLogs.fromMap((map['httpLogs']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

