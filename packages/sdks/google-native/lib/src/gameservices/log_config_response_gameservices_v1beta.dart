// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_audit_options_response_gameservices_v1beta.dart';
import 'counter_options_response_gameservices_v1beta.dart';
import 'data_access_options_response_gameservices_v1beta.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponseGameservicesV1beta {
  /// Cloud audit options.
  final pulumi.Input<CloudAuditOptionsResponseGameservicesV1beta> cloudAudit;
  /// Counter options.
  final pulumi.Input<CounterOptionsResponseGameservicesV1beta> counter;
  /// Data access options.
  final pulumi.Input<DataAccessOptionsResponseGameservicesV1beta> dataAccess;

  /// Creates a new [LogConfigResponseGameservicesV1beta].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  LogConfigResponseGameservicesV1beta({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': pulumi.Input.mapInputValue<CloudAuditOptionsResponseGameservicesV1beta, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': pulumi.Input.mapInputValue<CounterOptionsResponseGameservicesV1beta, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': pulumi.Input.mapInputValue<DataAccessOptionsResponseGameservicesV1beta, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseGameservicesV1beta(
      cloudAudit: pulumi.Input.fromValue(CloudAuditOptionsResponseGameservicesV1beta.fromMap((map['cloudAudit']! as Map).cast<String, dynamic>())),
      counter: pulumi.Input.fromValue(CounterOptionsResponseGameservicesV1beta.fromMap((map['counter']! as Map).cast<String, dynamic>())),
      dataAccess: pulumi.Input.fromValue(DataAccessOptionsResponseGameservicesV1beta.fromMap((map['dataAccess']! as Map).cast<String, dynamic>())),
    );
  }
}

