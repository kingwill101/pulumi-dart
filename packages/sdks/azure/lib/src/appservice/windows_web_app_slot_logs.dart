// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_logs_application_logs.dart';
import 'windows_web_app_slot_logs_http_logs.dart';

class WindowsWebAppSlotLogs {
  /// A `applicationLogs` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsApplicationLogs>? applicationLogs;
  /// Should detailed error messages be enabled.
  final pulumi.Input<bool>? detailedErrorMessages;
  /// Should failed request tracing be enabled.
  final pulumi.Input<bool>? failedRequestTracing;
  /// An `httpLogs` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsHttpLogs>? httpLogs;

  /// Creates a new [WindowsWebAppSlotLogs].
  /// [applicationLogs] A `applicationLogs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled.
  /// [failedRequestTracing] Should failed request tracing be enabled.
  /// [httpLogs] An `httpLogs` block as defined above.
  const WindowsWebAppSlotLogs({
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
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotLogsApplicationLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failedRequestTracing: (() { final guardedValue = map['failedRequestTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotLogsHttpLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
