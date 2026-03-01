// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_response_compute_v1.dart';
import 'log_config_counter_options_response_compute_v1.dart';
import 'log_config_data_access_options_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsResponseComputeV1 cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsResponseComputeV1 counter;
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsResponseComputeV1 dataAccess;

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
      'cloudAudit': cloudAudit.toMap(),
      'counter': counter.toMap(),
      'dataAccess': dataAccess.toMap(),
    };
  }

  factory LogConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseComputeV1(
      cloudAudit: LogConfigCloudAuditOptionsResponseComputeV1.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: LogConfigCounterOptionsResponseComputeV1.fromMap((map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: LogConfigDataAccessOptionsResponseComputeV1.fromMap((map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

