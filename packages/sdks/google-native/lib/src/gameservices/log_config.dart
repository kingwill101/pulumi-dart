// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_audit_options.dart';
import 'counter_options.dart';
import 'data_access_options.dart';

/// Specifies what kind of log the caller must write
class LogConfig {
  /// Cloud audit options.
  final pulumi.Input<CloudAuditOptions>? cloudAudit;
  /// Counter options.
  final pulumi.Input<CounterOptions>? counter;
  /// Data access options.
  final pulumi.Input<DataAccessOptions>? dataAccess;

  /// Creates a new [LogConfig].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  const LogConfig({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?pulumi.Input.mapOptionalInputValue<CloudAuditOptions, Map<String, dynamic>>(cloudAudit, (value) => value.toMap()),
      'counter': ?pulumi.Input.mapOptionalInputValue<CounterOptions, Map<String, dynamic>>(counter, (value) => value.toMap()),
      'dataAccess': ?pulumi.Input.mapOptionalInputValue<DataAccessOptions, Map<String, dynamic>>(dataAccess, (value) => value.toMap()),
    };
  }

  factory LogConfig.fromMap(Map<String, dynamic> map) {
    return LogConfig(
      cloudAudit: (() { final guardedValue = map['cloudAudit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAuditOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      counter: (() { final guardedValue = map['counter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CounterOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAccess: (() { final guardedValue = map['dataAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAccessOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

