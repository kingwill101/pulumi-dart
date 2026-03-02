// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_audit_options_gameservices_v1beta.dart';
import 'counter_options_gameservices_v1beta.dart';
import 'data_access_options_gameservices_v1beta.dart';

/// Specifies what kind of log the caller must write
class LogConfigGameservicesV1beta {
  /// Cloud audit options.
  final pulumi.Input<CloudAuditOptionsGameservicesV1beta>? cloudAudit;
  /// Counter options.
  final pulumi.Input<CounterOptionsGameservicesV1beta>? counter;
  /// Data access options.
  final pulumi.Input<DataAccessOptionsGameservicesV1beta>? dataAccess;

  /// Creates a new [LogConfigGameservicesV1beta].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  LogConfigGameservicesV1beta({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?pulumi.Input.mapOptionalInputValue<CloudAuditOptionsGameservicesV1beta, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': ?pulumi.Input.mapOptionalInputValue<CounterOptionsGameservicesV1beta, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': ?pulumi.Input.mapOptionalInputValue<DataAccessOptionsGameservicesV1beta, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfigGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return LogConfigGameservicesV1beta(
      cloudAudit: map['cloudAudit'] == null ? null : (CloudAuditOptionsGameservicesV1beta.fromMap((map['cloudAudit']! as Map).cast<String, dynamic>())).input(),
      counter: map['counter'] == null ? null : (CounterOptionsGameservicesV1beta.fromMap((map['counter']! as Map).cast<String, dynamic>())).input(),
      dataAccess: map['dataAccess'] == null ? null : (DataAccessOptionsGameservicesV1beta.fromMap((map['dataAccess']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

