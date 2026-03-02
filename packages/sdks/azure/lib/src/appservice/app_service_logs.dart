// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_logs_application_logs.dart';
import 'app_service_logs_http_logs.dart';

class AppServiceLogs {
  /// An `application_logs` block as defined below.
  final pulumi.Input<AppServiceLogsApplicationLogs>? applicationLogs;
  /// Should `Detailed error messages` be enabled on this App Service? Defaults to `false`.
  final pulumi.Input<bool>? detailedErrorMessagesEnabled;
  /// Should `Failed request tracing` be enabled on this App Service? Defaults to `false`.
  final pulumi.Input<bool>? failedRequestTracingEnabled;
  /// An `http_logs` block as defined below.
  final pulumi.Input<AppServiceLogsHttpLogs>? httpLogs;

  /// Creates a new [AppServiceLogs].
  /// [applicationLogs] An `application_logs` block as defined below.
  /// [detailedErrorMessagesEnabled] Should `Detailed error messages` be enabled on this App Service? Defaults to `false`.
  /// [failedRequestTracingEnabled] Should `Failed request tracing` be enabled on this App Service? Defaults to `false`.
  /// [httpLogs] An `http_logs` block as defined below.
  AppServiceLogs({
    this.applicationLogs,
    this.detailedErrorMessagesEnabled,
    this.failedRequestTracingEnabled,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?pulumi.Input.mapOptionalInputValue<AppServiceLogsApplicationLogs, Map<String, dynamic>>(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessagesEnabled': ?detailedErrorMessagesEnabled,
      'failedRequestTracingEnabled': ?failedRequestTracingEnabled,
      'httpLogs': ?pulumi.Input.mapOptionalInputValue<AppServiceLogsHttpLogs, Map<String, dynamic>>(httpLogs, (value) => value.toMap()),
    };
  }

  factory AppServiceLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogs(
      applicationLogs: map['applicationLogs'] == null ? null : (AppServiceLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>())).input(),
      detailedErrorMessagesEnabled: map['detailedErrorMessagesEnabled'] == null ? null : (map['detailedErrorMessagesEnabled'] as bool).input(),
      failedRequestTracingEnabled: map['failedRequestTracingEnabled'] == null ? null : (map['failedRequestTracingEnabled'] as bool).input(),
      httpLogs: map['httpLogs'] == null ? null : (AppServiceLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

