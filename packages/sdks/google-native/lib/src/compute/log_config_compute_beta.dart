// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options_compute_beta.dart';
import 'log_config_counter_options_compute_beta.dart';
import 'log_config_data_access_options_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsComputeBeta>? cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptionsComputeBeta>? counter;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsComputeBeta>? dataAccess;

  /// Creates a new [LogConfigComputeBeta].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigComputeBeta({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptionsComputeBeta, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': ?pulumi.Input.mapOptionalInputValue<LogConfigCounterOptionsComputeBeta, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptionsComputeBeta, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigComputeBeta(
      cloudAudit: map['cloudAudit'] == null ? null : (LogConfigCloudAuditOptionsComputeBeta.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>())).input(),
      counter: map['counter'] == null ? null : (LogConfigCounterOptionsComputeBeta.fromMap((map['counter'] as Map).cast<String, dynamic>())).input(),
      dataAccess: map['dataAccess'] == null ? null : (LogConfigDataAccessOptionsComputeBeta.fromMap((map['dataAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

