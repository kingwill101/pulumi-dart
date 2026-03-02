// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options_response_compute_v1.dart';
import 'log_config_counter_options_response_compute_v1.dart';
import 'log_config_data_access_options_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsResponseComputeV1> cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptionsResponseComputeV1> counter;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsResponseComputeV1> dataAccess;

  /// Creates a new [LogConfigResponseComputeV1].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigResponseComputeV1({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': pulumi.Input.mapInputValue<LogConfigCloudAuditOptionsResponseComputeV1, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': pulumi.Input.mapInputValue<LogConfigCounterOptionsResponseComputeV1, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': pulumi.Input.mapInputValue<LogConfigDataAccessOptionsResponseComputeV1, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseComputeV1(
      cloudAudit: (LogConfigCloudAuditOptionsResponseComputeV1.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>())).input(),
      counter: (LogConfigCounterOptionsResponseComputeV1.fromMap((map['counter'] as Map).cast<String, dynamic>())).input(),
      dataAccess: (LogConfigDataAccessOptionsResponseComputeV1.fromMap((map['dataAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

