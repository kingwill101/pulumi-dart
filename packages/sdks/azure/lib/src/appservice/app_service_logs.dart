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
      'applicationLogs':
          ?pulumi.Input.mapOptionalInputValue<
            AppServiceLogsApplicationLogs,
            Map<String, dynamic>
          >(applicationLogs, (value) => value.toMap()),
      'detailedErrorMessagesEnabled': ?detailedErrorMessagesEnabled,
      'failedRequestTracingEnabled': ?failedRequestTracingEnabled,
      'httpLogs':
          ?pulumi.Input.mapOptionalInputValue<
            AppServiceLogsHttpLogs,
            Map<String, dynamic>
          >(httpLogs, (value) => value.toMap()),
    };
  }

  factory AppServiceLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogs(
      applicationLogs: (() {
        final guardedValue = map['applicationLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppServiceLogsApplicationLogs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      detailedErrorMessagesEnabled: (() {
        final guardedValue = map['detailedErrorMessagesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      failedRequestTracingEnabled: (() {
        final guardedValue = map['failedRequestTracingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpLogs: (() {
        final guardedValue = map['httpLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppServiceLogsHttpLogs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
