// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options_response_compute_beta.dart';
import 'log_config_counter_options_response_compute_beta.dart';
import 'log_config_data_access_options_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsResponseComputeBeta> cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptionsResponseComputeBeta> counter;

  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsResponseComputeBeta> dataAccess;

  /// Creates a new [LogConfigResponseComputeBeta].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigResponseComputeBeta({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit':
          pulumi.Input.mapInputValue<
            LogConfigCloudAuditOptionsResponseComputeBeta,
            Map<String, dynamic>
          >(cloudAudit, (value) => value.toMap()),
      'counter':
          pulumi.Input.mapInputValue<
            LogConfigCounterOptionsResponseComputeBeta,
            Map<String, dynamic>
          >(counter, (value) => value.toMap()),
      'dataAccess':
          pulumi.Input.mapInputValue<
            LogConfigDataAccessOptionsResponseComputeBeta,
            Map<String, dynamic>
          >(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseComputeBeta(
      cloudAudit: pulumi.Input.fromValue(
        LogConfigCloudAuditOptionsResponseComputeBeta.fromMap(
          (map['cloudAudit']! as Map).cast<String, dynamic>(),
        ),
      ),
      counter: pulumi.Input.fromValue(
        LogConfigCounterOptionsResponseComputeBeta.fromMap(
          (map['counter']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataAccess: pulumi.Input.fromValue(
        LogConfigDataAccessOptionsResponseComputeBeta.fromMap(
          (map['dataAccess']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
