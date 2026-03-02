// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_logs_application_logs.dart';
import 'slot_logs_http_logs.dart';

class SlotLogs {
  /// An `application_logs` block as defined below.
  final pulumi.Input<SlotLogsApplicationLogs>? applicationLogs;
  /// Should `Detailed error messages` be enabled on this App Service slot? Defaults to `false`.
  final pulumi.Input<bool>? detailedErrorMessagesEnabled;
  /// Should `Failed request tracing` be enabled on this App Service slot? Defaults to `false`.
  final pulumi.Input<bool>? failedRequestTracingEnabled;
  /// An `http_logs` block as defined below.
  final pulumi.Input<SlotLogsHttpLogs>? httpLogs;

  /// Creates a new [SlotLogs].
  /// [applicationLogs] An `application_logs` block as defined below.
  /// [detailedErrorMessagesEnabled] Should `Detailed error messages` be enabled on this App Service slot? Defaults to `false`.
  /// [failedRequestTracingEnabled] Should `Failed request tracing` be enabled on this App Service slot? Defaults to `false`.
  /// [httpLogs] An `http_logs` block as defined below.
  SlotLogs({
    this.applicationLogs,
    this.detailedErrorMessagesEnabled,
    this.failedRequestTracingEnabled,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<SlotLogsApplicationLogs, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessagesEnabled': ?detailedErrorMessagesEnabled,
      'failedRequestTracingEnabled': ?failedRequestTracingEnabled,
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<SlotLogsHttpLogs, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
    };
  }

  factory SlotLogs.fromMap(Map<String, dynamic> map) {
    return SlotLogs(
      applicationLogs: map['applicationLogs'] == null ? null : (SlotLogsApplicationLogs.fromMap((map['applicationLogs']! as Map).cast<String, dynamic>())).input(),
      detailedErrorMessagesEnabled: map['detailedErrorMessagesEnabled'] == null ? null : (map['detailedErrorMessagesEnabled']! as bool).input(),
      failedRequestTracingEnabled: map['failedRequestTracingEnabled'] == null ? null : (map['failedRequestTracingEnabled']! as bool).input(),
      httpLogs: map['httpLogs'] == null ? null : (SlotLogsHttpLogs.fromMap((map['httpLogs']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

