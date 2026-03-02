// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options.dart';
import 'log_config_counter_options.dart';
import 'log_config_data_access_options.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfig {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptions>? cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptions>? counter;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptions>? dataAccess;

  /// Creates a new [LogConfig].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfig({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptions, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': ?pulumi.Input.mapOptionalInputValue<LogConfigCounterOptions, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptions, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfig.fromMap(Map<String, dynamic> map) {
    return LogConfig(
      cloudAudit: map['cloudAudit'] == null ? null : (LogConfigCloudAuditOptions.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>())).input(),
      counter: map['counter'] == null ? null : (LogConfigCounterOptions.fromMap((map['counter'] as Map).cast<String, dynamic>())).input(),
      dataAccess: map['dataAccess'] == null ? null : (LogConfigDataAccessOptions.fromMap((map['dataAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

