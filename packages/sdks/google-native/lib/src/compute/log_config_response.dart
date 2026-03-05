// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_cloud_audit_options_response.dart';
import 'log_config_counter_options_response.dart';
import 'log_config_data_access_options_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCloudAuditOptionsResponse> cloudAudit;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigCounterOptionsResponse> counter;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsResponse> dataAccess;

  /// Creates a new [LogConfigResponse].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigResponse({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': pulumi.Input.mapInputValue<LogConfigCloudAuditOptionsResponse, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': pulumi.Input.mapInputValue<LogConfigCounterOptionsResponse, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': pulumi.Input.mapInputValue<LogConfigDataAccessOptionsResponse, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse(
      cloudAudit: pulumi.Input.fromValue(LogConfigCloudAuditOptionsResponse.fromMap((map['cloudAudit']! as Map).cast<String, dynamic>())),
      counter: pulumi.Input.fromValue(LogConfigCounterOptionsResponse.fromMap((map['counter']! as Map).cast<String, dynamic>())),
      dataAccess: pulumi.Input.fromValue(LogConfigDataAccessOptionsResponse.fromMap((map['dataAccess']! as Map).cast<String, dynamic>())),
    );
  }
}

