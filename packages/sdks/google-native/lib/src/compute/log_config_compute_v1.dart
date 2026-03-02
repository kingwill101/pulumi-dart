// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options_compute_v1.dart';
import 'log_config_counter_options_compute_v1.dart';
import 'log_config_data_access_options_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsComputeV1>? cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptionsComputeV1>? counter;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsComputeV1>? dataAccess;

  /// Creates a new [LogConfigComputeV1].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigComputeV1({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?pulumi.Input.mapOptionalInputValue<LogConfigCloudAuditOptionsComputeV1, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': ?pulumi.Input.mapOptionalInputValue<LogConfigCounterOptionsComputeV1, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptionsComputeV1, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigComputeV1(
      cloudAudit: map['cloudAudit'] == null ? null : (LogConfigCloudAuditOptionsComputeV1.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>())).input(),
      counter: map['counter'] == null ? null : (LogConfigCounterOptionsComputeV1.fromMap((map['counter'] as Map).cast<String, dynamic>())).input(),
      dataAccess: map['dataAccess'] == null ? null : (LogConfigDataAccessOptionsComputeV1.fromMap((map['dataAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

