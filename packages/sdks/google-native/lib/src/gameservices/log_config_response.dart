// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_audit_options_response.dart';
import 'counter_options_response.dart';
import 'data_access_options_response.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponse {
  /// Cloud audit options.
  final pulumi.Input<CloudAuditOptionsResponse> cloudAudit;
  /// Counter options.
  final pulumi.Input<CounterOptionsResponse> counter;
  /// Data access options.
  final pulumi.Input<DataAccessOptionsResponse> dataAccess;

  /// Creates a new [LogConfigResponse].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  const LogConfigResponse({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': pulumi.Input.mapInputValue<CloudAuditOptionsResponse, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': pulumi.Input.mapInputValue<CounterOptionsResponse, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': pulumi.Input.mapInputValue<DataAccessOptionsResponse, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse(
      cloudAudit: pulumi.Input.fromValue(CloudAuditOptionsResponse.fromMap((map['cloudAudit']! as Map).cast<String, dynamic>())),
      counter: pulumi.Input.fromValue(CounterOptionsResponse.fromMap((map['counter']! as Map).cast<String, dynamic>())),
      dataAccess: pulumi.Input.fromValue(DataAccessOptionsResponse.fromMap((map['dataAccess']! as Map).cast<String, dynamic>())),
    );
  }
}
